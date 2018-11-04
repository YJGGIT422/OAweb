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

public partial class Repair : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
                this.RepairPeople.Text=ZWL.Common.PublicMethod.GetSessionValue("UserName");
                this.RepairDepartment.Text = ZWL.Common.PublicMethod.GetSessionValue("Department");
                this.DShowA1.Visible = false;
                this.DShowA2.Visible = false;
                this.DShowA3.Visible = false;
                this.DShowA4.Visible = false;
                this.DShowA5.Visible = false;
		}
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
        { this.DShowA1.Visible = true;
        }
        else
        {
            this.DShowA1.Visible = false;
            this.DShowA2.Visible = false;
            this.DShowA3.Visible = false;
            this.DShowA4.Visible = false;
            this.DShowA5.Visible = false;
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
        Model.RepairDepartment = this.RepairDepartment.Text.ToString();
        Model.RepairPeople = this.RepairPeople.Text.ToString();
        Model.FauleEquipment = this.YuanBianHao.Text.ToString();
        Model.EquipmentType = this.EquipmentType.Text.ToString();
        Model.EquipmentName = this.EquipmentName.Text.ToString();
        Model.XingHao = this.XingHao.Text.ToString();
        Model.CunFangAddr = this.CunFangAddr.Text.ToString();
        try
        {
            Model.FauleDate = DateTime.Parse(this.FaultDate.Text.Trim());
        }
        catch { }
        Model.Phenomenon = this.Phenomenon.Text.ToString();
        Model.RepairDate = DateTime.Now;
        Model.State = "0";
		
		Model.Add();
		
		//写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "运维报修，单号为：(" + OrderNo + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "故障申报成功，我们将会尽快安排工程师为您解决，请耐心等候！", "Repair.aspx");
	}
}
