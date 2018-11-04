using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections; //Hashtable




using System.Text;

public partial class wxtj : System.Web.UI.Page
{
    public string XAxisCategories = "123,321,admin"; //X轴
    public string XAxisData = "";
    public string[] name = new string[]{""};
    public string Xtitle = "人员";
    public string Codestr = "";
    public string percentage_str = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            this.init_data();
        }
    }
    public string get_XAxisCategories()
    {
        return XAxisCategories;
    }
    public string get_XAxisData()
    {
        return XAxisData;
    }
    public void init_data()
    {
        String str = "abcde''";
        string str1 = str.Substring(0, 3);
        string str2 = str.Replace("''","");

        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("select HeadPeople,count(HeadPeople) as total FROM  ERPOperations group by HeadPeople ", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                String[] value = {""};
                String Xvalue = "";
                StringBuilder xAxisCategories = new StringBuilder();
                StringBuilder xAxisData = new StringBuilder();
                StringBuilder codestr = new StringBuilder();
                xAxisCategories.Append('[');
                xAxisData.Append("[");
                while (sdr.Read())
                {
                    //value += String.Format("{0}, {1}", sdr[0], sdr[1])+";";
                    //codestr.Append("{");
                    //Codestr = String.Format("name:'{0}'", sdr[0]);
                    //codestr.Append(Codestr);
                    //Codestr = String.Format(",data:[{0}.0]", sdr[1]);
                    //codestr.Append(Codestr);
                    //codestr.Append("},");
                    value = sdr[0].ToString().Split(':');
                    if (value.Length > 1)
                    {
                        Xvalue = value[1];
                        Codestr = String.Format("['{0}',{1}.00], \n", Xvalue, sdr[1]);
                        codestr.Append(Codestr);
                    }
                    else
                        Xvalue = sdr[0].ToString();//数据有误
                    
                    
                    /*value = String.Format("'{0}', ", sdr[0]); 
                    double valued = 0.0;
                    try
                    {
                         valued = int.Parse(String.Format("{0}", sdr[1]));
                    }
                    catch { 
                    }
                    Xvalue = String.Format("{0}.0, ", valued.ToString());               
                    xAxisCategories.Append(value);
                    xAxisData.Append(Xvalue);*/ 

                }
                //XAxisCategories = xAxisCategories.Replace(",", "", xAxisCategories.Length - 2, 1).Append("]").ToString();
                //XAxisData = xAxisData.Replace(",", "", xAxisData.Length - 2, 1).Append("]").ToString();
                Codestr = codestr.Replace(",","",codestr.Length-3,1).ToString();
                ListItem item = new ListItem("次数", ""); //默认值
                //HeadPeople.Items.Insert(0, item);
                Conn.Close();
                percentage_str = getpercentage();

            }
        }
        catch { }
    
    }

    public void button_onclick(object sender, EventArgs e)
    {
        
        //string jsyone = this.jsy1.SelectedValue.ToString().Trim();
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                //  SqlCommand cmd = new SqlCommand("select * from ERPUser where jiaose='" + "'  and zt='0' order by ID asc", Conn);
                //`SELECT name,count(name) as total FROM tbl_name group by` name
                SqlCommand cmd = new SqlCommand("select RepairPeople,count(RepairPeople) as total FROM  ERPOperations group by RepairPeople", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                /*this.jsy1.DataSource = sdr;
                this.jsy1.DataTextField = "RepairPeople";//username  truename
                this.jsy1.DataValueField = "RepairPeople";
                this.jsy1.DataBind();
                ListItem item2 = new ListItem("维修负责人", ""); //默认值
                jsy1.Items.Insert(0, item2);*/
                Conn.Close();
                
                 
            }
        }
        catch { }
        
    }
    protected void type_SQLquery(object sender, EventArgs e)
    {

        percentage_str = getpercentage();
    
    }
    private string getpercentage()
    {
        /* select year([FauleDate]) as 'Year',month(FauleDate) as 'Month',[FaultClassification],count([FaultClassification]) as 'Count' from [DBOA].[dbo].[ERPOperations] 
group by year([FauleDate]),month([FauleDate]),[FaultClassification]*/
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                String sqlcmd = "select year([FauleDate]) as 'Year',month(FauleDate) as 'Month',[FaultClassification],count([FaultClassification]) as 'Count' FROM  ERPOperations" +
                                "  where month(FauleDate)='8' group by year([FauleDate]),month([FauleDate]),[FaultClassification] ";
                SqlCommand cmd = new SqlCommand(sqlcmd, Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                int count = 0, value = 0;
                Hashtable t1 = new Hashtable();
                while (sdr.Read())
                {
                    value = int.Parse(sdr["Count"].ToString());
                    count += value;
                    t1.Add(sdr["FaultClassification"].ToString(), value);
                }
                string strdata = "";
                foreach (DictionaryEntry de in t1) //ht为一个Hashtable实例 KeyValuePair de in ht
                {
                    //de.Key对应于keyvalue键值对key
                    //de.Key对应于keyvalue键值对value
                    int keyval = int.Parse(de.Value.ToString());
                    double percentage = (double)keyval / (double)count;
                    strdata += "['" + de.Key.ToString() + "'," + percentage.ToString("f2") + "],";

                }
                strdata = strdata.Substring(0, strdata.Length - 1);
                //strdata.Remove(strdata.Length-1,1);
                //percentage_str = strdata;
                Conn.Close();
                return strdata;

            }
        }
        catch { return null; }
    }
    protected void HeadPeoplechanged(object sender, EventArgs e)
    {
        //string jsyone = this.jsy1.SelectedValue.ToString().Trim();
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("select RepairPeople,count(RepairPeople) as total FROM  ERPOperations group by RepairPeople ", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                String value = " ";
                int count = 0;
                StringBuilder xAxisCategories = new StringBuilder();
                xAxisCategories.Append('[');
                while (sdr.Read())
                {
                   //value += String.Format("{0}, {1}", sdr[0], sdr[1])+";";
                    value =  String.Format("{0}, ", sdr[0]);
                    xAxisCategories.Append(value); 
                }
                XAxisCategories = xAxisCategories.Replace(",", "", xAxisCategories.Length - 1, 1).Append("]").ToString(); 
                /*
                this.HeadPeople.DataSource = sdr;
                this.HeadPeople.DataTextField = "total";//RepairPeople
                this.HeadPeople.DataValueField = "total";
                this.HeadPeople.DataBind();
                ListItem item = new ListItem("次数", ""); //默认值
                HeadPeople.Items.Insert(0, item);
                 * */
                Conn.Close();

                //

                //SqlCommand cmd2 = new SqlCommand("select RepairPeople,count(RepairPeople) as total FROM  ERPOperations group by RepairPeople", Conn);
            /*    SqlDataReader sdr2 = cmd.ExecuteReader();
                this.jsy1.DataSource = sdr2;
                this.jsy1.DataTextField = "RepairPeople";//username  truename
                this.jsy1.DataValueField = "RepairPeople";
                this.jsy1.DataBind();
                ListItem item2 = new ListItem("次数", ""); //默认值
                jsy1.Items.Insert(0, item2);
                */

            }
        }
        catch { }
    }
         
       

}

