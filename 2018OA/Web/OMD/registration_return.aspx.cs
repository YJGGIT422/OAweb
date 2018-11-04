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





public partial class registration_return : System.Web.UI.Page
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
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
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
                 this.headpeople.Text = MyModel.HeadPeople;
                 this.AssistPeople1.Text = MyModel.AssistPeople1;
                 this.AssistPeople2.Text = MyModel.AssistPeople2;
                
             }
             else
             {
                 Response.Write("<script language=javascript>alert('该维修记录已不存在！');window.close();</script>");
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

        
      
        ZWL.BLL.ERPOperations MyModel1 = new ZWL.BLL.ERPOperations();
        
         MyModel1.OrderNo = this.OrderNo.Text.Trim();
         MyModel1.ReturnPeople = ZWL.Common.PublicMethod.GetSessionValue("UserName");
         MyModel1.ReturnReason = this.returnreason.SelectedValue.Trim();
         ZWL.BLL.ERPUser model =new ZWL.BLL.ERPUser();
         model.UserName=this.headpeople.Text.Trim() + "','" + this.AssistPeople1.Text.Trim() + "','" + this.AssistPeople2.Text.Trim();
        try
        {
            MyModel1.Update_Return();
            model.Update_zt(0);
            string NewOrderNo = KNetOddNumbers();
            
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
                {
                    SqlCommand cmd = new SqlCommand("insert into ERPOperations(OrderNo,FauleEquipment,Phenomenon,RepairDepartment,RepairPeople,FauleDate,RepairDate,State,EquipmentType,EquipmentName,XingHao,CunFangAddr) select " + NewOrderNo + ",FauleEquipment,Phenomenon,RepairDepartment,RepairPeople,FauleDate,RepairDate,0,EquipmentType,EquipmentName,XingHao,CunFangAddr from  ERPOperations  where orderno='" + MyModel1.OrderNo + "'", conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                } 
              //写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "运维转单，工单号(" + this.OrderNo.Text.Trim() + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "运维转单成功！", "Operations_registration_result.aspx");
       

        }
        catch
        {
            Response.Write("<script>alert('运维转单失败！');history.back(-1);</script>");
            Response.End();
        }
    }

}
