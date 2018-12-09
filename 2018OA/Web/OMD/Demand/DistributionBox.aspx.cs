using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

public partial class OMD_Demand_DistributionBox : System.Web.UI.Page
{
    
    ZWL.BLL.ERPDaMand MyModel = new ZWL.BLL.ERPDaMand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Sql_Cmd_list("select TrueName,Serils from [DBOA].[dbo].[ERPUser] where jiaose = '信息维修人员'", this.Followupperson, "请选跟进人", "TrueName");
            get_current_mode();
        }
        

    }
    protected void FollowuppersonChanged(object sender, EventArgs e)
    {
        MyModel.Followupperson = this.Followupperson.SelectedItem.Text;//跟进人
        
    }
    protected void ButtonGo_Click(object sender, ImageClickEventArgs e)
    {
        get_current_mode();
        MyModel.Followupperson = this.Followupperson.SelectedItem.Text;//跟进人

        MyModel.State = 3;//置状态
        
        MyModel.Update_Distribution();//更新数据库
        //写系统日志
        ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
        MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "处理跟进需求，编号为：(" + MyModel.Number + "处理人：" + MyModel.Auditor + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();

        //esponse.Write(this.AuditOpinion.Text + MyModel.Auditor);
        Response.Write("<script>alert('处理成功！');window.close();</script>");

    }
    protected void ButtonCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.close();</script>");
    }
    /**
     * 获取上个页面的传参
     */
    protected void get_current_mode()
    {
        if (Request["Number"] != null && Request["Number"] != "")
        {
            int Number = int.Parse(Request.QueryString["Number"].ToString().Trim());
            if (MyModel.Exists(Number) == true)
            {
                MyModel.GetModel(Number);
                
            }
            else
            {
                Response.Write("<script language=javascript>alert('该记录已不存在！');window.close();</script>");
                Response.End();
            }
        }
        else
        {
            Response.Write("<script language=javascript>alert('非法参数！');window.close();</script>");
            Response.End();
        }
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
}