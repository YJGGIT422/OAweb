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

public partial class Office_SheBeiView1 : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
			ZWL.BLL.ERPSheBei Model = new ZWL.BLL.ERPSheBei();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblSheBeiName.Text=Model.SheBeiName.ToString();
			this.lblYuanBianHao.Text=Model.YuanBianHao.ToString();
			this.lblSheBeiLeiBie.Text=Model.SheBeiLeiBie.ToString();
			this.lblXingHao.Text=Model.XingHao.ToString();
			this.lblChuChangBianHao.Text=Model.ChuChangBianHao.ToString();
			this.lblShiYongBuMen.Text=Model.ShiYongBuMen.ToString();
			this.lblGuanLiUser.Text=Model.GuanLiUser.ToString();
			
			//写系统日志
			ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
			MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
			MyRiZhi.DoSomething = "用户查看仪器设备信息(" + this.lblSheBeiName.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
