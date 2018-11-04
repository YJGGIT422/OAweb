using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Collections; //Hashtable
using System.Configuration;
using System.Collections;
using System.Web.Security;

public partial class OMD_Personal_Query : System.Web.UI.Page
{
    public string datastr = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        init();

    }
    protected void init()
    {
        string current_user = ZWL.Common.PublicMethod.GetSessionValue("UserName");//获得当前用户名
        String strsqlcmd = "  select year([FauleDate]) as 'Year',month(FauleDate) as 'Month',count(month(FauleDate)) as 'Count' ,[FaultClassification] from [DBOA].[dbo].[ERPOperations] " +
                            " where [HeadPeople] like '%" + current_user + "%'  group by year([FauleDate]),month([FauleDate]),[FaultClassification]";
        datastr = Get_Data(strsqlcmd);
    
    }
    protected string Get_Data(string sqlstr)
    {
        try
        {
            string str = "";
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                Hashtable hashtab = new Hashtable();
                
                int count = 0, value = 0 ;
                while (sdr.Read())
                {
                    value = int.Parse(sdr["Count"].ToString());
                    count += value;
                    hashtab.Add(sdr["FaultClassification"].ToString(), value);
                }
                string strdata = "";
                foreach (DictionaryEntry de in hashtab) //hashtab为一个Hashtable实例 KeyValuePair de in hashtab
                {
                    //de.Key对应于keyvalue键值对key
                    //de.Key对应于keyvalue键值对value
                    int keyval = int.Parse(de.Value.ToString());
                    double percentage = (double)keyval / (double)count;
                    strdata += "['" + de.Key.ToString() + "'," + percentage.ToString("f2") + "],";

                }
                strdata = strdata.Substring(0, strdata.Length - 1);
                Conn.Close();
                return strdata;

            }
        }
        catch {
            return null;
        }
    
    }
    protected string Get_Current_User()
    {

        string current_user = ZWL.Common.PublicMethod.GetSessionValue("UserName");//获得当前用户名
        string current_group = "";
        //  SELECT [JiaoSe] FROM [DBOA].[dbo].[ERPUser] WHERE [UserName] = '001251'
        try
        {
            using (SqlConnection conn1 = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                conn1.Open();

                string Dostr1 = "SELECT [JiaoSe] FROM [DBOA].[dbo].[ERPUser] WHERE [UserName] = '" + current_user + "'";
                SqlCommand cmd1 = new SqlCommand(Dostr1, conn1);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    current_group = dr1["JiaoSe"].ToString();
                }
            }
        }
        catch
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script language=javascript> window.alert('获取当前用户角色信息失败！');</script>");

        }
        return current_group;
    }
}