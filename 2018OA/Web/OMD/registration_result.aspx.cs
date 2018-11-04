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





public partial class registration_result : System.Web.UI.Page
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
                 String [] Headname_str = {""};
                 String[] AssistPeople1_str = { "" };
                 String[] AssistPeople2_str = { "" };
                 
                 
                 
                 MyModel.GetModel(ID);
                 try
                 {
                     Headname_str = MyModel.HeadPeople.Split(':');
                     AssistPeople1_str = MyModel.AssistPeople1.Split(':');
                     AssistPeople2_str = MyModel.AssistPeople2.Split(':');
                 }
                 catch { }
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
                 if (Headname_str.Length>1)
                    this.headpeople.Text = Headname_str[1];
                 else
                     this.headpeople.Text = MyModel.HeadPeople;
                 if (AssistPeople1_str.Length > 1)
                     this.AssistPeople1.Text = AssistPeople1_str[1];
                 else
                     this.AssistPeople1.Text = MyModel.AssistPeople1;
                 if (AssistPeople2_str.Length > 1)
                     this.AssistPeople2.Text = AssistPeople2_str[1];
                 else
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
        MyModel1.ResultPeople  = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyModel1.Msituation = this.Msituation.Text.Trim();
        MyModel1.Completion = this.wcqk.SelectedValue.Trim();
        MyModel1.Faulttype = this.gzlx.SelectedValue.Trim();
        ZWL.BLL.ERPUser model =new ZWL.BLL.ERPUser();
        model.UserName=this.headpeople.Text.Trim() + "','" + this.AssistPeople1.Text.Trim() + "','" + this.AssistPeople2.Text.Trim();
        try
        {
            model.UpdateForname_zt(0);
            MyModel1.Update_Result();
            
              //写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "运维结果登记，工单号(" + this.OrderNo.Text.Trim() + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "运维结果登记成功！", "Operations_registration_result.aspx");
       

        }
        catch
        {
            Response.Write("<script>alert('运维结果登记失败！');history.back(-1);</script>");
            Response.End();
        }
    }
    protected void button2_onclick(object sender, EventArgs e)
    {
        this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "this", "<script>history.go(-2);</script>"); 

    }

}
