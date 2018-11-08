using System;
using System.Collections.Generic;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using ZWL.DBUtility;//请先添加引用
namespace ZWL.BLL
{
    public class ERPDaMand
    {
        public ERPDaMand()
        { }
        #region Model
        private int _number;
        private DateTime? _registerdate;
        private string _registrant;
        private string _describe;
        private string _department;
        private DateTime? _examinedate;
        private string _Auditor;
        private string _Followupperson;
        private DateTime? _completedate;
        private string _Completeperson;
        private int _feedbackstate;
        private DateTime? _feedbackdate;
        private int _state;
        private string _type;
        private string _softwaretype;
        private string _feedbackcall;
        private string _softwaremodule;
       

       

        /// <summary>
        /// 编码
        /// </summary>
        public int Number
        {
            set { _number = value; }
            get { return _number; }
        }
        /// <summary>
        /// 登记时间
        /// </summary>
        public DateTime? RegisterDate
        {
            set { _registerdate = value; }
            get { return _registerdate; }
        }

        /// <summary>
        /// 登记人
        /// </summary>
        public string Registrant
        {
            set { _registrant = value; }
            get { return _registrant; }
        }
        /// <summary>
        ///需求描述
        /// </summary>
        public string Describe
        {
            set { _describe = value; }
            get { return _describe; }
        } /// <summary>
        ///科室
        /// </summary>
        public string Department
        {
            set { _department = value; }
            get { return _department; }
        }
        /// <summary>
        ///审核时间
        /// </summary>
        public DateTime? Examinedate
        {
            set { _examinedate = value; }
            get { return _examinedate; }
        }
        /// <summary>
        ///审核人
        /// </summary>
        public string Auditor
        {
            set { _Auditor = value; }
            get { return _Auditor; }
        }
        /// <summary>
        /// 处理人
        /// </summary>
        public string Followupperson
        {
            set { _Followupperson = value; }
            get { return _Followupperson; }
        }
        /// <summary>
        /// 完成时间
        /// </summary>
        public DateTime? Completedate
        {
            set { _completedate = value; }
            get { return _completedate; }
        }
        /// <summary>
        /// 完成人
        /// </summary>
        public string CompletePerson
        {
            set { _Completeperson = value; }
            get { return _Completeperson; }
        }

        /// <summary>
        /// 反馈状态
        /// </summary>
        public int FeedBackState
        {
            set { _feedbackstate = value; }
            get { return _feedbackstate; }
        }

        /// <summary>
        /// 反馈时间
        /// </summary>
        public DateTime? FeedBackDate
        {
            set { _feedbackdate = value; }
            get { return _feedbackdate; }
        }

        /// <summary>
        /// 状态
        /// </summary>
        public int State
        {
            set { _state = value; }
            get { return _state; }
        }
        /// <summary>
        /// 类型  
        /// </summary>
        public string TYPE
        {
            set { _type = value; }
            get { return _type; }
        }
        /// <summary>
        /// 软件类型
        /// </summary>
        public string SoftWareType
        {
            set { _softwaretype = value; }
            get { return _softwaretype; }
        }
        /// <summary>
        /// 反馈电话   
        /// </summary>
        public string FeedBackCall
        {
            set { _feedbackcall = value; }
            get { return _feedbackcall; }
        }
        /// <summary>
        /// 软件模块    
        /// </summary>
        public string SoftWareModule
        {
            set { _softwaremodule = value; }
            get { return _softwaremodule; }
        }



        #endregion Model


        #region  成员方法

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public ERPDaMand(int number)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  * FROM [DBOA].[dbo].[ERPDAMAND]");
            strSql.Append(" where Number=@Number ");
            SqlParameter[] parameters = {
					new SqlParameter("@Number", SqlDbType.Int,4)};
            parameters[0].Value = number;

            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["Number"].ToString() != "")
                {
                    Number = int.Parse(ds.Tables[0].Rows[0]["Number"].ToString());
                }

                RegisterDate = DateTime.Parse(ds.Tables[0].Rows[0]["RegisterDate"].ToString());
                Registrant = ds.Tables[0].Rows[0]["Registrant"].ToString();
                Describe = ds.Tables[0].Rows[0]["Describe"].ToString();
                Department = ds.Tables[0].Rows[0]["Department"].ToString();
                Examinedate = DateTime.Parse(ds.Tables[0].Rows[0]["Examinedate"].ToString());

                Auditor = ds.Tables[0].Rows[0]["Auditor"].ToString();
                Followupperson = ds.Tables[0].Rows[0]["Followupperson"].ToString();
                Completedate = DateTime.Parse(ds.Tables[0].Rows[0]["Completedate"].ToString());
                CompletePerson = ds.Tables[0].Rows[0]["CompletePerson"].ToString();
                FeedBackState = int.Parse(ds.Tables[0].Rows[0]["FeedBackState"].ToString());
                FeedBackDate = DateTime.Parse(ds.Tables[0].Rows[0]["FeedBackDate"].ToString());
                State = int.Parse(ds.Tables[0].Rows[0]["State"].ToString());
                TYPE = ds.Tables[0].Rows[0]["TYPE"].ToString();
                SoftWareType = ds.Tables[0].Rows[0]["SoftWareType"].ToString();
                FeedBackCall = ds.Tables[0].Rows[0]["FeedBackCall"].ToString();
                SoftWareModule = ds.Tables[0].Rows[0]["SoftWareModule"].ToString();
              
            }
        }
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int Number)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from [DBOA].[dbo].[ERPDAMAND]");
            strSql.Append(" where Number=@Number ");

            SqlParameter[] parameters = {
					new SqlParameter("@Number", SqlDbType.Int,4)};
            parameters[0].Value = Number;

            return DbHelperSQL.Exists(strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据（在线报修）
        /// </summary>
        public int Add()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into [DBOA].[dbo].[ERPDAMAND](");
            strSql.Append("RegisterDate,Registrant,Describe,Department,Examinedate,Auditor,Followupperson,Completedate,CompletePerson,FeedBackState,FeedBackDate,State,TYPE,SoftWareType,FeedBackCall,SoftWareModule)");
            strSql.Append(" values (");
            strSql.Append("@RegisterDate,@Registrant,@Describe,@Department,@Examinedate,@Auditor,@Followupperson,@Completedate,@CompletePerson,@FeedBackState,@FeedBackDate,@State,@TYPE,@SoftWareType,@FeedBackCall,@SoftWareModule)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
					
					new SqlParameter("@RegisterDate", SqlDbType.VarChar,50),
					new SqlParameter("@Registrant", SqlDbType.VarChar,50),
					new SqlParameter("@Describe", SqlDbType.VarChar,50),
                    new SqlParameter("@Department", SqlDbType.VarChar,50),
					new SqlParameter("@Examinedate", SqlDbType.DateTime),
					new SqlParameter("@Auditor", SqlDbType.DateTime),
					new SqlParameter("@Followupperson", SqlDbType.VarChar,50),
                    new SqlParameter("@Completedate", SqlDbType.VarChar,50),
					new SqlParameter("@CompletePerson", SqlDbType.VarChar,50),
					new SqlParameter("@FeedBackState", SqlDbType.VarChar,50),
					new SqlParameter("@FeedBackDate", SqlDbType.VarChar,50),
                    new SqlParameter("@State", SqlDbType.VarChar,50),
                    new SqlParameter("@TYPE", SqlDbType.VarChar,50), 
                    new SqlParameter("@SoftWareType", SqlDbType.VarChar,50),
                    new SqlParameter("@FeedBackCall", SqlDbType.VarChar,50),
                    new SqlParameter("@SoftWareModule", SqlDbType.VarChar,50),
                    };


           
            parameters[0].Value = RegisterDate;
            parameters[1].Value = Registrant;
            parameters[2].Value = Describe;
            parameters[3].Value = Department;
            parameters[4].Value = Examinedate;
            parameters[5].Value = Auditor;
            parameters[6].Value = Followupperson;
            parameters[7].Value = Completedate;
            parameters[8].Value = CompletePerson;
            parameters[9].Value = FeedBackState;
            parameters[10].Value = FeedBackDate;
            parameters[11].Value = State;
            parameters[12].Value = TYPE;
            parameters[13].Value = SoftWareType;
            parameters[14].Value = FeedBackCall;
            parameters[15].Value = SoftWareModule;

            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 1;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// 增加一条数据（手工登记）
        /// </summary>
        public int Add1()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into [DBOA].[dbo].[ERPDAMAND](");
            strSql.Append("Number,RegisterDate,Registrant,Describe,Department,Examinedate,Auditor,Followupperson,Completedate,CompletePerson,FeedBackState,FeedBackDate,State，TYPE,SoftWareType,FeedBackCall,SoftWareModule)");
            strSql.Append(" values (");
            strSql.Append("@Number,@RegisterDate,@Registrant,@Describe,@Department,@Examinedate,@Auditor,@Followupperson,@Completedate,@CompletePerson,@FeedBackState,@FeedBackDate,@State,@TYPE,@SoftWareType,@FeedBackCall,@SoftWareModule)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
					new SqlParameter("@Number", SqlDbType.VarChar,50),
					new SqlParameter("@RegisterDate", SqlDbType.VarChar,50),
					new SqlParameter("@Registrant", SqlDbType.VarChar,50),
					new SqlParameter("@Describe", SqlDbType.VarChar,50),
                    new SqlParameter("@Department", SqlDbType.VarChar,50),
					new SqlParameter("@Examinedate", SqlDbType.DateTime),
					new SqlParameter("@Auditor", SqlDbType.DateTime),
					new SqlParameter("@Followupperson", SqlDbType.VarChar,50),
                    new SqlParameter("@Completedate", SqlDbType.VarChar,50),
					new SqlParameter("@CompletePerson", SqlDbType.VarChar,50),
					new SqlParameter("@FeedBackState", SqlDbType.VarChar,50),
					new SqlParameter("@FeedBackDate", SqlDbType.VarChar,50),
                    new SqlParameter("@State", SqlDbType.VarChar,50),
                    new SqlParameter("@TYPE", SqlDbType.VarChar,50), 
                    new SqlParameter("@SoftWareType", SqlDbType.VarChar,50),
                    new SqlParameter("@FeedBackCall", SqlDbType.VarChar,50),
                    new SqlParameter("@SoftWareModule", SqlDbType.VarChar,50), 
                                        };
            parameters[0].Value = Number;
            parameters[1].Value = RegisterDate;
            parameters[2].Value = Registrant;
            parameters[3].Value = Describe;
            parameters[4].Value = Department;
            parameters[5].Value = Examinedate;
            parameters[6].Value = Auditor;
            parameters[7].Value = Followupperson;
            parameters[8].Value = Completedate;
            parameters[9].Value = CompletePerson;
            parameters[10].Value = FeedBackState;
            parameters[11].Value = FeedBackDate;
            parameters[12].Value = State;
            parameters[13].Value = TYPE;
            parameters[14].Value = SoftWareType;
            parameters[15].Value = FeedBackCall;
            parameters[16].Value = SoftWareModule;
            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 1;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// 更新一条数据（受理）
        /// </summary>
        public void Update_Accept()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update [DBOA].[dbo].[ERPDAMAND] set ");
            strSql.Append("AcceptPeople=@AcceptPeople,");
            strSql.Append("State='1', AcceptDate=getdate() where OrderNO=@OrderNo ");
            SqlParameter[] parameters = {
                    new SqlParameter("@OrderNo", SqlDbType.VarChar,50),
                    new SqlParameter("@AcceptPeople", SqlDbType.VarChar,50) };
            //parameters[0].Value = OrderNo;
            //parameters[1].Value = AcceptPeople;
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }


        /// <summary>
        /// 更新一条数据（派工）
        /// </summary>
        public void Update_Technician()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update [DBOA].[dbo].[ERPDAMAND] set ");
            strSql.Append("DispatchingPeople=@DispatchingPeople,");
            strSql.Append("HeadPeople=@HeadPeople,");
             strSql.Append("AssistPeople1=@AssistPeople1,");
            strSql.Append("AssistPeople2=@AssistPeople2,");
            strSql.Append("State='2',DispatchingDate=getdate() where OrderNo=@OrderNo ");
            SqlParameter[] parameters = {
                    new SqlParameter("@OrderNo", SqlDbType.VarChar,50),
                    new SqlParameter("@DispatchingPeople", SqlDbType.VarChar,50),
                    new SqlParameter("@HeadPeople", SqlDbType.VarChar,50),
                    new SqlParameter("@AssistPeople1", SqlDbType.VarChar,50),
                    new SqlParameter("@AssistPeople2", SqlDbType.VarChar,50) };
            /*parameters[0].Value = OrderNo;
            parameters[1].Value = DispatchingPeople;
            parameters[2].Value = HeadPeople;
            parameters[3].Value = AssistPeople1;
            parameters[4].Value = AssistPeople2;*/
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }
        /// <summary>
        /// 更新一条数据(结果登记)
        /// </summary>
        public void Update_Result()
        {   
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update [DBOA].[dbo].[ERPDAMAND] set ");
            strSql.Append("Msituation=@Msituation,");
            strSql.Append("Completion=@Completion,");
            strSql.Append("Faulttype=@Faulttype,");
            strSql.Append("ResultPeople=@ResultPeople,");
            strSql.Append("State='4',resultDate=getdate()  where OrderNo=@OrderNo ");
            SqlParameter[] parameters = {
                    new SqlParameter("@OrderNo", SqlDbType.VarChar,50),
                    new SqlParameter("@Msituation", SqlDbType.VarChar,50),
                    new SqlParameter("@Completion", SqlDbType.VarChar,50),
                    new SqlParameter("@Faulttype", SqlDbType.VarChar,50),
                    new SqlParameter("@ResultPeople", SqlDbType.VarChar,50) };
            /*parameters[0].Value = OrderNo;
            parameters[1].Value = Msituation;
            parameters[2].Value = Completion;
            parameters[3].Value = Faulttype;
            parameters[4].Value = ResultPeople;*/
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }
        /// <summary>
        /// 更新一条数据（状态）
        /// </summary>
        public void Update_Order()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update [DBOA].[dbo].[ERPDAMAND] set ");
            strSql.Append("orderdate=getdate(),state='3' where Number=@Number ");
            SqlParameter[] parameters = {
                    new SqlParameter("@Number", SqlDbType.VarChar,50) };
            parameters[0].Value = Number;
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }
      

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public void Delete(int number)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from [DBOA].[dbo].[ERPDAMAND] ");
            strSql.Append(" where Number=@Number ");
            SqlParameter[] parameters = {
					new SqlParameter("@Number", SqlDbType.Int,4)};
            parameters[0].Value = number;

            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }


         //<summary>
         //得到一个对象实体
         //</summary>
        public void GetModel(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 * ");
            strSql.Append(" FROM [DBOA].[dbo].[ERPDAMAND] ");
            strSql.Append(" where Number=@Number ");
            SqlParameter[] parameters = {
                    new SqlParameter("@Number", SqlDbType.Int,4)};
            parameters[0].Value = ID;

            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["Number"].ToString() != "")
                {
                    ID = int.Parse(ds.Tables[0].Rows[0]["Number"].ToString());
                }
                Number = int.Parse(ds.Tables[0].Rows[0]["Number"].ToString());
                if (ds.Tables[0].Rows[0]["RegisterDate"].ToString() != "")
                {
                    RegisterDate = DateTime.Parse(ds.Tables[0].Rows[0]["RegisterDate"].ToString());
                }
                Registrant = ds.Tables[0].Rows[0]["Registrant"].ToString();
                Describe = ds.Tables[0].Rows[0]["Describe"].ToString();
                Department = ds.Tables[0].Rows[0]["Department"].ToString();
                if (ds.Tables[0].Rows[0]["Examinedate"].ToString() != "")
                {
                    Examinedate = DateTime.Parse(ds.Tables[0].Rows[0]["Examinedate"].ToString());
                }

                Auditor = ds.Tables[0].Rows[0]["Auditor"].ToString();
                Followupperson = ds.Tables[0].Rows[0]["Followupperson"].ToString();
                if (ds.Tables[0].Rows[0]["Completedate"].ToString() != "")
                {
                    Completedate = DateTime.Parse(ds.Tables[0].Rows[0]["Completedate"].ToString());
                }

                CompletePerson = ds.Tables[0].Rows[0]["Completedate"].ToString();
                FeedBackState = int.Parse(ds.Tables[0].Rows[0]["FeedBackState"].ToString());
                if (ds.Tables[0].Rows[0]["FeedBackDate"].ToString() != "")
                {
                    FeedBackDate = DateTime.Parse(ds.Tables[0].Rows[0]["FeedBackDate"].ToString());
                }
                State = int.Parse(ds.Tables[0].Rows[0]["State"].ToString());
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM [DBOA].[dbo].[ERPDAMAND] ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperSQL.Query(strSql.ToString());
        }
        /// <summary>
        /// 获取ID号 
        /// </summary>
        public DataSet GetID(string number)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM [DBOA].[dbo].[ERPDAMAND] ");
            if (number.Trim() != "")
            {
                strSql.Append(" where Number='" + number + "'");
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        #endregion  成员方法

    }
}
