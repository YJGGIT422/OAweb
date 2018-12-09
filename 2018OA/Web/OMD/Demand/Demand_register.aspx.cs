using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Text;

public partial class OMD_Demand_Demand_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            init();


        }

    }
    protected void init()
    {
        Sql_Cmd_list("select distinct clinicType from ERPDepartment$", this.department1, "请选部门分类", "clinicType");
        this.registerdate.Text = DateTime.Now.ToString("yyyy-MM-dd");
    }
    protected void FaultClassification_SelectedIndexChanged(object sender, EventArgs e)
    {

        string proID = this.software_type1.SelectedValue.ToString().Trim();
        if (proID == "0")
        {
            //this.DShowA6.Visible = true;//类别
            //this.FaultType.InnerHtml = "硬件类型";
            this.software_type2.Items.Clear();
            ListItem item = new ListItem("HIS医生站", "0");
            this.software_type2.Items.Insert(0, item);
            item = new ListItem("HIS护士站", "1");
            this.software_type2.Items.Insert(1, item);
            item = new ListItem("HIS医技医师", "2");
            this.software_type2.Items.Insert(2, item);
            item = new ListItem("HIS其他", "3");
            this.software_type2.Items.Insert(3, item);
        }
        else if (proID == "1")
        {
            this.software_type2.Items.Clear();
            ListItem item = new ListItem("医学影像PACS", "0");
            this.software_type2.Items.Insert(0, item);
            item = new ListItem("B超PACS", "1");
            this.software_type2.Items.Insert(1, item);
            item = new ListItem("介入室PACS", "2");
            this.software_type2.Items.Insert(2, item);
            item = new ListItem("体检科PACS", "3");
            this.software_type2.Items.Insert(3, item);
            item = new ListItem("其他", "4");
            this.software_type2.Items.Insert(4, item);
        }
        else if (proID == "2")
        {
            this.software_type2.Items.Clear();
            ListItem item = new ListItem("LIS", "0");
            this.software_type2.Items.Insert(0, item);
        }
        else if (proID == "3")
        {
            this.software_type2.Items.Clear();
            ListItem item = new ListItem("体检系统", "0");
            this.software_type2.Items.Insert(0, item);
            item = new ListItem("OA系统", "1");
            this.software_type2.Items.Insert(1, item);
            item = new ListItem("病理系统", "2");
            this.software_type2.Items.Insert(2, item);
            item = new ListItem("物资管理", "3");
            this.software_type2.Items.Insert(3, item);
            item = new ListItem("其他系统", "4");
            this.software_type2.Items.Insert(4, item);
        }
        else
        {
            //this.DShowA6.Visible = false;//类别
            this.FaultType1.Items.Clear();
        }
    }
    protected void txtSf_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
        ZWL.BLL.ERPDaMand Model = new ZWL.BLL.ERPDaMand();
        //[department] [registrant] TYPE  SoftWareType SoftWareModule [registerdate] [describe]  FeedBackCall 
        Model.RegisterDate = DateTime.Now;
        Model.Registrant = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        Model.Describe = this.describe.Text.ToString();
        //Model.Department = this.Department2

       
	}
    protected void Department_Click(object sender, EventArgs e)
    {
        string value = this.department1.SelectedValue;
        string sqlcmd = string.Format("select [Desc] from ERPDepartment$ where clinicType = '{0}'", value);
        Sql_Cmd_list(sqlcmd, this.department2, "请选科室", "Desc");
    }
    protected void Department2_Click(object sender, EventArgs e)
    {
        string value = this.department2.SelectedValue;
        string sqlcmd = string.Format("select * from ERPDepartment$ where [Desc] = '{0}'", value);
        Sql_Cmd_TextBox(sqlcmd, this.registrant, "Head");
        
    }


    /*数据库查询赋值函数
 * cmdstr    数据库查询语句
 ojb    页面LIS控件对象
 fistitem LIS第一行的数据
 type 查询返回结果取值*/
    protected void Sql_Cmd_list(String cmdstr, DropDownList ojb, string fistitem, string type)
    {
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                //select distinct clinicType from [DBOA].[dbo].[Sheet1$]
                SqlCommand cmd = new SqlCommand(cmdstr, Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                ojb.DataSource = sdr;
                ojb.DataTextField = type;
                ojb.DataValueField = type;
                ojb.DataBind();
                ListItem item = new ListItem(fistitem, ""); //默认值
                ojb.Items.Insert(0, item);
                Conn.Close();
            }
        }
        catch { }

    }
    /*数据库查询赋值函数
     * cmdstr    数据库查询语句
     ojb    页面TextBox控件对象
    
     type 查询返回结果取值*/
    protected void Sql_Cmd_TextBox(String cmdstr, TextBox ojb, string type)
    {
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                //select distinct clinicType from [DBOA].[dbo].[Sheet1$]
                SqlCommand cmd = new SqlCommand(cmdstr, Conn);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    ojb.Text = sdr[type].ToString();
                }
                Conn.Close();
            }
        }
        catch { }

    }
}