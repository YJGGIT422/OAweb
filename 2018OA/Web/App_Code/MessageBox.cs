using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



/// <summary>
/// MessageBox 的摘要说明
/// </summary>
public class MessageBox
{
	public MessageBox()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public static string Show(string strMsg)
    {   

        //这里0就指strMsg这东西,1就是指/这东西.
        return String.Format("<script language={1} javascript{1}> alert({1}{0}{1});</script>", strMsg, "/");
    }  
}