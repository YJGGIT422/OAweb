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


using System.Text;

public partial class registration : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
                //this.DShowA0.Visible = false;
                this.DShowA1.Visible = false;//设备服务编码
                this.DShowA2.Visible = false;//设备类别
                this.DShowA3.Visible = false;//设备名称
                this.DShowA4.Visible = false;//设备型号
                this.DShowA5.Visible = true;//维修地址
                this.DShowA6.Visible = false;//软件类型
                this.query.Visible = false;//科室查询图标
                init();
                

		}
	}
    protected void init()
    {
        Sql_Cmd_list("select distinct clinicType from ERPDepartment$", this.department1, "请选部门分类", "clinicType");
        this.FaultDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
    }
    /*数据库查询赋值函数
     * cmdstr    数据库查询语句
     ojb    页面LIS控件对象
     fistitem LIS第一行的数据
     type 查询返回结果取值*/
    protected void Sql_Cmd_list(String cmdstr,DropDownList ojb,string fistitem,string type)
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


    #region 返回单号情况

    /// <summary>
    /// 返回当前的  单号 （唯一性，如 2009121402）
    /// </summary>
    /// <param name="aa"></param>
    /// <returns></returns>
    protected string KNetOddNumbers()
    {
        using (SqlConnection conn =  new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
        {
            conn.Open();
            string Dostr = "select count(*) as AA  from  ERPOperations  where (datediff(d,RepairDate,GETDATE())=0)";
            SqlCommand cmd = new SqlCommand(Dostr, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (int.Parse(dr["AA"].ToString()) == 0)
                {
                    return DateTime.Today.ToString("yyyyMMdd") + "0001";
                }
                else
                {
                    return DateTime.Today.ToString("yyyyMMdd") + KNus003(int.Parse(dr["AA"].ToString()) + 1);
                }
            }
            else
            {
                return DateTime.Today.ToString("yyyyMMdd") + "0001";
            }
        }
    }
    /// <summary>
    /// 返回当前的  单号 （唯一性，如 2009121402）
    /// </summary>
    /// <param name="ss"></param>
    /// <returns></returns>
    protected string KNus003(int ss)
    {
        if (ss.ToString().Length == 1)
        {
            return "000" + ss.ToString();
        }
        else if (ss.ToString().Length == 2)
        {
            return "00" + ss.ToString();
        }
        else if (ss.ToString().Length == 3)
        {
            return "0" + ss.ToString();
        }
        else if (ss.ToString().Length == 4)
        {
            return ss.ToString();
        }
        else
        {
            return ss.ToString();
        }
    }
    #endregion
    protected void txtSf_SelectedIndexChanged(object sender, EventArgs e)
    {

        string proID = this.txtSf.SelectedValue.ToString().Trim();
        if (proID == "1")
        {
            this.DShowA1.Visible = true;
        }
        else if (proID == "0")
        {
            this.DShowA1.Visible = false;//设备服务编码
            this.DShowA2.Visible = false;//硬件类别 EquipmentType
            this.DShowA3.Visible = false;//设备名称
            this.DShowA4.Visible = false;//设备型号
            this.DShowA5.Visible = false;//维修地址
        }
        else{

        }
    }
    protected void type_SelectedIndexChanged(object sender, EventArgs e)
    {

        string proID = this.txtSf.SelectedValue.ToString().Trim();
        if (proID == "1")
        {
            this.DShowA2.Visible = true;//硬件类别  EquipmentType
            this.DShowA6.Visible = false;//软件类型
        }
        else if (proID == "0")
        {
            this.DShowA6.Visible = true;//软件类型
            this.DShowA2.Visible = false;//硬件类别
        }
        else
        {
            this.DShowA1.Visible = false;//设备服务编码
            this.DShowA2.Visible = false;//硬件类别 EquipmentType
            this.DShowA3.Visible = false;//设备名称
            this.DShowA4.Visible = false;//设备型号
            this.DShowA5.Visible = false;//维修地址
        }
    }
    protected void FaultClassification_SelectedIndexChanged(object sender, EventArgs e)
    {

        string proID = this.FaultClassification.SelectedValue.ToString().Trim();
        if (proID == "1")
        {
            this.DShowA6.Visible = true;//类别
            this.FaultType.InnerHtml = "硬件类型";
            this.FaultType1.Items.Clear();
            ListItem item = new ListItem("打印机", "0"); 
            this.FaultType1.Items.Insert(0, item);
            item = new ListItem("电脑", "1");
            this.FaultType1.Items.Insert(1, item);
            item = new ListItem("其他设备", "2");
            this.FaultType1.Items.Insert(2, item);
        }
        else if (proID == "0")
        {
            this.DShowA6.Visible = true;//类别
            this.FaultType.InnerHtml = "软件类型";
            this.FaultType1.Items.Clear();
            ListItem item = new ListItem("HIS", "0");
            this.FaultType1.Items.Insert(0, item);
            item = new ListItem("PACS", "1");
            this.FaultType1.Items.Insert(1, item);
            item = new ListItem("LIST", "2");
            this.FaultType1.Items.Insert(2, item);
            item = new ListItem("旧系统", "3");
            this.FaultType1.Items.Insert(3, item);
            item = new ListItem("其他", "4");
            this.FaultType1.Items.Insert(4, item);
        }
        else
        {
            this.DShowA6.Visible = false;//类别
            this.FaultType1.Items.Clear();
        }
    }
    protected void YuanBianHao_TextChanged(object sender, EventArgs e)
    {
        string bm = this.YuanBianHao.Text.ToString();
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString());
        conn.Open();
        string Dostr = "select * from  ERPSheBei  where YuanBianHao='"+bm+"'";
            SqlCommand cmd = new SqlCommand(Dostr, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.DShowA2.Visible = true;
                this.DShowA3.Visible = true;
                this.DShowA4.Visible = true;
                this.DShowA5.Visible = true;
                this.EquipmentType.Text = dr["SheBeiLeiBie"].ToString();
                this.EquipmentName.Text = dr["SheBeiName"].ToString();
                this.XingHao.Text = dr["XingHao"].ToString();
                this.CunFangAddr.Text = dr["CunFangAddr"].ToString();
            }
            else
            {
                Response.Write("<script>alert('设备维修服务编码有误，请重新输入！');history.back(-1);</script>");
                Response.End();
            }
    }
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
        ZWL.BLL.ERPOperations Model = new ZWL.BLL.ERPOperations();
        string OrderNo = KNetOddNumbers();
        Model.OrderNo = OrderNo;

        if (String.IsNullOrEmpty(this.department2.Text) || String.IsNullOrEmpty(this.department1.Text))
        {
            Response.Write("<script>alert('运维受理失败！未选择科室！');history.back(-1);</script>");
            Response.End();
            return;
        }
        if ( this.RepairCall.Text.Length < 4)
        {
            Response.Write("<script>alert('运维受理失败！报修电话格式错误！清填写正确');history.back(-1);</script>");
            Response.End();
            return;
        }
        
        Model.RepairDepartment = this.department2.Text.ToString();//this.RepairDepartment.Text.ToString();
        Model.RepairPeople = this.RepairPeople.Text.ToString();
        Model.FauleEquipment = this.YuanBianHao.Text.ToString();
        Model.EquipmentType = this.EquipmentType.Text.ToString();
        Model.EquipmentName = this.EquipmentName.Text.ToString();
        Model.XingHao = this.XingHao.Text.ToString();
        Model.CunFangAddr = this.CunFangAddr.Text.ToString();// CunFangAddr 字段用作 维修地址
        Model.RepairCall = this.RepairCall.Text.ToString();//RepairCall 报修电话 20180110
        string faulttext = String.Format("{0}->{1}",this.FaultClassification.SelectedItem.Text,this.FaultType1.SelectedItem.Text);
        Model.FaultClassification = faulttext;//FaultClassification 故障分类 20180911
       
        try
        {
            Model.FauleDate = DateTime.Parse(this.FaultDate.Text.Trim());
        }
        catch { }
        Model.Phenomenon = this.Phenomenon.Text.ToString();
        Model.RepairDate = DateTime.Now;
        Model.State = "0";
        Model.RegistrationPeople = ZWL.Common.PublicMethod.GetSessionValue("UserName");
		
		if(Model.Add1().Equals(1))
        {
            Response.Write("<script>alert('添加派工记录失败！');history.back(-1);</script>");
            Response.End();
        }
        String ID  = "";
        DataSet data = Model.GetID(OrderNo);
        for (int i = 0; i < data.Tables[0].Rows.Count; i++)
　　　　{
            ID = data.Tables[0].Rows[i]["ID"].ToString();
　　　　}

        
		
		//写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "运维报修，单号为：(" + OrderNo + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();
        
        //直接受理单号
        ZWL.BLL.ERPOperations MyModel = new ZWL.BLL.ERPOperations();
        MyModel.AcceptPeople = ZWL.Common.PublicMethod.GetSessionValue("UserName");//truename  UserName
        MyModel.OrderNo = OrderNo.Trim();
        try
        {

            MyModel.Update_Accept();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRZ = new ZWL.BLL.ERPRiZhi();
            MyRZ.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");//UserName
            MyRZ.DoSomething = "运维受理，工单号(" + OrderNo + ")";
            MyRZ.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRZ.Add();

            //ZWL.Common.MessageBox.ShowAndRedirect(this, "运维受理成功！", "Operations_accept.aspx");


        }
        catch
        {
            Response.Write("<script>alert('运维受理失败！');history.back(-1);</script>");
            Response.End();
        }
        //跳转派工界面
        String codestr = "<script language='javascript'>window.open('dispatching.aspx?ID=";
        codestr += ID + "','_self');</script>";
        Response.Write(codestr);

        ZWL.Common.MessageBox.ShowAndRedirect(this, "故障申报成功，我们将会尽快安排工程师为您解决，请耐心等候！", "Repair.aspx");
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
        Sql_Cmd_TextBox(sqlcmd, this.RepairPeople, "Head");
        Sql_Cmd_TextBox(sqlcmd, this.CunFangAddr, "Address");
    }
}
