using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using ZWL.DBUtility;//请先添加引用
namespace ZWL.BLL
{
    /// <summary>
    /// 类ERPOperations。
    /// </summary>
    public class ERPOperations
    {
        public ERPOperations()
        { }
        #region Model
        private int _id;
        private string _orderno;
        private string _fauleequipment;
        private string _equipmenttype;
        private string _equipmentname;
        private string _xinghao;
        private string _cunfangaddr;
        private string _phenomenon;
        private string _repairdepartment;
        private string _repairpeople;
        private DateTime? _fauledate;
        private DateTime? _repairdate;
        private string _state;
        private string _acceptpeople;
        private DateTime? _acceptdate;
        private string _rejected;
        private string _rejectedpeople;
        private DateTime? _rejecteddate;
        private string _dispatchingpeople;
        private DateTime? _dispatchingdate;
        private string _headpeople;
        private string _assistpeople1;
        private string _assistpeople2;
        private DateTime? _orderdate;
        private string _msituation;
      private string _completion;
      private string _faulttype;
      private string _delayreason; 
        private string _resultpeople;
      private DateTime? _resultdate;
      private string _delaypeople;
      private DateTime? _delaydate;
      private string _registrationpeople;
      private string _returnreason;
      private string _returnpeople;
      private DateTime? _returndate;
      private string _repaircall;
      private string _faultclassification;
   
        /// <summary>
        /// 
        /// </summary>
        public int ID
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 单号
        /// </summary>
        public string OrderNo
        {
            set { _orderno = value; }
            get { return _orderno; }
        }
     
        /// <summary>
        /// 故障设备
        /// </summary>
        public string FauleEquipment
        {
            set { _fauleequipment = value; }
            get { return _fauleequipment; }
        }
        /// <summary>
        ///设备类别
        /// </summary>
        public string EquipmentType
        {
            set { _equipmenttype = value; }
            get { return _equipmenttype; }
        } /// <summary>
        ///设备名称
        /// </summary>
        public string EquipmentName
        {
            set { _equipmentname = value; }
            get { return _equipmentname; }
        }
        /// <summary>
        ///设备型号
        /// </summary>
        public string XingHao
        {
            set { _xinghao = value; }
            get { return _xinghao; }
        }
        /// <summary>
        ///暂放地址
        /// </summary>
        public string CunFangAddr
        {
            set { _cunfangaddr = value; }
            get { return _cunfangaddr; }
        }
        /// <summary>
        /// 故障现象
        /// </summary>
        public string Phenomenon
        {
            set { _phenomenon = value; }
            get { return _phenomenon; }
        }
        /// <summary>
        /// 报修科室
        /// </summary>
        public string RepairDepartment
        {
            set { _repairdepartment = value; }
            get { return _repairdepartment; }
        }
        /// <summary>
        /// 报修人
        /// </summary>
        public string RepairPeople
        {
            set { _repairpeople = value; }
            get { return _repairpeople; }
        }
       
        /// <summary>
        /// 故障日期
        /// </summary>
        public DateTime? FauleDate
        {
            set { _fauledate = value; }
            get { return _fauledate; }
        }
       
        /// <summary>
        /// 报修日期
        /// </summary>
        public DateTime? RepairDate
        {
            set { _repairdate = value; }
            get { return _repairdate; }
        }

        /// <summary>
        /// 状态
        /// </summary>
        public string State
        {
            set { _state  = value; }
            get { return _state; }
        }
        /// <summary>
        /// 受理人
        /// </summary>
        public string AcceptPeople
        {
            set { _acceptpeople = value; }
            get { return _acceptpeople; }
        }
        /// <summary>
        /// 受理时间
        /// </summary>
        public DateTime? AcceptDate
        {
            set { _acceptdate = value; }
            get { return _acceptdate; }
        }
        /// <summary>
        /// 报修电话 20180910
        /// </summary>
        /// 
        public string RepairCall
        {
            set { _repaircall = value; }
            get { return _repaircall; }
        }
        /// <summary>
        /// 故障分类 20180910
        /// </summary>
        ///
        public string FaultClassification
        {
            set { _faultclassification = value; }
            get { return _faultclassification; }
        }
        public string Rejected
        {
            set { _rejected = value; }
            get { return _rejected; }
        }
        public string RejectedPeople
        {
            set { _rejectedpeople = value; }
            get { return _rejectedpeople; }
        }
        public DateTime? RejectedDate
        {
            set { _rejecteddate= value; }
            get { return _rejecteddate; }
        }
        public string DispatchingPeople
        {
            set { _dispatchingpeople = value; }
            get { return _dispatchingpeople; }
        }
        public DateTime? DispatchingDate
        {
            set { _dispatchingdate = value; }
            get { return _dispatchingdate; }
        }
         public string HeadPeople
        {
            set { _headpeople = value; }
            get { return _headpeople; }
        }
        public string AssistPeople1
        {
            set { _assistpeople1 = value; }
            get { return _assistpeople1; }
        } 
        public string AssistPeople2
        {
            set { _assistpeople2 = value; }
            get { return _assistpeople2; }
        }
        public DateTime? OrderDate
        { set { _orderdate = value; }
            get { return _orderdate; }
        }
        public string Msituation
        { set { _msituation = value;}
            get { return _msituation; }
        }
        public string Completion
             { set {_completion  = value;}
                 get { return _completion; }
             }
        public string Faulttype
             { set {_faulttype  = value;}
                 get { return _faulttype; }
             }
        public string Delayreason
             { set {_delayreason  = value;}
                 get { return _delayreason; }
             }
        public string DelayPeople
             { set { _delaypeople = value;}
                 get { return _delaypeople; }
             }
        public DateTime? DelayDate
             { set { _delaydate = value;}
                 get { return _delaydate; }
             }
        public string ResultPeople
             { set { _resultpeople = value;}
                 get { return _resultpeople; }
             }
        public DateTime? ResultDate
             { set { _resultdate = value;}
                 get { return _resultdate; }
             }
        public string  RegistrationPeople
    {
        set { _registrationpeople = value; }
        get { return _registrationpeople; }
    }
        public string ReturnReason
        {
        set { _returnreason = value; }
        get { return _returnreason; }
        }
        public string ReturnPeople
        {
        set { _returnpeople = value; }
        get { return _returnpeople; }
        }
        public DateTime? ReturnDate
        {
        set { _returndate = value; }
        get { return _returndate; }
        }
   
        #endregion Model


        #region  成员方法

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public  ERPOperations(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  ID,OrderNo,FauleType,FauleEquipment,Phenomenon,RepairDepartment,RepairPeople,FauleDate,RepairDate,State ");
            strSql.Append(" FROM ERPOperations ");
            strSql.Append(" where ID=@ID ");
            SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
            parameters[0].Value = ID;

            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["ID"].ToString() != "")
                {
                    ID = int.Parse(ds.Tables[0].Rows[0]["ID"].ToString());
                }
                
                OrderNo = ds.Tables[0].Rows[0]["orderno"].ToString();
                FauleEquipment = ds.Tables[0].Rows[0]["fauleequipment"].ToString();
                Phenomenon = ds.Tables[0].Rows[0]["phenomenon"].ToString();
                RepairDepartment = ds.Tables[0].Rows[0]["repairdepartment"].ToString();
                RepairPeople = ds.Tables[0].Rows[0]["repairpeople"].ToString();
                if (ds.Tables[0].Rows[0]["fauledate"].ToString() != "")
                {
                    FauleDate = DateTime.Parse(ds.Tables[0].Rows[0]["fauledate"].ToString());
                }
                if (ds.Tables[0].Rows[0]["repairdate"].ToString() != "")
                {
                    RepairDate = DateTime.Parse(ds.Tables[0].Rows[0]["repairdate"].ToString());
                }
                State = ds.Tables[0].Rows[0]["state"].ToString();
              
            }
        }
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from ERPOperations");
            strSql.Append(" where ID=@ID ");

            SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
            parameters[0].Value = ID;

            return DbHelperSQL.Exists(strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据（在线报修）
        /// </summary>
        public int Add()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into ERPOperations(");
            strSql.Append("OrderNo,FauleEquipment,Phenomenon,RepairDepartment,RepairPeople,FauleDate,RepairDate,State,EquipmentType,EquipmentName,XingHao,CunFangAddr,RepairCall,FaultClassification)");
            strSql.Append(" values (");
            strSql.Append("@OrderNo,@FauleEquipment,@Phenomenon,@RepairDepartment,@RepairPeople,@FauleDate,@RepairDate,@State,@EquipmentType,@EquipmentName,@XingHao,@CunFangAddr,@RepairCall,@FaultClassification)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
					new SqlParameter("@OrderNo", SqlDbType.VarChar,50),
					new SqlParameter("@FauleEquipment", SqlDbType.VarChar,50),
					new SqlParameter("@Phenomenon", SqlDbType.VarChar,50),
					new SqlParameter("@RepairDepartment", SqlDbType.VarChar,50),
                    new SqlParameter("@RepairPeople", SqlDbType.VarChar,50),
					new SqlParameter("@FauleDate", SqlDbType.DateTime),
					new SqlParameter("@RepairDate", SqlDbType.DateTime),
					new SqlParameter("@State", SqlDbType.VarChar,50),
                    new SqlParameter("@EquipmentType", SqlDbType.VarChar,50),
					new SqlParameter("@EquipmentName", SqlDbType.VarChar,50),
					new SqlParameter("@XingHao", SqlDbType.VarChar,50),
					new SqlParameter("@CunFangAddr", SqlDbType.VarChar,50),
                    new SqlParameter("@RepairCall", SqlDbType.VarChar,50),
                    new SqlParameter("@FaultClassification",SqlDbType.VarChar,50)                   };
            

            parameters[0].Value = OrderNo;
            parameters[1].Value = FauleEquipment;
            parameters[2].Value = Phenomenon;
            parameters[3].Value = RepairDepartment;
            parameters[4].Value = RepairPeople;
            parameters[5].Value = FauleDate;
            parameters[6].Value = RepairDate;
            parameters[7].Value = State;
            parameters[8].Value = EquipmentType;
            parameters[9].Value = EquipmentName;
            parameters[10].Value = XingHao;
            parameters[11].Value = CunFangAddr;
            parameters[12].Value = RepairCall;//20180910增加报修电话
            parameters[12].Value = FaultClassification;//20180910增加报修分类
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
            strSql.Append("insert into ERPOperations(");
            strSql.Append("OrderNo,FauleEquipment,Phenomenon,RepairDepartment,RepairPeople,FauleDate,RepairDate,State,EquipmentType,EquipmentName,XingHao,CunFangAddr,RegistrationPeople,RepairCall,FaultClassification)");
            strSql.Append(" values (");
            strSql.Append("@OrderNo,@FauleEquipment,@Phenomenon,@RepairDepartment,@RepairPeople,@FauleDate,@RepairDate,@State,@EquipmentType,@EquipmentName,@XingHao,@CunFangAddr,@RegistrationPeople,@RepairCall,@FaultClassification)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
					new SqlParameter("@OrderNo", SqlDbType.VarChar,50),
					new SqlParameter("@FauleEquipment", SqlDbType.VarChar,50),
					new SqlParameter("@Phenomenon", SqlDbType.VarChar,50),
					new SqlParameter("@RepairDepartment", SqlDbType.VarChar,50),
                    new SqlParameter("@RepairPeople", SqlDbType.VarChar,50),
					new SqlParameter("@FauleDate", SqlDbType.DateTime),
					new SqlParameter("@RepairDate", SqlDbType.DateTime),
					new SqlParameter("@State", SqlDbType.VarChar,50),
                    new SqlParameter("@EquipmentType", SqlDbType.VarChar,50),
					new SqlParameter("@EquipmentName", SqlDbType.VarChar,50),
					new SqlParameter("@XingHao", SqlDbType.VarChar,50),
					new SqlParameter("@CunFangAddr", SqlDbType.VarChar,50),
                    new SqlParameter("@RegistrationPeople", SqlDbType.VarChar,50),
                    new SqlParameter("@RepairCall", SqlDbType.VarChar,50),
                    new SqlParameter("@FaultClassification", SqlDbType.VarChar,50)
                                        };
            parameters[0].Value = OrderNo;
            parameters[1].Value = FauleEquipment;
            parameters[2].Value = Phenomenon;
            parameters[3].Value = RepairDepartment;
            parameters[4].Value = RepairPeople;
            parameters[5].Value = FauleDate;
            parameters[6].Value = RepairDate;
            parameters[7].Value = State;
            parameters[8].Value = EquipmentType;
            parameters[9].Value = EquipmentName;
            parameters[10].Value = XingHao;
            parameters[11].Value = CunFangAddr;
            parameters[12].Value = RegistrationPeople;
            parameters[13].Value = RepairCall;//20180910增加报修电话
            parameters[14].Value = FaultClassification;//20180910增加报修分类
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
            strSql.Append("update ERPOperations set ");
            strSql.Append("AcceptPeople=@AcceptPeople,");
            strSql.Append("State='1', AcceptDate=getdate() where OrderNO=@OrderNo ");
            SqlParameter[] parameters = {
                    new SqlParameter("@OrderNo", SqlDbType.VarChar,50),
                    new SqlParameter("@AcceptPeople", SqlDbType.VarChar,50) };
            parameters[0].Value = OrderNo;
            parameters[1].Value = AcceptPeople;
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }
        /// <summary>
        /// 更新一条数据（驳回）
        /// </summary>
        public void Update_Rejected()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update ERPOperations set ");
            strSql.Append("Rejected=@Rejected,");
            strSql.Append("RejectedPeople=@RejectedPeople,");
            strSql.Append("State='9',rejectedDate=getdate() where OrderNo=@OrderNo ");
            SqlParameter[] parameters = {
                    new SqlParameter("@OrderNo", SqlDbType.VarChar,50),
                    new SqlParameter("@Rejected", SqlDbType.VarChar,50),
                    new SqlParameter("@RejectedPeople", SqlDbType.VarChar,50) };
            parameters[0].Value = OrderNo;
            parameters[1].Value = Rejected;
            parameters[2].Value = RejectedPeople;
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }

        /// <summary>
        /// 更新一条数据（派工）
        /// </summary>
        public void Update_Technician()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update ERPOperations set ");
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
            parameters[0].Value = OrderNo;
            parameters[1].Value = DispatchingPeople;
            parameters[2].Value = HeadPeople;
            parameters[3].Value = AssistPeople1;
            parameters[4].Value = AssistPeople2;
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }
        /// <summary>
        /// 更新一条数据(结果登记)
        /// </summary>
        public void Update_Result()
        {   
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update ERPOperations set ");
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
            parameters[0].Value = OrderNo;
            parameters[1].Value = Msituation;
            parameters[2].Value = Completion;
            parameters[3].Value = Faulttype;
            parameters[4].Value = ResultPeople;
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }
        /// <summary>
        /// 更新一条数据（维修员响应）
        /// </summary>
        public void Update_Order()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update ERPOperations set ");
            strSql.Append("orderdate=getdate(),state='3' where OrderNo=@OrderNo ");
            SqlParameter[] parameters = {
                    new SqlParameter("@OrderNo", SqlDbType.VarChar,50) };
            parameters[0].Value = OrderNo;
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }
        /// <summary>
        /// 更新一条数据（延迟）
        /// </summary>
        public void Update_Delay()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update ERPOperations set ");
            strSql.Append("DelayPeople=@DelayPeople,");
            strSql.Append("Delayreason=@Delayreason,");
            strSql.Append("State='8',DelayDate=getdate() where OrderNo=@OrderNo ");
            SqlParameter[] parameters = {
                    new SqlParameter("@OrderNo", SqlDbType.VarChar,50),
                    new SqlParameter("@DelayPeople", SqlDbType.VarChar,50),
                    new SqlParameter("@Delayreason", SqlDbType.VarChar,50) };
            parameters[0].Value = OrderNo;
            parameters[1].Value = DelayPeople;
            parameters[2].Value = Delayreason; 
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }
        /// <summary>
        /// 更新一条数据（转单）
        /// </summary>
        public void Update_Return()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update ERPOperations set ");
            strSql.Append("ReturnPeople=@ReturnPeople,");
            strSql.Append("ReturnReason=@ReturnReason,");
            strSql.Append("State='7',ReturnDate=getdate() where OrderNo=@OrderNo ");
            SqlParameter[] parameters = {
                    new SqlParameter("@OrderNo", SqlDbType.VarChar,50),
                    new SqlParameter("@ReturnPeople", SqlDbType.VarChar,50),
                    new SqlParameter("@ReturnReason", SqlDbType.VarChar,50) };
            parameters[0].Value = OrderNo;
            parameters[1].Value = ReturnPeople;
            parameters[2].Value = ReturnReason;
            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public void Delete(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from ERPOperations ");
            strSql.Append(" where ID=@ID ");
            SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
            parameters[0].Value = ID;

            DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }


         //<summary>
         //得到一个对象实体
         //</summary>
        public void GetModel(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 * ");
            strSql.Append(" FROM ERPOperations ");
            strSql.Append(" where ID=@ID ");
            SqlParameter[] parameters = {
                    new SqlParameter("@ID", SqlDbType.Int,4)};
            parameters[0].Value = ID;

            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["ID"].ToString() != "")
                {
                    ID = int.Parse(ds.Tables[0].Rows[0]["ID"].ToString());
                }
                OrderNo = ds.Tables[0].Rows[0]["OrderNo"].ToString();
                RepairDepartment = ds.Tables[0].Rows[0]["RepairDepartment"].ToString();
                RepairPeople = ds.Tables[0].Rows[0]["RepairPeople"].ToString();
                FauleEquipment = ds.Tables[0].Rows[0]["FauleEquipment"].ToString();
                Phenomenon = ds.Tables[0].Rows[0]["Phenomenon"].ToString();
                XingHao = ds.Tables[0].Rows[0]["XingHao"].ToString();
                CunFangAddr = ds.Tables[0].Rows[0]["CunFangAddr"].ToString();
                EquipmentName = ds.Tables[0].Rows[0]["EquipmentName"].ToString();
                EquipmentType = ds.Tables[0].Rows[0]["EquipmentType"].ToString();
                if (ds.Tables[0].Rows[0]["RepairDate"].ToString() != "")
                {
                    RepairDate = DateTime.Parse(ds.Tables[0].Rows[0]["RepairDate"].ToString());
                }
                if (ds.Tables[0].Rows[0]["FauleDate"].ToString() != "")
                {
                    FauleDate = DateTime.Parse(ds.Tables[0].Rows[0]["FauleDate"].ToString());
                }
                HeadPeople = ds.Tables[0].Rows[0]["HeadPeople"].ToString();
                AssistPeople1 = ds.Tables[0].Rows[0]["AssistPeople1"].ToString();
                AssistPeople2 = ds.Tables[0].Rows[0]["AssistPeople2"].ToString();
                RepairCall = ds.Tables[0].Rows[0]["RepairCall"].ToString();//20180910增加报修电话
                      if (ds.Tables[0].Rows[0]["DispatchingDate"].ToString() != "")
                {
                    DispatchingDate = DateTime.Parse(ds.Tables[0].Rows[0]["DispatchingDate"].ToString());
                }
                      DispatchingPeople = ds.Tables[0].Rows[0]["DispatchingPeople"].ToString();
                      if (ds.Tables[0].Rows[0]["OrderDate"].ToString() != "")
                      {
                          OrderDate = DateTime.Parse(ds.Tables[0].Rows[0]["OrderDate"].ToString());
                      }
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM ERPOperations ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperSQL.Query(strSql.ToString());
        }
        /// <summary>
        /// 获取ID号 
        /// </summary>
        public DataSet GetID(string OrderNo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM ERPOperations ");
            if (OrderNo.Trim() != "")
            {
                strSql.Append(" where OrderNo='" + OrderNo+"'");
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        #endregion  成员方法
    }
}

