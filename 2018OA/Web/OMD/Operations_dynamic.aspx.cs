
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



using System.Text.RegularExpressions;
using System.IO;
using System.Text;


public partial class Operations_dynamic : System.Web.UI.Page
{
        System.Media.SoundPlayer sp1;
        System.Media.SoundPlayer sp2;
        System.Media.SoundPlayer sp3;
        System.Media.SoundPlayer sp4;
        System.Media.SoundPlayer sp5;
        System.Media.SoundPlayer sp6;
        System.Media.SoundPlayer sp7;
        System.Media.SoundPlayer sp8;
        System.Media.SoundPlayer sp9;
        System.Media.SoundPlayer sp10;
        System.Media.SoundPlayer sp11;
        System.Media.SoundPlayer sp12;
        System.Media.SoundPlayer sp13;
        System.Media.SoundPlayer sp14;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview("");
            init();
            this.callname();

         
        }

    }
    protected void init()
    {
        DropDownList2.SelectedItem.Selected = false;
        DropDownList2.Items.FindByText(Get_Current_UserGroup()).Selected = true;//Ĭ��ѡ��ǰ�û���ȫ��
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.IO.FileStream fs1 = new System.IO.FileStream(Server.MapPath("������.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp1 = new System.Media.SoundPlayer(fs1);
        System.IO.FileStream fs2 = new System.IO.FileStream(Server.MapPath("����.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp2 = new System.Media.SoundPlayer(fs2);
        System.IO.FileStream fs3 = new System.IO.FileStream(Server.MapPath("������.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp3 = new System.Media.SoundPlayer(fs3);
        System.IO.FileStream fs4 = new System.IO.FileStream(Server.MapPath("��ʱ��.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp4 = new System.Media.SoundPlayer(fs4);
        System.IO.FileStream fs5 = new System.IO.FileStream(Server.MapPath("ʩ�ں�.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp5 = new System.Media.SoundPlayer(fs5);
        System.IO.FileStream fs6 = new System.IO.FileStream(Server.MapPath("��בּ�.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp6 = new System.Media.SoundPlayer(fs6);
        System.IO.FileStream fs7 = new System.IO.FileStream(Server.MapPath("�ֳ�¡.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp7 = new System.Media.SoundPlayer(fs7);
        System.IO.FileStream fs8 = new System.IO.FileStream(Server.MapPath("��ʫ��.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp8 = new System.Media.SoundPlayer(fs8);
        System.IO.FileStream fs9 = new System.IO.FileStream(Server.MapPath("������.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp9 = new System.Media.SoundPlayer(fs9);
        System.IO.FileStream fs10 = new System.IO.FileStream(Server.MapPath("������.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp10 = new System.Media.SoundPlayer(fs10);
        System.IO.FileStream fs11 = new System.IO.FileStream(Server.MapPath("�º���.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp11 = new System.Media.SoundPlayer(fs11);
        System.IO.FileStream fs12 = new System.IO.FileStream(Server.MapPath("�����.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp12 = new System.Media.SoundPlayer(fs12);
        System.IO.FileStream fs13 = new System.IO.FileStream(Server.MapPath("�����.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp13 = new System.Media.SoundPlayer(fs13);
        System.IO.FileStream fs14 = new System.IO.FileStream(Server.MapPath("ׯ˼��.wav"), System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite);
        sp14 = new System.Media.SoundPlayer(fs14);
        string serilsID = this.call.SelectedValue.Trim();
        if (serilsID == "0161")
        {
            sp1.Play();
        }
        if (serilsID == "0285")
        {
            sp2.Play();
        }
        if (serilsID == "0286")
        {
            sp3.Play();
        }
        if (serilsID == "0289")
        {
            sp4.Play();
        }
        if (serilsID == "0217")
        {
            sp5.Play();
        }
        if (serilsID == "0290")
        {
            sp6.Play();
        }
        if (serilsID == "0291")
        {
            sp7.Play();
        }
        if (serilsID == "0292")
        {
            sp8.Play();
        }
        if (serilsID == "0293")
        {
            sp9.Play();
        }
        if (serilsID == "1105")
        {
            sp10.Play();
        }
        if (serilsID == "0156")
        {
            sp11.Play();
        }
        if (serilsID == "0162")
        {
            sp12.Play();
        }
        if (serilsID == "0282")
        {
            sp13.Play();
        }
        if (serilsID == "0283")
        {
            sp14.Play();
        }
    }
    protected string Get_Current_UserGroup()
    {
       
        string current_user = ZWL.Common.PublicMethod.GetSessionValue("UserName");//��õ�ǰ�û���
        string current_group = "";
        //  SELECT [JiaoSe] FROM [DBOA].[dbo].[ERPUser] WHERE [UserName] = '001251'
        try
        {
            using (SqlConnection conn1 = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                conn1.Open();

                string Dostr1 = "SELECT [JiaoSe] FROM [DBOA].[dbo].[ERPUser] WHERE [UserName] = '" + current_user + "'";
                SqlCommand cmd1 = new SqlCommand(Dostr1, conn1);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    current_group = dr1["JiaoSe"].ToString();
                }
            }
        }
        catch
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script language=javascript> window.alert('��ȡ��ǰ�û���ɫ��Ϣʧ�ܣ�');</script>");

        }
        return current_group;
    }
    #region  ��ҳ����
    protected void ButtonGo_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (GoPage.Text.Trim().ToString() == "")
            {
                Response.Write("<script language='javascript'>alert('ҳ�벻����Ϊ��!');</script>");
            }
            else if (GoPage.Text.Trim().ToString() == "0" || Convert.ToInt32(GoPage.Text.Trim().ToString()) > GVData.PageCount)
            {
                Response.Write("<script language='javascript'>alert('ҳ�벻��һ����Чֵ!');</script>");
            }
            else if (GoPage.Text.Trim() != "")
            {
                int PageI = Int32.Parse(GoPage.Text.Trim()) - 1;
                if (PageI >= 0 && PageI < (GVData.PageCount))
                {
                    GVData.PageIndex = PageI;
                }
            }

            if (TxtPageSize.Text.Trim().ToString() == "")
            {
                Response.Write("<script language='javascript'>alert('ÿҳ��ʾ����������Ϊ��!');</script>");
            }
            else if (TxtPageSize.Text.Trim().ToString() == "0")
            {
                Response.Write("<script language='javascript'>alert('ÿҳ��ʾ��������һ����Чֵ!');</script>");
            }
            else if (TxtPageSize.Text.Trim() != "")
            {
                try
                {
                    int MyPageSize = int.Parse(TxtPageSize.Text.ToString().Trim());
                    this.GVData.PageSize = MyPageSize;
                }
                catch
                {
                    Response.Write("<script language='javascript'>alert('ÿҳ��ʾ��������һ����Чֵ!');</script>");
                }
            }

            DataBindToGridview("");
        }
        catch
        {
            DataBindToGridview("");
            Response.Write("<script language='javascript'>alert('��������Ч���֣�');</script>");
        }
    }
    protected void PagerButtonClick(object sender, ImageClickEventArgs e)
    {
        //���Button�Ĳ���ֵ
        string arg = ((ImageButton)sender).CommandName.ToString();
        switch (arg)
        {
            case ("Next"):
                if (this.GVData.PageIndex < (GVData.PageCount - 1))
                    GVData.PageIndex++;
                break;
            case ("Pre"):
                if (GVData.PageIndex > 0)
                    GVData.PageIndex--;
                break;
            case ("Last"):
                try
                {
                    GVData.PageIndex = (GVData.PageCount - 1);
                }
                catch
                {
                    GVData.PageIndex = 0;
                }

                break;
            default:
                //��ҳֵ
                GVData.PageIndex = 0;
                break;
        }
        DataBindToGridview("");
    }
    #endregion
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        ZWL.Common.PublicMethod.GridViewRowDataBound(e);
    }

    protected void ImageButton4_Click(object sender, EventArgs e)  //EventArgs  ImageClickEventArgs
    {
        DataBindToGridview("");
    }
    protected void callname()
    {
        try
        {
            using (SqlConnection Conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("select serils,username from ERPUser where jiaose like '%ά��%' order by jiaose,serils asc", Conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                this.call.DataSource = sdr;
                this.call.DataTextField = "username";
                this.call.DataValueField = "serils";
                this.call.DataBind();
                ListItem item = new ListItem("��ѡ�񱻺��еĶ���", ""); //Ĭ��ֵ
                call.Items.Insert(0, item);
            }
        }
        catch { }
    }
    /// <summary>
    /// </summary>
    /// <param name="aa"></param>
    /// <returns></returns>
    protected string GetOrderStateYN(object aa)
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
        {
            conn.Open();
            string Dostr = "select * from ERPUser where truename='" + aa + "' ";//"select * from ERPUser where username='" + aa + "' ";
            SqlCommand cmd = new SqlCommand(Dostr, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                int A=0;
                try
                {
                    A = int.Parse(dr["zt"].ToString());
                }
                catch {
                    Response.Write("<script>alert('��ȡ״̬�쳣��');history.back(-1);</script>");
                }
                
                string Str = "<font color=green>����</font>";
                switch (A)
                {
                  
                    case 1:
                        Str = "<font color=red>������</font><font color=#28d5cf><����></font>";
                        break;
                    case 2:
                        Str = "<font color=red>������</font><font color=#adcb35><Э��></font>";
                        break;
                    case��3:
                        Str = "<font color=blue>ά����</font><font color=#28d5cf><����></font>";
                        break;
                    case 4:
                        Str = "<font color=blue>ά����</font><font color=#adcb35><Э��></font>";
                        break; 
                    case 5:
                        Str = "<font color=#d5d3d3>�ݼ�</font>";
                        break;
                    default:
                        Str = "<font color=green>����</font>";
                        break;
                }
                return Str;
            }
            else
            {
                return "<font color=green>����</font>";
            }
        }
         
    }
    /// <summary>
    /// ����
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void SeachKeyTextChanged(object sender, EventArgs e)
    {   
        string SeachKeyContent = this.SeachKey.Text.ToString();
        //string SeachKeyContent = SeachKey.Text.ToString().Substring(2, 4);
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
        {
            conn.Open();
            string Dostr = "SELECT * FROM ERPUser where department='�ٴ�������Ϣ��' and jiaose like '%ά��%' and serils='" + SeachKeyContent + "' ";
            SqlCommand cmd = new SqlCommand(Dostr, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            //�ж��Ƿ�Ϊά��Ա
            if (dr.Read())
            {
                string SeachKeyContent1 = this.SeachKey.Text.ToString();
                String[] SeachKey = SeachKeyContent1.Split(':');//��ȡ����
                Response.AddHeader("Refresh", "0");
                using (SqlConnection conn1 = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
                {
                    conn1.Open();

                    string Dostr1 = "select * from ERPOperations where state='2' or state='3' and headpeople like '%" + SeachKey[0] + "%'"; // YU
                    SqlCommand cmd1 = new SqlCommand(Dostr1, conn1);
                    SqlDataReader dr1 = cmd1.ExecuteReader();

                    if (dr1.Read())
                    {
                        ZWL.BLL.ERPOperations MyModel = new ZWL.BLL.ERPOperations();
                        MyModel.OrderNo = dr1["OrderNo"].ToString();
                        ZWL.BLL.ERPUser MyModel1 = new ZWL.BLL.ERPUser();
                        MyModel1.UserName = dr1["HeadPeople"].ToString();//
                        ZWL.BLL.ERPUser MyModel2 = new ZWL.BLL.ERPUser();
                        MyModel2.UserName = dr1["AssistPeople1"].ToString() + "','" + dr1["AssistPeople2"].ToString();
                        try
                        {
                            MyModel.Update_Order();
                            MyModel1.Update_zt(3);
                            MyModel2.Update_zt(4);
                            //дϵͳ��־
                            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
                            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
                            MyRiZhi.DoSomething = "��ά�ӵ���������(" + MyModel.OrderNo + ")";
                            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
                            MyRiZhi.Add();

                            ZWL.Common.MessageBox.ShowAndRedirect(this, "��ά�ӵ��ɹ���", "Operations_accept.aspx");

                        }
                        catch
                        {
                            Response.Write("<script>alert('�޷�д��ά����ʼʱ�䣡');history.back(-1);</script>");
                            Response.End();
                        }
                        //Response.Write("<script>window.open('Knet_Procure_OpenBilling_PrinterPage.aspx?orderno=" + dr1["OrderNo"].ToString() + "','_blank')</script>");

                        Response.Write("<script>window.open('Operations_Print.aspx?ID=" + dr1["ID"].ToString() + "','_blank')</script>");
                        Response.End();


                    }
                    else
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script language=javascript> window.alert('�������������ά���У�');</script>");

                }

            }
            else
                Page.ClientScript.RegisterStartupScript(this.GetType(), "message", "<script language=javascript> window.alert('�Բ���������ά��Ա��¼��Ŀ�������');</script>");

        }
    }
  
   
    protected string GetOrderStateNN(object aa)
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString()))
        {
            conn.Open();
            string Dostr = "select orderno,repairdepartment,state from ERPOperations where OrderNo='" + aa + "' ";
            SqlCommand cmd = new SqlCommand(Dostr, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                int A = int.Parse(dr["state"].ToString());
                string Str = " ";
                switch (A)
                {
                    case 2:
                        Str = "<font color=red>��ǰ��" + dr["repairdepartment"].ToString() + "ά�ޣ�������Ϊ"+dr["orderno"].ToString()+"</font>";
                        break;
                    case 3:
                        Str = "<font color=blue>����" + dr["repairdepartment"].ToString() + "ά���У�������Ϊ" + dr["orderno"].ToString() + "</font>";
                        break;
                   
                    default:
                        Str = " ";
                        break;
                }
                return Str;
            }
            else
            {
                return " ";
            }
        }
    }
	public void DataBindToGridview(string IDList)
	{
        ZWL.BLL.ERPUser MyModel = new ZWL.BLL.ERPUser();
        string m = DropDownList2.SelectedItem.Value.ToString();
       
		if (m=="ȫ����Ա")
		{
            GVData.DataSource = MyModel.GetList1("c.jiaose in ('����ά����Ա','��Ϣά����Ա','ҽ���豸ά����Ա','����ά����Ա') order by c.jiaose,c.serils asc");
		}
		else
		{
            GVData.DataSource = MyModel.GetList1("c.jiaose= '" + DropDownList2.SelectedItem.Value.ToString() + "'   order by c.serils desc");
		}
		GVData.DataBind();
		LabPageSum.Text = Convert.ToString(GVData.PageCount);
		LabCurrentPage.Text = Convert.ToString(((int)GVData.PageIndex + 1));
		this.GoPage.Text = LabCurrentPage.Text.ToString();
	}
    protected void timerTest_Tick(object sender, EventArgs e)
    {
        ImageButton4_Click(sender, e);
    }
  
}

