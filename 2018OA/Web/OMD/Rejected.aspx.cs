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





public partial class Rejected : System.Web.UI.Page
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
         MyModel1.Rejected = this.Rejectedtxt.Text.ToString();
        MyModel1.RejectedPeople  = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        try
        {

            MyModel1.Update_Rejected();
              //写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "运维驳回，工单号(" + this.OrderNo.Text.Trim() + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "运维驳回成功！", "Operations_accept.aspx");
       

        }
        catch
        {
            Response.Write("<script>alert('运维驳回失败！');history.back(-1);</script>");
            Response.End();
        }
    }

}
