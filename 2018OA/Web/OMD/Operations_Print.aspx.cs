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





public partial class Operations_Print : System.Web.UI.Page
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

     //<summary>
     //获取记录数据
     //</summary>
    protected void Get_Knet_Suppliers_ByID()
    {
      ZWL.BLL.ERPOperations MyModel = new ZWL.BLL.ERPOperations();
      string[] HeadPeople = {""};
      string[] AssistPeople1 = { "" };
      string[] AssistPeople2 = { "" };
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
                 this.CunfangAddr.Text = MyModel.CunFangAddr;
                 this.EquipmentName.Text = MyModel.EquipmentName;
                 this.EquipmentType.Text = MyModel.EquipmentType;
                 this.repairdate.Text = MyModel.RepairDate.ToString();
                 this.FauleDate.Text = MyModel.FauleDate.ToString();

                 try {
                     HeadPeople = MyModel.HeadPeople.Split(':');
                     AssistPeople1 = MyModel.AssistPeople1.Split(':');
                     AssistPeople2 = MyModel.AssistPeople2.Split(':');
                 }
                 catch { }
                 this.HeadPeople.Text = HeadPeople[1] + ' ' + AssistPeople1[0] + ' ' + AssistPeople2[0];//MyModel.HeadPeople+' '+MyModel.AssistPeople1+' '+MyModel.AssistPeople2;
                 this.DispatchingPeople.Text=MyModel.DispatchingPeople;
                 this.DispatchingDate.Text=MyModel.DispatchingDate.ToString();
                this.Orderdate.Text=MyModel.OrderDate.ToString();
                this.RepairCall.Text = MyModel.RepairCall.ToString();
                
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

  

}
