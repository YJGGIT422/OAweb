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
public partial class Office_SheBeiAdd : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
			//设置上传的附件为空
			 ZWL.Common.PublicMethod.SetSessionValue("WenJianList", "");
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
      
       SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString());
        Conn.Open();
        string yy = ZWL.DBUtility.DbHelperSQL.GetSHSLInt("select ID from ERPEquipmentCategory where fullname='" + this.txtSheBeiLeiBie.Text.ToString() + "'");
        string bm = yy+ "00001";
        SqlCommand MyCmd = new SqlCommand("select TOP 1 cast(right(yuanbianhao,'5') as int)+1 as PID from ERPSheBei where SheBeiLeiBie='" + this.txtSheBeiLeiBie.Text.ToString() + "' order by yuanbianhao desc", Conn);
        SqlDataReader MyReader = MyCmd.ExecuteReader();
        while (MyReader.Read())
        {
            //int strId = int.Parse(MyReader["PID"].ToString());
            string strId = MyReader["PID"].ToString();
            string ChildID = ZWL.DBUtility.DbHelperSQL.GetSHSLInt("select ID from ERPEquipmentCategory where fullname='" + this.txtSheBeiLeiBie.Text.ToString()+"'");
            if ( strId.Length== 1)
            {
                bm = ChildID + "0000" + strId;
            }
            if (strId.Length == 2)
            {
                bm = ChildID + "000" + strId;
            }
            if (strId.Length == 3)
            {
                bm = ChildID + "00" + strId;
            }
            if (strId.Length == 4)
            {
                bm = ChildID + "0" + strId;
            }
            if (strId.Length == 5)
            {
                bm = ChildID +  strId;
            }
           
        }
        MyReader.Close();
        Conn.Close(); 
        


		ZWL.BLL.ERPSheBei Model = new ZWL.BLL.ERPSheBei();
		
		Model.SheBeiName=this.txtSheBeiName.Text.ToString();
		//Model.YuanBianHao=this.txtYuanBianHao.Text.ToString();
        Model.YuanBianHao = bm;
        Model.CaiWuBianHao = null;
        Model.JiBuBianHao = null;
		Model.SheBeiLeiBie=this.txtSheBeiLeiBie.Text.ToString();
		Model.XingHao=this.txtXingHao.Text.ToString();
        Model.XiangMu = null;
		Model.ChuChangBianHao=this.txtChuChangBianHao.Text.ToString();
		Model.ShiYongBuMen=this.txtShiYongBuMen.Text.ToString();
		Model.ShengChanChangJia=this.txtShengChanChangJia.Text.ToString();
		Model.DanWei=this.txtDanWei.Text.ToString();
		Model.DanJia=this.txtDanJia.Text.ToString();
        Model.SuYuanFangShi = null;
        Model.SuYaunDanWei = null;
        Model.SuYuanZhouQi = null;
        Model.ShangCiSuYuanDate = null;
        Model.JiHuaSuYaunDate = null;
        Model.ZhengShuBianHao = null;
        Model.CeLiangFanWei = null;
        Model.BuQueDingDu = null;
        Model.ShiYongCeLiangFanWei = null;
        Model.JingDu = null;
        Model.JieGuoPingJia = null;
        Model.PingJiaUser = null;
        Model.QianZiDate = null;
        Model.ZhengGai = null;
        Model.ChuCiSuYuanDate = null;
		Model.QiYongDate=this.txtQiYongDate.Text.ToString();
		Model.CunFangAddr=this.txtCunFangAddr.Text.ToString();
		Model.GuanLiUser=this.txtGuanLiUser.Text.ToString();
        Model.JiFei = null;
		Model.ZhuangTai=this.txtZhuangTai.SelectedValue.ToString();
		Model.BeiZhu=this.txtBeiZhu.Text.ToString();
        Model.HeDuiUser = null;
		Model.TiXingDate=this.txtTiXingDate.Text.ToString();
		Model.TiXingUser=this.txtTiXingUser.Text.ToString();
		Model.UserName=ZWL.Common.PublicMethod.GetSessionValue("UserName");
		Model.TimeStr=DateTime.Now;
        Model.SheBeiBrand = this.txtSheBeiBrand.Text.ToString();
        Model.BuyDate = this.txtBuyDate.Text.ToString();
        Model.MaintenanceDate = this.txtMaintenanceDate.Text.ToString();
        Model.OS = this.txtOS.Text.ToString();
        Model.VLAN = this.txtVLAN.Text.ToString();
        Model.IP = this.txtIP.Text.ToString();
        Model.MAC = this.txtMAC.Text.ToString();

		Model.Add();
		
		//写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
		MyRiZhi.DoSomething = "用户添加仪器设备信息(" + this.txtSheBeiName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();
		
		ZWL.Common.MessageBox.ShowAndRedirect(this, "仪器设备信息添加成功！", "SheBei.aspx");
	}
}
