using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OMD_Demand_MessageBox : System.Web.UI.Page
{
    int Number = 0;
    ZWL.BLL.ERPDaMand MyModel = new ZWL.BLL.ERPDaMand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Get_Knet_Suppliers_ByID();

    }
    protected void ButtonGo_Click(object sender, ImageClickEventArgs e)
    {
        
        MyModel.AuditOpinion = this.AuditOpinion.Text;//审核意见
        MyModel.Auditor = ZWL.Common.PublicMethod.GetSessionValue("UserName");//登记人
        MyModel.State = 2;//置状态
        
        MyModel.Update_AuditOpinion();//更新数据库
        //写系统日志
        ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
        MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "审核需求，编号为：(" + Number + "登记人：" + MyModel.Auditor + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();
        
       //esponse.Write(this.AuditOpinion.Text + MyModel.Auditor);
        Response.Write("<script>alert('审核成功！');window.close();</script>");

    }
    /// <summary>
    /// 获取记录数据
    /// </summary>
    protected void Get_Knet_Suppliers_ByID()
    {
        
        if (Request["Number"] != null && Request["Number"] != "")
        {
            Number = int.Parse(Request.QueryString["Number"].ToString().Trim());
            if (MyModel.Exists(Number) == true)
            {
                MyModel.GetModel(Number);
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
    protected void ButtonCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>window.close();</script>");
    }
}