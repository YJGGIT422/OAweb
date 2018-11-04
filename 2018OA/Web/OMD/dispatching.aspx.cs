using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;





public partial class dispatching : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
      
       
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            this.Get_Knet_Suppliers_ByID();
            this.jsyONE();
            this.jsyTWO();
            this.jsyTHREE();
        }
    }





    /// <summary>
    /// 选择维修负责人
    /// </summary> 
    protected void jsyONE()
    {
        try
        {
            using ( SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("select jiaosename from ERPJiaoSe where id in ('20','21','22','23') ", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                this.jsy1.DataSource = sdr;
                this.jsy1.DataTextField = "jiaosename";
                this.jsy1.DataValueField = "jiaosename";
                this.jsy1.DataBind();
                ListItem item = new ListItem("请维修员所在分组", ""); //默认值
                jsy1.Items.Insert(0, item);
            }
        }
        catch { }
    }
    protected void jsy1changed(object sender, EventArgs e)
    {

        string jsyone = this.jsy1.SelectedValue.ToString().Trim();
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("select * from ERPUser where jiaose='" + jsyone + "'  and zt='0' order by ID asc", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                this.HeadPeople.DataSource = sdr;
                this.HeadPeople.DataTextField = "truename";//username  truename
                this.HeadPeople.DataValueField = "username";
                this.HeadPeople.DataBind();
                ListItem item = new ListItem("请维修负责人", ""); //默认值
                HeadPeople.Items.Insert(0, item);
            }
        }
        catch { }
    }
    /// <summary>
    /// 选择协助技术员
    /// </summary> 
    protected void jsyTWO()
    {
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("select jiaosename from ERPJiaoSe where id in ('20','21','22','23') ", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                this.jsy2.DataSource = sdr;
                this.jsy2.DataTextField = "jiaosename";
                this.jsy2.DataValueField = "jiaosename";
                this.jsy2.DataBind();
                ListItem item = new ListItem("请维修员所在分组", ""); //默认值
                jsy2.Items.Insert(0, item);
            }
        }
        catch { }
    }
    protected void jsy2changed(object sender, EventArgs e)
    {
        
        string jsytwo = this.jsy2.SelectedValue.ToString().Trim();
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("select * from ERPUser where jiaose='" + jsytwo + "' and zt='0' order by ID asc", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                this.AssistPeople1.DataSource = sdr;
                this.AssistPeople1.DataTextField = "truename";
                this.AssistPeople1.DataValueField = "username";
                this.AssistPeople1.DataBind();
                ListItem item = new ListItem("请维修负责人", ""); //默认值
                AssistPeople1.Items.Insert(0, item);
            }
        }
        catch { }
    }
    /// <summary>
    /// 选择协助技术员
    /// </summary> 
    protected void jsyTHREE()
    {
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("select jiaosename from ERPJiaoSe where id in ('20','21','22','23') ", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                this.jsy3.DataSource = sdr;
                this.jsy3.DataTextField = "jiaosename";
                this.jsy3.DataValueField = "jiaosename";
                this.jsy3.DataBind();
                ListItem item = new ListItem("请维修员所在分组", ""); //默认值
                jsy3.Items.Insert(0, item);
            }
        }
        catch { }
    }
    protected void jsy3changed(object sender, EventArgs e)
    {

        string jsythree = this.jsy3.SelectedValue.ToString().Trim();
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("select * from ERPUser where jiaose='" + jsythree + "'  and zt='0' order by ID asc", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                this.AssistPeople2.DataSource = sdr;
                this.AssistPeople2.DataTextField = "truename";
                this.AssistPeople2.DataValueField = "username";// yu username
                this.AssistPeople2.DataBind();
                ListItem item = new ListItem("请维修负责人", ""); //默认值
                AssistPeople2.Items.Insert(0, item);
            }
        }
        catch { }
    }
    /// <summary>
    /// 获取记录数据
    /// </summary>
    protected void Get_Knet_Suppliers_ByID()
    {
      ZWL.BLL.ERPOperations MyModel = new ZWL.BLL.ERPOperations();
        if (Request["ID"] != null && Request["ID"] != "")
        {
            int ID = int.Parse(Request.QueryString["ID"].ToString().Trim());
            if (MyModel.Exists(ID) == true)
             {

                 
                 MyModel.GetModel(ID);
                 this.OrderNo.Text = MyModel.OrderNo;
                 this.RepairDepartment.Text = MyModel.RepairDepartment;
                 this.RepairPeople.Text = MyModel.RepairPeople;
                 this.FauleEquipment.Text = MyModel.FauleEquipment;
                 this.Phenomenon.Text = MyModel.Phenomenon;
                 this.XingHao.Text = MyModel.XingHao;
                 this.CunFangAddr.Text = MyModel.CunFangAddr;
                 this.EquipmentName.Text = MyModel.EquipmentName;
                 this.EquipmentType.Text = MyModel.EquipmentType;
                 this.RepairDate.Text = MyModel.RepairDate.ToString();
                 this.FauleDate.Text = MyModel.FauleDate.ToString();
                
             }
             else
             {
                 Response.Write("<script language=javascript>alert('该维修记录已不存在！');window.close();</script>");
                 
                 this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "this", "<script>history.go(-2);</script>");
                 Response.End();
             }
        }
        else
        {
            Response.Write("<script language=javascript>alert('非法参数！');window.close();</script>");
            Response.End();
        }
    }

    protected void button1_onclick(object sender, EventArgs e)
    {

        String Headnamestr = "";
        String Assist1str = "";
        String Assist2str = "";
      
        ZWL.BLL.ERPOperations MyModel1 = new ZWL.BLL.ERPOperations();
        try
        {
            if (!this.HeadPeople.SelectedValue.Equals(""))
                Headnamestr = this.HeadPeople.SelectedItem.ToString().Trim();
            if (!this.AssistPeople1.SelectedValue.Equals(""))
                Assist1str = this.AssistPeople1.SelectedItem.ToString().Trim();
            if (!this.AssistPeople2.SelectedValue.Equals(""))
                Assist2str = this.AssistPeople2.SelectedItem.ToString().Trim();
        }
        catch
        {
        }
        
            ZWL.BLL.ERPUser MyModel2 = new ZWL.BLL.ERPUser();
            MyModel2.UserName = this.HeadPeople.SelectedValue.Trim() + ":" + Headnamestr; //this.HeadPeople.SelectedIndex.ToString();
            ZWL.BLL.ERPUser MyModel3 = new ZWL.BLL.ERPUser();
            MyModel3.UserName = this.AssistPeople1.SelectedValue.Trim() + ":" + Assist1str + "','" + this.AssistPeople2.SelectedValue.Trim() + ":" + Assist2str;
         MyModel1.OrderNo = this.OrderNo.Text.Trim();
         MyModel1.DispatchingPeople = ZWL.Common.PublicMethod.GetSessionValue("username");

         MyModel1.HeadPeople = this.HeadPeople.SelectedValue.Trim() + ":" + Headnamestr;
         MyModel1.AssistPeople1 = this.AssistPeople1.SelectedValue.Trim() + ":" + Assist1str;
         MyModel1.AssistPeople2 = this.AssistPeople2.SelectedValue.Trim() + ":" + Assist2str;
        try
        {
           
            MyModel1.Update_Technician();
            MyModel2.Update_zt(1);
            MyModel3.Update_zt(2);
              //写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
        MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("username");
        MyRiZhi.DoSomething = "运维派工，工单号(" + this.OrderNo.Text.Trim() + ";" + MyModel2.UserName + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "运维派工成功！", "Operations_dispatching.aspx");
         //跳转回保修界面
        Response.Redirect("registration.aspx");
        //this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "this", "<script>history.go(-2);</script>"); 
       

        }
        catch
        {
            Response.Write("<script>alert('运维派工失败！');history.back(-1);</script>");
            Response.End();
        }
    }
    protected void button2_onclick(object sender, EventArgs e)
    {
        this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "this", "<script>history.go(-2);</script>"); 
    }

}
