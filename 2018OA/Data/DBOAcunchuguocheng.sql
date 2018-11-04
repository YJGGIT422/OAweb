/******************************************************************
* 表名：ERPAnPai
* 时间：2014/6/4 23:05:04
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPAnPai_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPAnPai_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPAnPai_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPAnPai]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPAnPai_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPAnPai_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPAnPai_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPAnPai] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPAnPai_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPAnPai_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPAnPai_ADD
@ID int output,
@UserName varchar(50),
@TitleStr varchar(500),
@ContentStr text,
@TimeStart datetime,
@TimeEnd datetime,
@TimeTiXing datetime,
@TypeStr varchar(50),
@TimeStr datetime,
@GongXiangWho varchar(5000)

 AS 
	INSERT INTO [ERPAnPai](
	[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr],[GongXiangWho]
	)VALUES(
	@UserName,@TitleStr,@ContentStr,@TimeStart,@TimeEnd,@TimeTiXing,@TypeStr,@TimeStr,@GongXiangWho
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPAnPai_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPAnPai_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPAnPai_Update
@ID int,
@UserName varchar(50),
@TitleStr varchar(500),
@ContentStr text,
@TimeStart datetime,
@TimeEnd datetime,
@TimeTiXing datetime,
@TypeStr varchar(50),
@TimeStr datetime,
@GongXiangWho varchar(5000)
 AS 
	UPDATE [ERPAnPai] SET 
	[UserName] = @UserName,[TitleStr] = @TitleStr,[ContentStr] = @ContentStr,[TimeStart] = @TimeStart,[TimeEnd] = @TimeEnd,[TimeTiXing] = @TimeTiXing,[TypeStr] = @TypeStr,[TimeStr] = @TimeStr,[GongXiangWho] = @GongXiangWho
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPAnPai_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPAnPai_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPAnPai_Delete
@ID int
 AS 
	DELETE [ERPAnPai]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPAnPai_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPAnPai_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPAnPai_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,TitleStr,ContentStr,TimeStart,TimeEnd,TimeTiXing,TypeStr,TimeStr,GongXiangWho
	 FROM [ERPAnPai]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPAnPai_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPAnPai_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPAnPai_GetList
 AS 
	SELECT 
	ID,UserName,TitleStr,ContentStr,TimeStart,TimeEnd,TimeTiXing,TypeStr,TimeStr,GongXiangWho
	 FROM [ERPAnPai]

GO


/******************************************************************
* 表名：ERPBaoJia
* 时间：2014/6/4 23:05:04
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoJia_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoJia_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoJia_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPBaoJia]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoJia_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoJia_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoJia_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPBaoJia] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoJia_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoJia_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoJia_ADD
@ID int output,
@CustomName varchar(100),
@BaoJiaTitle varchar(500),
@BaoJiaType varchar(500),
@BaoJiaJinE varchar(500),
@BaoJiaContent varchar(8000),
@BaoJiaResult varchar(5000),
@BaoJiaTime varchar(500),
@BackInfo varchar(8000),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000),
@Fujian varchar(2000)

 AS 
	INSERT INTO [ERPBaoJia](
	[CustomName],[BaoJiaTitle],[BaoJiaType],[BaoJiaJinE],[BaoJiaContent],[BaoJiaResult],[BaoJiaTime],[BackInfo],[UserName],[TimeStr],[IFShare],[CusBakA],[CusBakB],[CusBakC],[CusBakD],[CusBakE],[Fujian]
	)VALUES(
	@CustomName,@BaoJiaTitle,@BaoJiaType,@BaoJiaJinE,@BaoJiaContent,@BaoJiaResult,@BaoJiaTime,@BackInfo,@UserName,@TimeStr,@IFShare,@CusBakA,@CusBakB,@CusBakC,@CusBakD,@CusBakE,@Fujian
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoJia_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoJia_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoJia_Update
@ID int,
@CustomName varchar(100),
@BaoJiaTitle varchar(500),
@BaoJiaType varchar(500),
@BaoJiaJinE varchar(500),
@BaoJiaContent varchar(8000),
@BaoJiaResult varchar(5000),
@BaoJiaTime varchar(500),
@BackInfo varchar(8000),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000),
@Fujian varchar(2000)
 AS 
	UPDATE [ERPBaoJia] SET 
	[CustomName] = @CustomName,[BaoJiaTitle] = @BaoJiaTitle,[BaoJiaType] = @BaoJiaType,[BaoJiaJinE] = @BaoJiaJinE,[BaoJiaContent] = @BaoJiaContent,[BaoJiaResult] = @BaoJiaResult,[BaoJiaTime] = @BaoJiaTime,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr,[IFShare] = @IFShare,[CusBakA] = @CusBakA,[CusBakB] = @CusBakB,[CusBakC] = @CusBakC,[CusBakD] = @CusBakD,[CusBakE] = @CusBakE,[Fujian] = @Fujian
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoJia_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoJia_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoJia_Delete
@ID int
 AS 
	DELETE [ERPBaoJia]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoJia_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoJia_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoJia_GetModel
@ID int
 AS 
	SELECT 
	ID,CustomName,BaoJiaTitle,BaoJiaType,BaoJiaJinE,BaoJiaContent,BaoJiaResult,BaoJiaTime,BackInfo,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE,Fujian
	 FROM [ERPBaoJia]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoJia_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoJia_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoJia_GetList
 AS 
	SELECT 
	ID,CustomName,BaoJiaTitle,BaoJiaType,BaoJiaJinE,BaoJiaContent,BaoJiaResult,BaoJiaTime,BackInfo,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE,Fujian
	 FROM [ERPBaoJia]

GO


/******************************************************************
* 表名：ERPBaoXiao
* 时间：2014/6/4 23:05:04
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoXiao_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoXiao_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoXiao_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPBaoXiao]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoXiao_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoXiao_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoXiao_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPBaoXiao] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoXiao_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoXiao_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoXiao_ADD
@ID int output,
@ProjectName varchar(200),
@FeiYongType varchar(50),
@ShenQingRen varchar(50),
@ShenPiRen varchar(50),
@ShenQingContent varchar(5000),
@JinE varchar(50),
@StateNow varchar(50),
@Username varchar(50),
@ShenQingTime datetime

 AS 
	INSERT INTO [ERPBaoXiao](
	[ProjectName],[FeiYongType],[ShenQingRen],[ShenPiRen],[ShenQingContent],[JinE],[StateNow],[Username],[ShenQingTime]
	)VALUES(
	@ProjectName,@FeiYongType,@ShenQingRen,@ShenPiRen,@ShenQingContent,@JinE,@StateNow,@Username,@ShenQingTime
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoXiao_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoXiao_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoXiao_Update
@ID int,
@ProjectName varchar(200),
@FeiYongType varchar(50),
@ShenQingRen varchar(50),
@ShenPiRen varchar(50),
@ShenQingContent varchar(5000),
@JinE varchar(50),
@StateNow varchar(50),
@Username varchar(50),
@ShenQingTime datetime
 AS 
	UPDATE [ERPBaoXiao] SET 
	[ProjectName] = @ProjectName,[FeiYongType] = @FeiYongType,[ShenQingRen] = @ShenQingRen,[ShenPiRen] = @ShenPiRen,[ShenQingContent] = @ShenQingContent,[JinE] = @JinE,[StateNow] = @StateNow,[Username] = @Username,[ShenQingTime] = @ShenQingTime
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoXiao_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoXiao_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoXiao_Delete
@ID int
 AS 
	DELETE [ERPBaoXiao]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoXiao_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoXiao_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoXiao_GetModel
@ID int
 AS 
	SELECT 
	ID,ProjectName,FeiYongType,ShenQingRen,ShenPiRen,ShenQingContent,JinE,StateNow,Username,ShenQingTime
	 FROM [ERPBaoXiao]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBaoXiao_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBaoXiao_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBaoXiao_GetList
 AS 
	SELECT 
	ID,ProjectName,FeiYongType,ShenQingRen,ShenPiRen,ShenQingContent,JinE,StateNow,Username,ShenQingTime
	 FROM [ERPBaoXiao]

GO


/******************************************************************
* 表名：ERPBBSBanKuai
* 时间：2014/6/4 23:05:04
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSBanKuai_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSBanKuai_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSBanKuai_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPBBSBanKuai]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSBanKuai_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSBanKuai_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSBanKuai_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPBBSBanKuai] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSBanKuai_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSBanKuai_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSBanKuai_ADD
@ID int output,
@BanKuaiName varchar(500),
@BanZhuList varchar(500),
@BanKuaiMiaoShu varchar(8000),
@BanKuaiImg varchar(200),
@JiaoSeXianZhiList varchar(8000),
@BuMenXianZhi varchar(8000),
@UserXianZhi varchar(8000)

 AS 
	INSERT INTO [ERPBBSBanKuai](
	[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]
	)VALUES(
	@BanKuaiName,@BanZhuList,@BanKuaiMiaoShu,@BanKuaiImg,@JiaoSeXianZhiList,@BuMenXianZhi,@UserXianZhi
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSBanKuai_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSBanKuai_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSBanKuai_Update
@ID int,
@BanKuaiName varchar(500),
@BanZhuList varchar(500),
@BanKuaiMiaoShu varchar(8000),
@BanKuaiImg varchar(200),
@JiaoSeXianZhiList varchar(8000),
@BuMenXianZhi varchar(8000),
@UserXianZhi varchar(8000)
 AS 
	UPDATE [ERPBBSBanKuai] SET 
	[BanKuaiName] = @BanKuaiName,[BanZhuList] = @BanZhuList,[BanKuaiMiaoShu] = @BanKuaiMiaoShu,[BanKuaiImg] = @BanKuaiImg,[JiaoSeXianZhiList] = @JiaoSeXianZhiList,[BuMenXianZhi] = @BuMenXianZhi,[UserXianZhi] = @UserXianZhi
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSBanKuai_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSBanKuai_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSBanKuai_Delete
@ID int
 AS 
	DELETE [ERPBBSBanKuai]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSBanKuai_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSBanKuai_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSBanKuai_GetModel
@ID int
 AS 
	SELECT 
	ID,BanKuaiName,BanZhuList,BanKuaiMiaoShu,BanKuaiImg,JiaoSeXianZhiList,BuMenXianZhi,UserXianZhi
	 FROM [ERPBBSBanKuai]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSBanKuai_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSBanKuai_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSBanKuai_GetList
 AS 
	SELECT 
	ID,BanKuaiName,BanZhuList,BanKuaiMiaoShu,BanKuaiImg,JiaoSeXianZhiList,BuMenXianZhi,UserXianZhi
	 FROM [ERPBBSBanKuai]

GO


/******************************************************************
* 表名：ERPBBSTieZi
* 时间：2014/6/4 23:05:04
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSTieZi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSTieZi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSTieZi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPBBSTieZi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSTieZi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSTieZi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSTieZi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPBBSTieZi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSTieZi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSTieZi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSTieZi_ADD
@ID int output,
@BanKuaiID int,
@TitleStr varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@ContentStr text,
@ZuiHouUser varchar(50),
@ZuiHouTime datetime,
@PaiXu int,
@HuiFuContent text

 AS 
	INSERT INTO [ERPBBSTieZi](
	[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu],[HuiFuContent]
	)VALUES(
	@BanKuaiID,@TitleStr,@UserName,@TimeStr,@ContentStr,@ZuiHouUser,@ZuiHouTime,@PaiXu,@HuiFuContent
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSTieZi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSTieZi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSTieZi_Update
@ID int,
@BanKuaiID int,
@TitleStr varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@ContentStr text,
@ZuiHouUser varchar(50),
@ZuiHouTime datetime,
@PaiXu int,
@HuiFuContent text
 AS 
	UPDATE [ERPBBSTieZi] SET 
	[BanKuaiID] = @BanKuaiID,[TitleStr] = @TitleStr,[UserName] = @UserName,[TimeStr] = @TimeStr,[ContentStr] = @ContentStr,[ZuiHouUser] = @ZuiHouUser,[ZuiHouTime] = @ZuiHouTime,[PaiXu] = @PaiXu,[HuiFuContent] = @HuiFuContent
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSTieZi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSTieZi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSTieZi_Delete
@ID int
 AS 
	DELETE [ERPBBSTieZi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSTieZi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSTieZi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSTieZi_GetModel
@ID int
 AS 
	SELECT 
	ID,BanKuaiID,TitleStr,UserName,TimeStr,ContentStr,ZuiHouUser,ZuiHouTime,PaiXu,HuiFuContent
	 FROM [ERPBBSTieZi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBBSTieZi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBBSTieZi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBBSTieZi_GetList
 AS 
	SELECT 
	ID,BanKuaiID,TitleStr,UserName,TimeStr,ContentStr,ZuiHouUser,ZuiHouTime,PaiXu,HuiFuContent
	 FROM [ERPBBSTieZi]

GO


/******************************************************************
* 表名：ERPBook
* 时间：2014/6/4 23:05:04
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBook_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBook_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBook_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPBook]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBook_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBook_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBook_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPBook] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBook_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBook_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBook_ADD
@ID int output,
@BookName varchar(50),
@BookSerils varchar(50),
@SuoShuBuMen varchar(50),
@BookType varchar(50),
@Auother varchar(50),
@ISBN varchar(50),
@CoperStr varchar(50),
@ChuBanDate varchar(50),
@CunFangDian varchar(50),
@ShuLiang varchar(50),
@JiaGe varchar(50),
@NeiRong varchar(5000),
@NowState varchar(50),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPBook](
	[BookName],[BookSerils],[SuoShuBuMen],[BookType],[Auother],[ISBN],[CoperStr],[ChuBanDate],[CunFangDian],[ShuLiang],[JiaGe],[NeiRong],[NowState],[BackInfo],[UserName],[TimeStr]
	)VALUES(
	@BookName,@BookSerils,@SuoShuBuMen,@BookType,@Auother,@ISBN,@CoperStr,@ChuBanDate,@CunFangDian,@ShuLiang,@JiaGe,@NeiRong,@NowState,@BackInfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBook_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBook_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBook_Update
@ID int,
@BookName varchar(50),
@BookSerils varchar(50),
@SuoShuBuMen varchar(50),
@BookType varchar(50),
@Auother varchar(50),
@ISBN varchar(50),
@CoperStr varchar(50),
@ChuBanDate varchar(50),
@CunFangDian varchar(50),
@ShuLiang varchar(50),
@JiaGe varchar(50),
@NeiRong varchar(5000),
@NowState varchar(50),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPBook] SET 
	[BookName] = @BookName,[BookSerils] = @BookSerils,[SuoShuBuMen] = @SuoShuBuMen,[BookType] = @BookType,[Auother] = @Auother,[ISBN] = @ISBN,[CoperStr] = @CoperStr,[ChuBanDate] = @ChuBanDate,[CunFangDian] = @CunFangDian,[ShuLiang] = @ShuLiang,[JiaGe] = @JiaGe,[NeiRong] = @NeiRong,[NowState] = @NowState,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBook_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBook_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBook_Delete
@ID int
 AS 
	DELETE [ERPBook]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBook_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBook_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBook_GetModel
@ID int
 AS 
	SELECT 
	ID,BookName,BookSerils,SuoShuBuMen,BookType,Auother,ISBN,CoperStr,ChuBanDate,CunFangDian,ShuLiang,JiaGe,NeiRong,NowState,BackInfo,UserName,TimeStr
	 FROM [ERPBook]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBook_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBook_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBook_GetList
 AS 
	SELECT 
	ID,BookName,BookSerils,SuoShuBuMen,BookType,Auother,ISBN,CoperStr,ChuBanDate,CunFangDian,ShuLiang,JiaGe,NeiRong,NowState,BackInfo,UserName,TimeStr
	 FROM [ERPBook]

GO


/******************************************************************
* 表名：ERPBookJieHuan
* 时间：2014/6/4 23:05:04
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBookJieHuan_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBookJieHuan_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBookJieHuan_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPBookJieHuan]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBookJieHuan_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBookJieHuan_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBookJieHuan_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPBookJieHuan] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBookJieHuan_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBookJieHuan_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBookJieHuan_ADD
@ID int output,
@BookName varchar(50),
@JieShuDate varchar(50),
@GuiHuanDate varchar(50),
@JieHuanState varchar(50),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPBookJieHuan](
	[BookName],[JieShuDate],[GuiHuanDate],[JieHuanState],[BackInfo],[UserName],[TimeStr]
	)VALUES(
	@BookName,@JieShuDate,@GuiHuanDate,@JieHuanState,@BackInfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBookJieHuan_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBookJieHuan_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBookJieHuan_Update
@ID int,
@BookName varchar(50),
@JieShuDate varchar(50),
@GuiHuanDate varchar(50),
@JieHuanState varchar(50),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPBookJieHuan] SET 
	[BookName] = @BookName,[JieShuDate] = @JieShuDate,[GuiHuanDate] = @GuiHuanDate,[JieHuanState] = @JieHuanState,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBookJieHuan_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBookJieHuan_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBookJieHuan_Delete
@ID int
 AS 
	DELETE [ERPBookJieHuan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBookJieHuan_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBookJieHuan_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBookJieHuan_GetModel
@ID int
 AS 
	SELECT 
	ID,BookName,JieShuDate,GuiHuanDate,JieHuanState,BackInfo,UserName,TimeStr
	 FROM [ERPBookJieHuan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBookJieHuan_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBookJieHuan_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBookJieHuan_GetList
 AS 
	SELECT 
	ID,BookName,JieShuDate,GuiHuanDate,JieHuanState,BackInfo,UserName,TimeStr
	 FROM [ERPBookJieHuan]

GO


/******************************************************************
* 表名：ERPBuMen
* 时间：2014/6/4 23:05:04
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuMen_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuMen_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBuMen_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPBuMen]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuMen_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuMen_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBuMen_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPBuMen] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuMen_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuMen_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBuMen_ADD
@ID int output,
@BuMenName varchar(50),
@ChargeMan varchar(50),
@TelStr varchar(50),
@ChuanZhen varchar(50),
@BackInfo varchar(8000),
@DirID int

 AS 
	INSERT INTO [ERPBuMen](
	[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[BackInfo],[DirID]
	)VALUES(
	@BuMenName,@ChargeMan,@TelStr,@ChuanZhen,@BackInfo,@DirID
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuMen_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuMen_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBuMen_Update
@ID int,
@BuMenName varchar(50),
@ChargeMan varchar(50),
@TelStr varchar(50),
@ChuanZhen varchar(50),
@BackInfo varchar(8000),
@DirID int
 AS 
	UPDATE [ERPBuMen] SET 
	[BuMenName] = @BuMenName,[ChargeMan] = @ChargeMan,[TelStr] = @TelStr,[ChuanZhen] = @ChuanZhen,[BackInfo] = @BackInfo,[DirID] = @DirID
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuMen_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuMen_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBuMen_Delete
@ID int
 AS 
	DELETE [ERPBuMen]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuMen_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuMen_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBuMen_GetModel
@ID int
 AS 
	SELECT 
	ID,BuMenName,ChargeMan,TelStr,ChuanZhen,BackInfo,DirID
	 FROM [ERPBuMen]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuMen_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuMen_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:04
------------------------------------
CREATE PROCEDURE ERPBuMen_GetList
 AS 
	SELECT 
	ID,BuMenName,ChargeMan,TelStr,ChuanZhen,BackInfo,DirID
	 FROM [ERPBuMen]

GO


/******************************************************************
* 表名：ERPBuyChanPin
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyChanPin_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyChanPin_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyChanPin_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPBuyChanPin]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyChanPin_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyChanPin_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyChanPin_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPBuyChanPin] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyChanPin_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyChanPin_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyChanPin_ADD
@ID int output,
@OrderName varchar(50),
@ProductName varchar(50),
@ProductSerils varchar(50),
@GongYingShang varchar(50),
@ProductType varchar(50),
@XingHao varchar(50),
@DanWei varchar(50),
@DanJia numeric(18,2),
@ShuLiang numeric(18,2),
@ZongJia numeric(18,2),
@YiFuKuan numeric(18,2),
@QianKuanShu numeric(18,2),
@IFJiaoFu varchar(50),
@ChanPinMiaoShu varchar(5000),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPBuyChanPin](
	[OrderName],[ProductName],[ProductSerils],[GongYingShang],[ProductType],[XingHao],[DanWei],[DanJia],[ShuLiang],[ZongJia],[YiFuKuan],[QianKuanShu],[IFJiaoFu],[ChanPinMiaoShu],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@OrderName,@ProductName,@ProductSerils,@GongYingShang,@ProductType,@XingHao,@DanWei,@DanJia,@ShuLiang,@ZongJia,@YiFuKuan,@QianKuanShu,@IFJiaoFu,@ChanPinMiaoShu,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyChanPin_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyChanPin_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyChanPin_Update
@ID int,
@OrderName varchar(50),
@ProductName varchar(50),
@ProductSerils varchar(50),
@GongYingShang varchar(50),
@ProductType varchar(50),
@XingHao varchar(50),
@DanWei varchar(50),
@DanJia numeric(18,2),
@ShuLiang numeric(18,2),
@ZongJia numeric(18,2),
@YiFuKuan numeric(18,2),
@QianKuanShu numeric(18,2),
@IFJiaoFu varchar(50),
@ChanPinMiaoShu varchar(5000),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPBuyChanPin] SET 
	[OrderName] = @OrderName,[ProductName] = @ProductName,[ProductSerils] = @ProductSerils,[GongYingShang] = @GongYingShang,[ProductType] = @ProductType,[XingHao] = @XingHao,[DanWei] = @DanWei,[DanJia] = @DanJia,[ShuLiang] = @ShuLiang,[ZongJia] = @ZongJia,[YiFuKuan] = @YiFuKuan,[QianKuanShu] = @QianKuanShu,[IFJiaoFu] = @IFJiaoFu,[ChanPinMiaoShu] = @ChanPinMiaoShu,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyChanPin_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyChanPin_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyChanPin_Delete
@ID int
 AS 
	DELETE [ERPBuyChanPin]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyChanPin_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyChanPin_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyChanPin_GetModel
@ID int
 AS 
	SELECT 
	ID,OrderName,ProductName,ProductSerils,GongYingShang,ProductType,XingHao,DanWei,DanJia,ShuLiang,ZongJia,YiFuKuan,QianKuanShu,IFJiaoFu,ChanPinMiaoShu,UserName,TimeStr,BackInfo
	 FROM [ERPBuyChanPin]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyChanPin_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyChanPin_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyChanPin_GetList
 AS 
	SELECT 
	ID,OrderName,ProductName,ProductSerils,GongYingShang,ProductType,XingHao,DanWei,DanJia,ShuLiang,ZongJia,YiFuKuan,QianKuanShu,IFJiaoFu,ChanPinMiaoShu,UserName,TimeStr,BackInfo
	 FROM [ERPBuyChanPin]

GO


/******************************************************************
* 表名：ERPBuyOrder
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyOrder_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyOrder_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyOrder_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPBuyOrder]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyOrder_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyOrder_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyOrder_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPBuyOrder] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyOrder_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyOrder_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyOrder_ADD
@ID int output,
@OrderName varchar(50),
@GongYingShangName varchar(50),
@Serils varchar(50),
@DingDanLeiXing varchar(50),
@DingDanMiaoShu varchar(5000),
@CreateDate datetime,
@LaiHuoDate datetime,
@TiXingDate datetime,
@ChuangJianRen varchar(50),
@FuZeRen varchar(50),
@FuJianList varchar(500),
@NowState varchar(50),
@ShenPiTongGuoRen varchar(50),
@BackInfo text,
@UserName varchar(50),
@TimeStr datetime,
@HTZJ float,
@YFFY float,
@SFJF nvarchar(50),
@SQFY float

 AS 
	INSERT INTO [ERPBuyOrder](
	[OrderName],[GongYingShangName],[Serils],[DingDanLeiXing],[DingDanMiaoShu],[CreateDate],[LaiHuoDate],[TiXingDate],[ChuangJianRen],[FuZeRen],[FuJianList],[NowState],[ShenPiTongGuoRen],[BackInfo],[UserName],[TimeStr],[HTZJ],[YFFY],[SFJF],[SQFY]
	)VALUES(
	@OrderName,@GongYingShangName,@Serils,@DingDanLeiXing,@DingDanMiaoShu,@CreateDate,@LaiHuoDate,@TiXingDate,@ChuangJianRen,@FuZeRen,@FuJianList,@NowState,@ShenPiTongGuoRen,@BackInfo,@UserName,@TimeStr,@HTZJ,@YFFY,@SFJF,@SQFY
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyOrder_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyOrder_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyOrder_Update
@ID int,
@OrderName varchar(50),
@GongYingShangName varchar(50),
@Serils varchar(50),
@DingDanLeiXing varchar(50),
@DingDanMiaoShu varchar(5000),
@CreateDate datetime,
@LaiHuoDate datetime,
@TiXingDate datetime,
@ChuangJianRen varchar(50),
@FuZeRen varchar(50),
@FuJianList varchar(500),
@NowState varchar(50),
@ShenPiTongGuoRen varchar(50),
@BackInfo text,
@UserName varchar(50),
@TimeStr datetime,
@HTZJ float,
@YFFY float,
@SFJF nvarchar(50),
@SQFY float
 AS 
	UPDATE [ERPBuyOrder] SET 
	[OrderName] = @OrderName,[GongYingShangName] = @GongYingShangName,[Serils] = @Serils,[DingDanLeiXing] = @DingDanLeiXing,[DingDanMiaoShu] = @DingDanMiaoShu,[CreateDate] = @CreateDate,[LaiHuoDate] = @LaiHuoDate,[TiXingDate] = @TiXingDate,[ChuangJianRen] = @ChuangJianRen,[FuZeRen] = @FuZeRen,[FuJianList] = @FuJianList,[NowState] = @NowState,[ShenPiTongGuoRen] = @ShenPiTongGuoRen,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr,[HTZJ] = @HTZJ,[YFFY] = @YFFY,[SFJF] = @SFJF,[SQFY] = @SQFY
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyOrder_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyOrder_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyOrder_Delete
@ID int
 AS 
	DELETE [ERPBuyOrder]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyOrder_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyOrder_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyOrder_GetModel
@ID int
 AS 
	SELECT 
	ID,OrderName,GongYingShangName,Serils,DingDanLeiXing,DingDanMiaoShu,CreateDate,LaiHuoDate,TiXingDate,ChuangJianRen,FuZeRen,FuJianList,NowState,ShenPiTongGuoRen,BackInfo,UserName,TimeStr,HTZJ,YFFY,SFJF,SQFY
	 FROM [ERPBuyOrder]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPBuyOrder_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPBuyOrder_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPBuyOrder_GetList
 AS 
	SELECT 
	ID,OrderName,GongYingShangName,Serils,DingDanLeiXing,DingDanMiaoShu,CreateDate,LaiHuoDate,TiXingDate,ChuangJianRen,FuZeRen,FuJianList,NowState,ShenPiTongGuoRen,BackInfo,UserName,TimeStr,HTZJ,YFFY,SFJF,SQFY
	 FROM [ERPBuyOrder]

GO


/******************************************************************
* 表名：ERPCarBaoXian
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoXian_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoXian_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoXian_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCarBaoXian]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoXian_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoXian_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoXian_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCarBaoXian] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoXian_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoXian_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoXian_ADD
@ID int output,
@CarName varchar(50),
@FeiYongName varchar(50),
@ProjectName varchar(50),
@BaoXianPrice varchar(50),
@BaoXianDate varchar(50),
@TiXingDate varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPCarBaoXian](
	[CarName],[FeiYongName],[ProjectName],[BaoXianPrice],[BaoXianDate],[TiXingDate],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@CarName,@FeiYongName,@ProjectName,@BaoXianPrice,@BaoXianDate,@TiXingDate,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoXian_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoXian_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoXian_Update
@ID int,
@CarName varchar(50),
@FeiYongName varchar(50),
@ProjectName varchar(50),
@BaoXianPrice varchar(50),
@BaoXianDate varchar(50),
@TiXingDate varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPCarBaoXian] SET 
	[CarName] = @CarName,[FeiYongName] = @FeiYongName,[ProjectName] = @ProjectName,[BaoXianPrice] = @BaoXianPrice,[BaoXianDate] = @BaoXianDate,[TiXingDate] = @TiXingDate,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoXian_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoXian_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoXian_Delete
@ID int
 AS 
	DELETE [ERPCarBaoXian]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoXian_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoXian_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoXian_GetModel
@ID int
 AS 
	SELECT 
	ID,CarName,FeiYongName,ProjectName,BaoXianPrice,BaoXianDate,TiXingDate,UserName,TimeStr,BackInfo
	 FROM [ERPCarBaoXian]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoXian_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoXian_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoXian_GetList
 AS 
	SELECT 
	ID,CarName,FeiYongName,ProjectName,BaoXianPrice,BaoXianDate,TiXingDate,UserName,TimeStr,BackInfo
	 FROM [ERPCarBaoXian]

GO


/******************************************************************
* 表名：ERPCarBaoYang
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoYang_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoYang_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoYang_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCarBaoYang]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoYang_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoYang_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoYang_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCarBaoYang] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoYang_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoYang_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoYang_ADD
@ID int output,
@CarName varchar(50),
@BYDate varchar(50),
@JingBanUser varchar(50),
@ZhuGuanUser varchar(50),
@BYQianLCBNum varchar(50),
@QiYouJinE varchar(50),
@BYJinE varchar(50),
@WeiXiuJinE varchar(50),
@OtherJinE varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPCarBaoYang](
	[CarName],[BYDate],[JingBanUser],[ZhuGuanUser],[BYQianLCBNum],[QiYouJinE],[BYJinE],[WeiXiuJinE],[OtherJinE],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@CarName,@BYDate,@JingBanUser,@ZhuGuanUser,@BYQianLCBNum,@QiYouJinE,@BYJinE,@WeiXiuJinE,@OtherJinE,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoYang_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoYang_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoYang_Update
@ID int,
@CarName varchar(50),
@BYDate varchar(50),
@JingBanUser varchar(50),
@ZhuGuanUser varchar(50),
@BYQianLCBNum varchar(50),
@QiYouJinE varchar(50),
@BYJinE varchar(50),
@WeiXiuJinE varchar(50),
@OtherJinE varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPCarBaoYang] SET 
	[CarName] = @CarName,[BYDate] = @BYDate,[JingBanUser] = @JingBanUser,[ZhuGuanUser] = @ZhuGuanUser,[BYQianLCBNum] = @BYQianLCBNum,[QiYouJinE] = @QiYouJinE,[BYJinE] = @BYJinE,[WeiXiuJinE] = @WeiXiuJinE,[OtherJinE] = @OtherJinE,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoYang_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoYang_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoYang_Delete
@ID int
 AS 
	DELETE [ERPCarBaoYang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoYang_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoYang_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoYang_GetModel
@ID int
 AS 
	SELECT 
	ID,CarName,BYDate,JingBanUser,ZhuGuanUser,BYQianLCBNum,QiYouJinE,BYJinE,WeiXiuJinE,OtherJinE,UserName,TimeStr,BackInfo
	 FROM [ERPCarBaoYang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarBaoYang_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarBaoYang_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarBaoYang_GetList
 AS 
	SELECT 
	ID,CarName,BYDate,JingBanUser,ZhuGuanUser,BYQianLCBNum,QiYouJinE,BYJinE,WeiXiuJinE,OtherJinE,UserName,TimeStr,BackInfo
	 FROM [ERPCarBaoYang]

GO


/******************************************************************
* 表名：ERPCarInfo
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarInfo_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarInfo_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarInfo_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCarInfo]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarInfo_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarInfo_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarInfo_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCarInfo] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarInfo_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarInfo_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarInfo_ADD
@ID int output,
@CarName varchar(50),
@CarPaiHao varchar(50),
@CarXingHao varchar(50),
@LeiXing varchar(50),
@SuoShuDep varchar(8000),
@DriverUser varchar(50),
@NowState varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPCarInfo](
	[CarName],[CarPaiHao],[CarXingHao],[LeiXing],[SuoShuDep],[DriverUser],[NowState],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@CarName,@CarPaiHao,@CarXingHao,@LeiXing,@SuoShuDep,@DriverUser,@NowState,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarInfo_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarInfo_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarInfo_Update
@ID int,
@CarName varchar(50),
@CarPaiHao varchar(50),
@CarXingHao varchar(50),
@LeiXing varchar(50),
@SuoShuDep varchar(8000),
@DriverUser varchar(50),
@NowState varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPCarInfo] SET 
	[CarName] = @CarName,[CarPaiHao] = @CarPaiHao,[CarXingHao] = @CarXingHao,[LeiXing] = @LeiXing,[SuoShuDep] = @SuoShuDep,[DriverUser] = @DriverUser,[NowState] = @NowState,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarInfo_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarInfo_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarInfo_Delete
@ID int
 AS 
	DELETE [ERPCarInfo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarInfo_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarInfo_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarInfo_GetModel
@ID int
 AS 
	SELECT 
	ID,CarName,CarPaiHao,CarXingHao,LeiXing,SuoShuDep,DriverUser,NowState,UserName,TimeStr,BackInfo
	 FROM [ERPCarInfo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarInfo_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarInfo_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarInfo_GetList
 AS 
	SELECT 
	ID,CarName,CarPaiHao,CarXingHao,LeiXing,SuoShuDep,DriverUser,NowState,UserName,TimeStr,BackInfo
	 FROM [ERPCarInfo]

GO


/******************************************************************
* 表名：ERPCarJiaYou
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarJiaYou_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarJiaYou_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarJiaYou_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCarJiaYou]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarJiaYou_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarJiaYou_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarJiaYou_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCarJiaYou] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarJiaYou_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarJiaYou_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarJiaYou_ADD
@ID int output,
@CarName varchar(50),
@JYDate varchar(50),
@JingBanUser varchar(50),
@DriverUser varchar(50),
@JiaYouAddress varchar(50),
@StartNum varchar(50),
@JiaYouNum varchar(50),
@YouFeiJinE varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPCarJiaYou](
	[CarName],[JYDate],[JingBanUser],[DriverUser],[JiaYouAddress],[StartNum],[JiaYouNum],[YouFeiJinE],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@CarName,@JYDate,@JingBanUser,@DriverUser,@JiaYouAddress,@StartNum,@JiaYouNum,@YouFeiJinE,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarJiaYou_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarJiaYou_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarJiaYou_Update
@ID int,
@CarName varchar(50),
@JYDate varchar(50),
@JingBanUser varchar(50),
@DriverUser varchar(50),
@JiaYouAddress varchar(50),
@StartNum varchar(50),
@JiaYouNum varchar(50),
@YouFeiJinE varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPCarJiaYou] SET 
	[CarName] = @CarName,[JYDate] = @JYDate,[JingBanUser] = @JingBanUser,[DriverUser] = @DriverUser,[JiaYouAddress] = @JiaYouAddress,[StartNum] = @StartNum,[JiaYouNum] = @JiaYouNum,[YouFeiJinE] = @YouFeiJinE,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarJiaYou_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarJiaYou_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarJiaYou_Delete
@ID int
 AS 
	DELETE [ERPCarJiaYou]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarJiaYou_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarJiaYou_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarJiaYou_GetModel
@ID int
 AS 
	SELECT 
	ID,CarName,JYDate,JingBanUser,DriverUser,JiaYouAddress,StartNum,JiaYouNum,YouFeiJinE,UserName,TimeStr,BackInfo
	 FROM [ERPCarJiaYou]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarJiaYou_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarJiaYou_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarJiaYou_GetList
 AS 
	SELECT 
	ID,CarName,JYDate,JingBanUser,DriverUser,JiaYouAddress,StartNum,JiaYouNum,YouFeiJinE,UserName,TimeStr,BackInfo
	 FROM [ERPCarJiaYou]

GO


/******************************************************************
* 表名：ERPCarLog
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarLog_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarLog_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarLog_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCarLog]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarLog_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarLog_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarLog_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCarLog] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarLog_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarLog_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarLog_ADD
@ID int output,
@CarName varchar(50),
@LogDate varchar(50),
@JingBanUser varchar(50),
@DriverUser varchar(50),
@ChuCheDate varchar(50),
@StartNum varchar(50),
@EndNum varchar(50),
@XingShiTime varchar(50),
@ShiYou varchar(5000),
@XingShiLiCheng varchar(50),
@YouHaoShu varchar(50),
@DaoDaAddress varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPCarLog](
	[CarName],[LogDate],[JingBanUser],[DriverUser],[ChuCheDate],[StartNum],[EndNum],[XingShiTime],[ShiYou],[XingShiLiCheng],[YouHaoShu],[DaoDaAddress],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@CarName,@LogDate,@JingBanUser,@DriverUser,@ChuCheDate,@StartNum,@EndNum,@XingShiTime,@ShiYou,@XingShiLiCheng,@YouHaoShu,@DaoDaAddress,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarLog_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarLog_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarLog_Update
@ID int,
@CarName varchar(50),
@LogDate varchar(50),
@JingBanUser varchar(50),
@DriverUser varchar(50),
@ChuCheDate varchar(50),
@StartNum varchar(50),
@EndNum varchar(50),
@XingShiTime varchar(50),
@ShiYou varchar(5000),
@XingShiLiCheng varchar(50),
@YouHaoShu varchar(50),
@DaoDaAddress varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPCarLog] SET 
	[CarName] = @CarName,[LogDate] = @LogDate,[JingBanUser] = @JingBanUser,[DriverUser] = @DriverUser,[ChuCheDate] = @ChuCheDate,[StartNum] = @StartNum,[EndNum] = @EndNum,[XingShiTime] = @XingShiTime,[ShiYou] = @ShiYou,[XingShiLiCheng] = @XingShiLiCheng,[YouHaoShu] = @YouHaoShu,[DaoDaAddress] = @DaoDaAddress,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarLog_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarLog_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarLog_Delete
@ID int
 AS 
	DELETE [ERPCarLog]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarLog_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarLog_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarLog_GetModel
@ID int
 AS 
	SELECT 
	ID,CarName,LogDate,JingBanUser,DriverUser,ChuCheDate,StartNum,EndNum,XingShiTime,ShiYou,XingShiLiCheng,YouHaoShu,DaoDaAddress,UserName,TimeStr,BackInfo
	 FROM [ERPCarLog]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarLog_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarLog_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarLog_GetList
 AS 
	SELECT 
	ID,CarName,LogDate,JingBanUser,DriverUser,ChuCheDate,StartNum,EndNum,XingShiTime,ShiYou,XingShiLiCheng,YouHaoShu,DaoDaAddress,UserName,TimeStr,BackInfo
	 FROM [ERPCarLog]

GO


/******************************************************************
* 表名：ERPCarShiYong
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarShiYong_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarShiYong_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarShiYong_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCarShiYong]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarShiYong_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarShiYong_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarShiYong_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCarShiYong] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarShiYong_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarShiYong_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarShiYong_ADD
@ID int output,
@CarName varchar(50),
@DriverUser varchar(50),
@YongCheUser varchar(50),
@YongCheBuMen varchar(50),
@QiShiTime varchar(50),
@JieShuTime varchar(50),
@MuDiDi varchar(50),
@LiCheng varchar(50),
@ShengQingUser varchar(50),
@DiaoDuUser varchar(50),
@ShengQingShiYou varchar(5000),
@NowState varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPCarShiYong](
	[CarName],[DriverUser],[YongCheUser],[YongCheBuMen],[QiShiTime],[JieShuTime],[MuDiDi],[LiCheng],[ShengQingUser],[DiaoDuUser],[ShengQingShiYou],[NowState],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@CarName,@DriverUser,@YongCheUser,@YongCheBuMen,@QiShiTime,@JieShuTime,@MuDiDi,@LiCheng,@ShengQingUser,@DiaoDuUser,@ShengQingShiYou,@NowState,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarShiYong_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarShiYong_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarShiYong_Update
@ID int,
@CarName varchar(50),
@DriverUser varchar(50),
@YongCheUser varchar(50),
@YongCheBuMen varchar(50),
@QiShiTime varchar(50),
@JieShuTime varchar(50),
@MuDiDi varchar(50),
@LiCheng varchar(50),
@ShengQingUser varchar(50),
@DiaoDuUser varchar(50),
@ShengQingShiYou varchar(5000),
@NowState varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPCarShiYong] SET 
	[CarName] = @CarName,[DriverUser] = @DriverUser,[YongCheUser] = @YongCheUser,[YongCheBuMen] = @YongCheBuMen,[QiShiTime] = @QiShiTime,[JieShuTime] = @JieShuTime,[MuDiDi] = @MuDiDi,[LiCheng] = @LiCheng,[ShengQingUser] = @ShengQingUser,[DiaoDuUser] = @DiaoDuUser,[ShengQingShiYou] = @ShengQingShiYou,[NowState] = @NowState,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarShiYong_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarShiYong_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarShiYong_Delete
@ID int
 AS 
	DELETE [ERPCarShiYong]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarShiYong_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarShiYong_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarShiYong_GetModel
@ID int
 AS 
	SELECT 
	ID,CarName,DriverUser,YongCheUser,YongCheBuMen,QiShiTime,JieShuTime,MuDiDi,LiCheng,ShengQingUser,DiaoDuUser,ShengQingShiYou,NowState,UserName,TimeStr,BackInfo
	 FROM [ERPCarShiYong]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarShiYong_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarShiYong_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarShiYong_GetList
 AS 
	SELECT 
	ID,CarName,DriverUser,YongCheUser,YongCheBuMen,QiShiTime,JieShuTime,MuDiDi,LiCheng,ShengQingUser,DiaoDuUser,ShengQingShiYou,NowState,UserName,TimeStr,BackInfo
	 FROM [ERPCarShiYong]

GO


/******************************************************************
* 表名：ERPCarWeiHu
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiHu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiHu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiHu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCarWeiHu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiHu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiHu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiHu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCarWeiHu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiHu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiHu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiHu_ADD
@ID int output,
@CarName varchar(50),
@WeiHuRiQi varchar(50),
@WeiHuLeiXing varchar(50),
@WeiHuYuanYin varchar(5000),
@JingBanUser varchar(50),
@WeiHuFeiYong varchar(50),
@NowState varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPCarWeiHu](
	[CarName],[WeiHuRiQi],[WeiHuLeiXing],[WeiHuYuanYin],[JingBanUser],[WeiHuFeiYong],[NowState],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@CarName,@WeiHuRiQi,@WeiHuLeiXing,@WeiHuYuanYin,@JingBanUser,@WeiHuFeiYong,@NowState,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiHu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiHu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiHu_Update
@ID int,
@CarName varchar(50),
@WeiHuRiQi varchar(50),
@WeiHuLeiXing varchar(50),
@WeiHuYuanYin varchar(5000),
@JingBanUser varchar(50),
@WeiHuFeiYong varchar(50),
@NowState varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPCarWeiHu] SET 
	[CarName] = @CarName,[WeiHuRiQi] = @WeiHuRiQi,[WeiHuLeiXing] = @WeiHuLeiXing,[WeiHuYuanYin] = @WeiHuYuanYin,[JingBanUser] = @JingBanUser,[WeiHuFeiYong] = @WeiHuFeiYong,[NowState] = @NowState,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiHu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiHu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiHu_Delete
@ID int
 AS 
	DELETE [ERPCarWeiHu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiHu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiHu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiHu_GetModel
@ID int
 AS 
	SELECT 
	ID,CarName,WeiHuRiQi,WeiHuLeiXing,WeiHuYuanYin,JingBanUser,WeiHuFeiYong,NowState,UserName,TimeStr,BackInfo
	 FROM [ERPCarWeiHu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiHu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiHu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiHu_GetList
 AS 
	SELECT 
	ID,CarName,WeiHuRiQi,WeiHuLeiXing,WeiHuYuanYin,JingBanUser,WeiHuFeiYong,NowState,UserName,TimeStr,BackInfo
	 FROM [ERPCarWeiHu]

GO


/******************************************************************
* 表名：ERPCarWeiZhang
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiZhang_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiZhang_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiZhang_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCarWeiZhang]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiZhang_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiZhang_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiZhang_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCarWeiZhang] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiZhang_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiZhang_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiZhang_ADD
@ID int output,
@CarName varchar(50),
@WZDate varchar(50),
@DriverUser varchar(50),
@WZAddress varchar(50),
@KouFenNum varchar(50),
@FKJinE varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPCarWeiZhang](
	[CarName],[WZDate],[DriverUser],[WZAddress],[KouFenNum],[FKJinE],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@CarName,@WZDate,@DriverUser,@WZAddress,@KouFenNum,@FKJinE,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiZhang_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiZhang_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiZhang_Update
@ID int,
@CarName varchar(50),
@WZDate varchar(50),
@DriverUser varchar(50),
@WZAddress varchar(50),
@KouFenNum varchar(50),
@FKJinE varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPCarWeiZhang] SET 
	[CarName] = @CarName,[WZDate] = @WZDate,[DriverUser] = @DriverUser,[WZAddress] = @WZAddress,[KouFenNum] = @KouFenNum,[FKJinE] = @FKJinE,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiZhang_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiZhang_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiZhang_Delete
@ID int
 AS 
	DELETE [ERPCarWeiZhang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiZhang_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiZhang_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiZhang_GetModel
@ID int
 AS 
	SELECT 
	ID,CarName,WZDate,DriverUser,WZAddress,KouFenNum,FKJinE,UserName,TimeStr,BackInfo
	 FROM [ERPCarWeiZhang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCarWeiZhang_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCarWeiZhang_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCarWeiZhang_GetList
 AS 
	SELECT 
	ID,CarName,WZDate,DriverUser,WZAddress,KouFenNum,FKJinE,UserName,TimeStr,BackInfo
	 FROM [ERPCarWeiZhang]

GO


/******************************************************************
* 表名：ERPContract
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContract_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContract_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContract_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPContract]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContract_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContract_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContract_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPContract] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContract_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContract_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContract_ADD
@ID int output,
@HeTongName varchar(200),
@HeTongSerils varchar(50),
@HeTongLeiXing varchar(50),
@QianYueKeHu varchar(200),
@HeTongMiaoShu varchar(8000),
@HeTongTiaoKuan varchar(8000),
@HeTongContent text,
@ShengXiaoDate datetime,
@ZhongZhiDate datetime,
@TiXingDate datetime,
@QianYueRenBuy varchar(50),
@QianYueRenSell varchar(50),
@CreateTime datetime,
@CreateUser varchar(50),
@FuJianList varchar(500),
@BackInfo varchar(8000),
@NowState varchar(50),
@HTZJ float,
@YFFY float,
@SFJF varchar(50),
@SQFY float

 AS 
	INSERT INTO [ERPContract](
	[HeTongName],[HeTongSerils],[HeTongLeiXing],[QianYueKeHu],[HeTongMiaoShu],[HeTongTiaoKuan],[HeTongContent],[ShengXiaoDate],[ZhongZhiDate],[TiXingDate],[QianYueRenBuy],[QianYueRenSell],[CreateTime],[CreateUser],[FuJianList],[BackInfo],[NowState],[HTZJ],[YFFY],[SFJF],[SQFY]
	)VALUES(
	@HeTongName,@HeTongSerils,@HeTongLeiXing,@QianYueKeHu,@HeTongMiaoShu,@HeTongTiaoKuan,@HeTongContent,@ShengXiaoDate,@ZhongZhiDate,@TiXingDate,@QianYueRenBuy,@QianYueRenSell,@CreateTime,@CreateUser,@FuJianList,@BackInfo,@NowState,@HTZJ,@YFFY,@SFJF,@SQFY
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContract_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContract_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContract_Update
@ID int,
@HeTongName varchar(200),
@HeTongSerils varchar(50),
@HeTongLeiXing varchar(50),
@QianYueKeHu varchar(200),
@HeTongMiaoShu varchar(8000),
@HeTongTiaoKuan varchar(8000),
@HeTongContent text,
@ShengXiaoDate datetime,
@ZhongZhiDate datetime,
@TiXingDate datetime,
@QianYueRenBuy varchar(50),
@QianYueRenSell varchar(50),
@CreateTime datetime,
@CreateUser varchar(50),
@FuJianList varchar(500),
@BackInfo varchar(8000),
@NowState varchar(50),
@HTZJ float,
@YFFY float,
@SFJF varchar(50),
@SQFY float
 AS 
	UPDATE [ERPContract] SET 
	[HeTongName] = @HeTongName,[HeTongSerils] = @HeTongSerils,[HeTongLeiXing] = @HeTongLeiXing,[QianYueKeHu] = @QianYueKeHu,[HeTongMiaoShu] = @HeTongMiaoShu,[HeTongTiaoKuan] = @HeTongTiaoKuan,[HeTongContent] = @HeTongContent,[ShengXiaoDate] = @ShengXiaoDate,[ZhongZhiDate] = @ZhongZhiDate,[TiXingDate] = @TiXingDate,[QianYueRenBuy] = @QianYueRenBuy,[QianYueRenSell] = @QianYueRenSell,[CreateTime] = @CreateTime,[CreateUser] = @CreateUser,[FuJianList] = @FuJianList,[BackInfo] = @BackInfo,[NowState] = @NowState,[HTZJ] = @HTZJ,[YFFY] = @YFFY,[SFJF] = @SFJF,[SQFY] = @SQFY
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContract_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContract_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContract_Delete
@ID int
 AS 
	DELETE [ERPContract]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContract_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContract_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContract_GetModel
@ID int
 AS 
	SELECT 
	ID,HeTongName,HeTongSerils,HeTongLeiXing,QianYueKeHu,HeTongMiaoShu,HeTongTiaoKuan,HeTongContent,ShengXiaoDate,ZhongZhiDate,TiXingDate,QianYueRenBuy,QianYueRenSell,CreateTime,CreateUser,FuJianList,BackInfo,NowState,HTZJ,YFFY,SFJF,SQFY
	 FROM [ERPContract]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContract_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContract_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContract_GetList
 AS 
	SELECT 
	ID,HeTongName,HeTongSerils,HeTongLeiXing,QianYueKeHu,HeTongMiaoShu,HeTongTiaoKuan,HeTongContent,ShengXiaoDate,ZhongZhiDate,TiXingDate,QianYueRenBuy,QianYueRenSell,CreateTime,CreateUser,FuJianList,BackInfo,NowState,HTZJ,YFFY,SFJF,SQFY
	 FROM [ERPContract]

GO


/******************************************************************
* 表名：ERPContractChanPin
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContractChanPin_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContractChanPin_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContractChanPin_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPContractChanPin]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContractChanPin_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContractChanPin_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContractChanPin_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPContractChanPin] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContractChanPin_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContractChanPin_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContractChanPin_ADD
@ID int output,
@HeTongName varchar(50),
@ChanPinName varchar(50),
@DanJia numeric(18,2),
@ShuLiang numeric(18,2),
@ZongJia numeric(18,2),
@YiFuKuan numeric(18,2),
@QianKuanShu numeric(18,2),
@IFJiaoFu varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPContractChanPin](
	[HeTongName],[ChanPinName],[DanJia],[ShuLiang],[ZongJia],[YiFuKuan],[QianKuanShu],[IFJiaoFu],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@HeTongName,@ChanPinName,@DanJia,@ShuLiang,@ZongJia,@YiFuKuan,@QianKuanShu,@IFJiaoFu,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContractChanPin_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContractChanPin_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContractChanPin_Update
@ID int,
@HeTongName varchar(50),
@ChanPinName varchar(50),
@DanJia numeric(18,2),
@ShuLiang numeric(18,2),
@ZongJia numeric(18,2),
@YiFuKuan numeric(18,2),
@QianKuanShu numeric(18,2),
@IFJiaoFu varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPContractChanPin] SET 
	[HeTongName] = @HeTongName,[ChanPinName] = @ChanPinName,[DanJia] = @DanJia,[ShuLiang] = @ShuLiang,[ZongJia] = @ZongJia,[YiFuKuan] = @YiFuKuan,[QianKuanShu] = @QianKuanShu,[IFJiaoFu] = @IFJiaoFu,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContractChanPin_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContractChanPin_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContractChanPin_Delete
@ID int
 AS 
	DELETE [ERPContractChanPin]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContractChanPin_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContractChanPin_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContractChanPin_GetModel
@ID int
 AS 
	SELECT 
	ID,HeTongName,ChanPinName,DanJia,ShuLiang,ZongJia,YiFuKuan,QianKuanShu,IFJiaoFu,UserName,TimeStr,BackInfo
	 FROM [ERPContractChanPin]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPContractChanPin_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPContractChanPin_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPContractChanPin_GetList
 AS 
	SELECT 
	ID,HeTongName,ChanPinName,DanJia,ShuLiang,ZongJia,YiFuKuan,QianKuanShu,IFJiaoFu,UserName,TimeStr,BackInfo
	 FROM [ERPContractChanPin]

GO


/******************************************************************
* 表名：ERPCrmSetting
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCrmSetting_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCrmSetting_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCrmSetting_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCrmSetting]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCrmSetting_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCrmSetting_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCrmSetting_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCrmSetting] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCrmSetting_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCrmSetting_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCrmSetting_ADD
@ID int output,
@TableName varchar(100),
@LieName varchar(100),
@CanShuName varchar(100)

 AS 
	INSERT INTO [ERPCrmSetting](
	[TableName],[LieName],[CanShuName]
	)VALUES(
	@TableName,@LieName,@CanShuName
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCrmSetting_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCrmSetting_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCrmSetting_Update
@ID int,
@TableName varchar(100),
@LieName varchar(100),
@CanShuName varchar(100)
 AS 
	UPDATE [ERPCrmSetting] SET 
	[TableName] = @TableName,[LieName] = @LieName,[CanShuName] = @CanShuName
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCrmSetting_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCrmSetting_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCrmSetting_Delete
@ID int
 AS 
	DELETE [ERPCrmSetting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCrmSetting_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCrmSetting_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCrmSetting_GetModel
@ID int
 AS 
	SELECT 
	ID,TableName,LieName,CanShuName
	 FROM [ERPCrmSetting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCrmSetting_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCrmSetting_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCrmSetting_GetList
 AS 
	SELECT 
	ID,TableName,LieName,CanShuName
	 FROM [ERPCrmSetting]

GO


/******************************************************************
* 表名：ERPCustomFuWu
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomFuWu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomFuWu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomFuWu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCustomFuWu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomFuWu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomFuWu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomFuWu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCustomFuWu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomFuWu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomFuWu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomFuWu_ADD
@ID int output,
@CustomName varchar(100),
@FuWuTitle varchar(500),
@FuWuType varchar(500),
@FuWuResult varchar(5000),
@FuWuTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)

 AS 
	INSERT INTO [ERPCustomFuWu](
	[CustomName],[FuWuTitle],[FuWuType],[FuWuResult],[FuWuTime],[UserName],[TimeStr],[IFShare],[CusBakA],[CusBakB],[CusBakC],[CusBakD],[CusBakE]
	)VALUES(
	@CustomName,@FuWuTitle,@FuWuType,@FuWuResult,@FuWuTime,@UserName,@TimeStr,@IFShare,@CusBakA,@CusBakB,@CusBakC,@CusBakD,@CusBakE
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomFuWu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomFuWu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomFuWu_Update
@ID int,
@CustomName varchar(100),
@FuWuTitle varchar(500),
@FuWuType varchar(500),
@FuWuResult varchar(5000),
@FuWuTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)
 AS 
	UPDATE [ERPCustomFuWu] SET 
	[CustomName] = @CustomName,[FuWuTitle] = @FuWuTitle,[FuWuType] = @FuWuType,[FuWuResult] = @FuWuResult,[FuWuTime] = @FuWuTime,[UserName] = @UserName,[TimeStr] = @TimeStr,[IFShare] = @IFShare,[CusBakA] = @CusBakA,[CusBakB] = @CusBakB,[CusBakC] = @CusBakC,[CusBakD] = @CusBakD,[CusBakE] = @CusBakE
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomFuWu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomFuWu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomFuWu_Delete
@ID int
 AS 
	DELETE [ERPCustomFuWu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomFuWu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomFuWu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomFuWu_GetModel
@ID int
 AS 
	SELECT 
	ID,CustomName,FuWuTitle,FuWuType,FuWuResult,FuWuTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPCustomFuWu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomFuWu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomFuWu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomFuWu_GetList
 AS 
	SELECT 
	ID,CustomName,FuWuTitle,FuWuType,FuWuResult,FuWuTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPCustomFuWu]

GO


/******************************************************************
* 表名：ERPCustomHuiFang
* 时间：2014/6/4 23:05:05
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomHuiFang_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomHuiFang_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomHuiFang_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCustomHuiFang]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomHuiFang_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomHuiFang_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomHuiFang_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCustomHuiFang] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomHuiFang_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomHuiFang_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomHuiFang_ADD
@ID int output,
@CustomName varchar(100),
@HuiFangTitle varchar(500),
@HuiFangType varchar(500),
@HuiFangResult varchar(5000),
@HuiFangTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)

 AS 
	INSERT INTO [ERPCustomHuiFang](
	[CustomName],[HuiFangTitle],[HuiFangType],[HuiFangResult],[HuiFangTime],[UserName],[TimeStr],[IFShare],[CusBakA],[CusBakB],[CusBakC],[CusBakD],[CusBakE]
	)VALUES(
	@CustomName,@HuiFangTitle,@HuiFangType,@HuiFangResult,@HuiFangTime,@UserName,@TimeStr,@IFShare,@CusBakA,@CusBakB,@CusBakC,@CusBakD,@CusBakE
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomHuiFang_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomHuiFang_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomHuiFang_Update
@ID int,
@CustomName varchar(100),
@HuiFangTitle varchar(500),
@HuiFangType varchar(500),
@HuiFangResult varchar(5000),
@HuiFangTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)
 AS 
	UPDATE [ERPCustomHuiFang] SET 
	[CustomName] = @CustomName,[HuiFangTitle] = @HuiFangTitle,[HuiFangType] = @HuiFangType,[HuiFangResult] = @HuiFangResult,[HuiFangTime] = @HuiFangTime,[UserName] = @UserName,[TimeStr] = @TimeStr,[IFShare] = @IFShare,[CusBakA] = @CusBakA,[CusBakB] = @CusBakB,[CusBakC] = @CusBakC,[CusBakD] = @CusBakD,[CusBakE] = @CusBakE
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomHuiFang_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomHuiFang_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomHuiFang_Delete
@ID int
 AS 
	DELETE [ERPCustomHuiFang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomHuiFang_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomHuiFang_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomHuiFang_GetModel
@ID int
 AS 
	SELECT 
	ID,CustomName,HuiFangTitle,HuiFangType,HuiFangResult,HuiFangTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPCustomHuiFang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomHuiFang_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomHuiFang_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:05
------------------------------------
CREATE PROCEDURE ERPCustomHuiFang_GetList
 AS 
	SELECT 
	ID,CustomName,HuiFangTitle,HuiFangType,HuiFangResult,HuiFangTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPCustomHuiFang]

GO


/******************************************************************
* 表名：ERPCustomInfo
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomInfo_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomInfo_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomInfo_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCustomInfo]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomInfo_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomInfo_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomInfo_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCustomInfo] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomInfo_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomInfo_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomInfo_ADD
@ID int output,
@CustomName varchar(200),
@CustomSerils varchar(100),
@ChargeMan varchar(100),
@Address varchar(500),
@UrlLink varchar(200),
@YouBian varchar(50),
@TelStr varchar(100),
@XingZhi varchar(50),
@LaiYuan varchar(50),
@QuYu varchar(50),
@ZhuangTai varchar(50),
@RenShu varchar(50),
@BanGongMianJi varchar(50),
@LeiBie varchar(50),
@JiBie varchar(50),
@YeWuFanWei varchar(200),
@HangYe varchar(100),
@MuQianWenTi varchar(500),
@YuJiDingDanDate varchar(100),
@BackInfoA varchar(8000),
@BackInfoB varchar(8000),
@BackInfoC varchar(8000),
@BackInfoD varchar(8000),
@TimeStr datetime,
@UserName varchar(50),
@DingDanCount varchar(50),
@YuJiTiXing varchar(50),
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000),
@NameEng varchar(50),
@FaRenDaiMa varchar(50),
@YingYeZhiZhao varchar(50),
@ZiBenE varchar(50),
@ZuZhiXingZhi varchar(50),
@YingYeChangSuo varchar(50),
@JingJi varchar(50),
@SheHuiGuanXi varchar(100),
@BenGongSiGuanXi varchar(50),
@JieShaoRen varchar(50),
@BaoZhengRen varchar(50),
@ShuiPiaoName varchar(50),
@DiZhiDianHua varchar(500),
@NaShuiDengJiHao varchar(50),
@KaiHuHangZhangHao varchar(200),
@JiaoYiFangShi varchar(50),
@ZhangQi varchar(50),
@FuKuanFangShi varchar(50),
@YunFeiChengDan varchar(50),
@CuXiaoFei varchar(50),
@GuangGaoFei varchar(50),
@YouDaiZheKou varchar(50),
@FuKuanTaiDu varchar(50),
@ShiFouDuiZhang varchar(50),
@DuiZhangShiJian varchar(50),
@ZuiJiaPaiFangShiJian varchar(50),
@ZuiJiaShouKuanShiJian varchar(50),
@QiTaGongYing varchar(500),
@ChangYongNaJia varchar(5000),
@GongSiYiJian varchar(500),
@ZiXin varchar(50),
@ZongJieLun varchar(50)

 AS 
	INSERT INTO [ERPCustomInfo](
	[CustomName],[CustomSerils],[ChargeMan],[Address],[UrlLink],[YouBian],[TelStr],[XingZhi],[LaiYuan],[QuYu],[ZhuangTai],[RenShu],[BanGongMianJi],[LeiBie],[JiBie],[YeWuFanWei],[HangYe],[MuQianWenTi],[YuJiDingDanDate],[BackInfoA],[BackInfoB],[BackInfoC],[BackInfoD],[TimeStr],[UserName],[DingDanCount],[YuJiTiXing],[IFShare],[CusBakA],[CusBakB],[CusBakC],[CusBakD],[CusBakE],[NameEng],[FaRenDaiMa],[YingYeZhiZhao],[ZiBenE],[ZuZhiXingZhi],[YingYeChangSuo],[JingJi],[SheHuiGuanXi],[BenGongSiGuanXi],[JieShaoRen],[BaoZhengRen],[ShuiPiaoName],[DiZhiDianHua],[NaShuiDengJiHao],[KaiHuHangZhangHao],[JiaoYiFangShi],[ZhangQi],[FuKuanFangShi],[YunFeiChengDan],[CuXiaoFei],[GuangGaoFei],[YouDaiZheKou],[FuKuanTaiDu],[ShiFouDuiZhang],[DuiZhangShiJian],[ZuiJiaPaiFangShiJian],[ZuiJiaShouKuanShiJian],[QiTaGongYing],[ChangYongNaJia],[GongSiYiJian],[ZiXin],[ZongJieLun]
	)VALUES(
	@CustomName,@CustomSerils,@ChargeMan,@Address,@UrlLink,@YouBian,@TelStr,@XingZhi,@LaiYuan,@QuYu,@ZhuangTai,@RenShu,@BanGongMianJi,@LeiBie,@JiBie,@YeWuFanWei,@HangYe,@MuQianWenTi,@YuJiDingDanDate,@BackInfoA,@BackInfoB,@BackInfoC,@BackInfoD,@TimeStr,@UserName,@DingDanCount,@YuJiTiXing,@IFShare,@CusBakA,@CusBakB,@CusBakC,@CusBakD,@CusBakE,@NameEng,@FaRenDaiMa,@YingYeZhiZhao,@ZiBenE,@ZuZhiXingZhi,@YingYeChangSuo,@JingJi,@SheHuiGuanXi,@BenGongSiGuanXi,@JieShaoRen,@BaoZhengRen,@ShuiPiaoName,@DiZhiDianHua,@NaShuiDengJiHao,@KaiHuHangZhangHao,@JiaoYiFangShi,@ZhangQi,@FuKuanFangShi,@YunFeiChengDan,@CuXiaoFei,@GuangGaoFei,@YouDaiZheKou,@FuKuanTaiDu,@ShiFouDuiZhang,@DuiZhangShiJian,@ZuiJiaPaiFangShiJian,@ZuiJiaShouKuanShiJian,@QiTaGongYing,@ChangYongNaJia,@GongSiYiJian,@ZiXin,@ZongJieLun
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomInfo_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomInfo_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomInfo_Update
@ID int,
@CustomName varchar(200),
@CustomSerils varchar(100),
@ChargeMan varchar(100),
@Address varchar(500),
@UrlLink varchar(200),
@YouBian varchar(50),
@TelStr varchar(100),
@XingZhi varchar(50),
@LaiYuan varchar(50),
@QuYu varchar(50),
@ZhuangTai varchar(50),
@RenShu varchar(50),
@BanGongMianJi varchar(50),
@LeiBie varchar(50),
@JiBie varchar(50),
@YeWuFanWei varchar(200),
@HangYe varchar(100),
@MuQianWenTi varchar(500),
@YuJiDingDanDate varchar(100),
@BackInfoA varchar(8000),
@BackInfoB varchar(8000),
@BackInfoC varchar(8000),
@BackInfoD varchar(8000),
@TimeStr datetime,
@UserName varchar(50),
@DingDanCount varchar(50),
@YuJiTiXing varchar(50),
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000),
@NameEng varchar(50),
@FaRenDaiMa varchar(50),
@YingYeZhiZhao varchar(50),
@ZiBenE varchar(50),
@ZuZhiXingZhi varchar(50),
@YingYeChangSuo varchar(50),
@JingJi varchar(50),
@SheHuiGuanXi varchar(100),
@BenGongSiGuanXi varchar(50),
@JieShaoRen varchar(50),
@BaoZhengRen varchar(50),
@ShuiPiaoName varchar(50),
@DiZhiDianHua varchar(500),
@NaShuiDengJiHao varchar(50),
@KaiHuHangZhangHao varchar(200),
@JiaoYiFangShi varchar(50),
@ZhangQi varchar(50),
@FuKuanFangShi varchar(50),
@YunFeiChengDan varchar(50),
@CuXiaoFei varchar(50),
@GuangGaoFei varchar(50),
@YouDaiZheKou varchar(50),
@FuKuanTaiDu varchar(50),
@ShiFouDuiZhang varchar(50),
@DuiZhangShiJian varchar(50),
@ZuiJiaPaiFangShiJian varchar(50),
@ZuiJiaShouKuanShiJian varchar(50),
@QiTaGongYing varchar(500),
@ChangYongNaJia varchar(5000),
@GongSiYiJian varchar(500),
@ZiXin varchar(50),
@ZongJieLun varchar(50)
 AS 
	UPDATE [ERPCustomInfo] SET 
	[CustomName] = @CustomName,[CustomSerils] = @CustomSerils,[ChargeMan] = @ChargeMan,[Address] = @Address,[UrlLink] = @UrlLink,[YouBian] = @YouBian,[TelStr] = @TelStr,[XingZhi] = @XingZhi,[LaiYuan] = @LaiYuan,[QuYu] = @QuYu,[ZhuangTai] = @ZhuangTai,[RenShu] = @RenShu,[BanGongMianJi] = @BanGongMianJi,[LeiBie] = @LeiBie,[JiBie] = @JiBie,[YeWuFanWei] = @YeWuFanWei,[HangYe] = @HangYe,[MuQianWenTi] = @MuQianWenTi,[YuJiDingDanDate] = @YuJiDingDanDate,[BackInfoA] = @BackInfoA,[BackInfoB] = @BackInfoB,[BackInfoC] = @BackInfoC,[BackInfoD] = @BackInfoD,[TimeStr] = @TimeStr,[UserName] = @UserName,[DingDanCount] = @DingDanCount,[YuJiTiXing] = @YuJiTiXing,[IFShare] = @IFShare,[CusBakA] = @CusBakA,[CusBakB] = @CusBakB,[CusBakC] = @CusBakC,[CusBakD] = @CusBakD,[CusBakE] = @CusBakE,[NameEng] = @NameEng,[FaRenDaiMa] = @FaRenDaiMa,[YingYeZhiZhao] = @YingYeZhiZhao,[ZiBenE] = @ZiBenE,[ZuZhiXingZhi] = @ZuZhiXingZhi,[YingYeChangSuo] = @YingYeChangSuo,[JingJi] = @JingJi,[SheHuiGuanXi] = @SheHuiGuanXi,[BenGongSiGuanXi] = @BenGongSiGuanXi,[JieShaoRen] = @JieShaoRen,[BaoZhengRen] = @BaoZhengRen,[ShuiPiaoName] = @ShuiPiaoName,[DiZhiDianHua] = @DiZhiDianHua,[NaShuiDengJiHao] = @NaShuiDengJiHao,[KaiHuHangZhangHao] = @KaiHuHangZhangHao,[JiaoYiFangShi] = @JiaoYiFangShi,[ZhangQi] = @ZhangQi,[FuKuanFangShi] = @FuKuanFangShi,[YunFeiChengDan] = @YunFeiChengDan,[CuXiaoFei] = @CuXiaoFei,[GuangGaoFei] = @GuangGaoFei,[YouDaiZheKou] = @YouDaiZheKou,[FuKuanTaiDu] = @FuKuanTaiDu,[ShiFouDuiZhang] = @ShiFouDuiZhang,[DuiZhangShiJian] = @DuiZhangShiJian,[ZuiJiaPaiFangShiJian] = @ZuiJiaPaiFangShiJian,[ZuiJiaShouKuanShiJian] = @ZuiJiaShouKuanShiJian,[QiTaGongYing] = @QiTaGongYing,[ChangYongNaJia] = @ChangYongNaJia,[GongSiYiJian] = @GongSiYiJian,[ZiXin] = @ZiXin,[ZongJieLun] = @ZongJieLun
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomInfo_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomInfo_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomInfo_Delete
@ID int
 AS 
	DELETE [ERPCustomInfo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomInfo_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomInfo_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomInfo_GetModel
@ID int
 AS 
	SELECT 
	ID,CustomName,CustomSerils,ChargeMan,Address,UrlLink,YouBian,TelStr,XingZhi,LaiYuan,QuYu,ZhuangTai,RenShu,BanGongMianJi,LeiBie,JiBie,YeWuFanWei,HangYe,MuQianWenTi,YuJiDingDanDate,BackInfoA,BackInfoB,BackInfoC,BackInfoD,TimeStr,UserName,DingDanCount,YuJiTiXing,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE,NameEng,FaRenDaiMa,YingYeZhiZhao,ZiBenE,ZuZhiXingZhi,YingYeChangSuo,JingJi,SheHuiGuanXi,BenGongSiGuanXi,JieShaoRen,BaoZhengRen,ShuiPiaoName,DiZhiDianHua,NaShuiDengJiHao,KaiHuHangZhangHao,JiaoYiFangShi,ZhangQi,FuKuanFangShi,YunFeiChengDan,CuXiaoFei,GuangGaoFei,YouDaiZheKou,FuKuanTaiDu,ShiFouDuiZhang,DuiZhangShiJian,ZuiJiaPaiFangShiJian,ZuiJiaShouKuanShiJian,QiTaGongYing,ChangYongNaJia,GongSiYiJian,ZiXin,ZongJieLun
	 FROM [ERPCustomInfo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomInfo_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomInfo_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomInfo_GetList
 AS 
	SELECT 
	ID,CustomName,CustomSerils,ChargeMan,Address,UrlLink,YouBian,TelStr,XingZhi,LaiYuan,QuYu,ZhuangTai,RenShu,BanGongMianJi,LeiBie,JiBie,YeWuFanWei,HangYe,MuQianWenTi,YuJiDingDanDate,BackInfoA,BackInfoB,BackInfoC,BackInfoD,TimeStr,UserName,DingDanCount,YuJiTiXing,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE,NameEng,FaRenDaiMa,YingYeZhiZhao,ZiBenE,ZuZhiXingZhi,YingYeChangSuo,JingJi,SheHuiGuanXi,BenGongSiGuanXi,JieShaoRen,BaoZhengRen,ShuiPiaoName,DiZhiDianHua,NaShuiDengJiHao,KaiHuHangZhangHao,JiaoYiFangShi,ZhangQi,FuKuanFangShi,YunFeiChengDan,CuXiaoFei,GuangGaoFei,YouDaiZheKou,FuKuanTaiDu,ShiFouDuiZhang,DuiZhangShiJian,ZuiJiaPaiFangShiJian,ZuiJiaShouKuanShiJian,QiTaGongYing,ChangYongNaJia,GongSiYiJian,ZiXin,ZongJieLun
	 FROM [ERPCustomInfo]

GO


/******************************************************************
* 表名：ERPCustomNeed
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomNeed_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomNeed_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomNeed_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCustomNeed]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomNeed_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomNeed_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomNeed_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCustomNeed] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomNeed_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomNeed_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomNeed_ADD
@ID int output,
@CustomName varchar(100),
@NeedContent varchar(8000),
@NeedNow varchar(5000),
@NeedProduct varchar(5000),
@NeedTime varchar(500),
@NeedLike varchar(500),
@JingZhengDuiShou varchar(500),
@HeZuoYiYuan varchar(500),
@HeZuoJiLv varchar(500),
@NeedZhangAi varchar(5000),
@BackInfo varchar(8000),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)

 AS 
	INSERT INTO [ERPCustomNeed](
	[CustomName],[NeedContent],[NeedNow],[NeedProduct],[NeedTime],[NeedLike],[JingZhengDuiShou],[HeZuoYiYuan],[HeZuoJiLv],[NeedZhangAi],[BackInfo],[UserName],[TimeStr],[IFShare],[CusBakA],[CusBakB],[CusBakC],[CusBakD],[CusBakE]
	)VALUES(
	@CustomName,@NeedContent,@NeedNow,@NeedProduct,@NeedTime,@NeedLike,@JingZhengDuiShou,@HeZuoYiYuan,@HeZuoJiLv,@NeedZhangAi,@BackInfo,@UserName,@TimeStr,@IFShare,@CusBakA,@CusBakB,@CusBakC,@CusBakD,@CusBakE
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomNeed_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomNeed_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomNeed_Update
@ID int,
@CustomName varchar(100),
@NeedContent varchar(8000),
@NeedNow varchar(5000),
@NeedProduct varchar(5000),
@NeedTime varchar(500),
@NeedLike varchar(500),
@JingZhengDuiShou varchar(500),
@HeZuoYiYuan varchar(500),
@HeZuoJiLv varchar(500),
@NeedZhangAi varchar(5000),
@BackInfo varchar(8000),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)
 AS 
	UPDATE [ERPCustomNeed] SET 
	[CustomName] = @CustomName,[NeedContent] = @NeedContent,[NeedNow] = @NeedNow,[NeedProduct] = @NeedProduct,[NeedTime] = @NeedTime,[NeedLike] = @NeedLike,[JingZhengDuiShou] = @JingZhengDuiShou,[HeZuoYiYuan] = @HeZuoYiYuan,[HeZuoJiLv] = @HeZuoJiLv,[NeedZhangAi] = @NeedZhangAi,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr,[IFShare] = @IFShare,[CusBakA] = @CusBakA,[CusBakB] = @CusBakB,[CusBakC] = @CusBakC,[CusBakD] = @CusBakD,[CusBakE] = @CusBakE
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomNeed_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomNeed_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomNeed_Delete
@ID int
 AS 
	DELETE [ERPCustomNeed]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomNeed_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomNeed_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomNeed_GetModel
@ID int
 AS 
	SELECT 
	ID,CustomName,NeedContent,NeedNow,NeedProduct,NeedTime,NeedLike,JingZhengDuiShou,HeZuoYiYuan,HeZuoJiLv,NeedZhangAi,BackInfo,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPCustomNeed]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCustomNeed_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCustomNeed_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCustomNeed_GetList
 AS 
	SELECT 
	ID,CustomName,NeedContent,NeedNow,NeedProduct,NeedTime,NeedLike,JingZhengDuiShou,HeZuoYiYuan,HeZuoJiLv,NeedZhangAi,BackInfo,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPCustomNeed]

GO


/******************************************************************
* 表名：ERPCYDIC
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCYDIC_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCYDIC_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCYDIC_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPCYDIC]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCYDIC_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCYDIC_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCYDIC_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPCYDIC] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCYDIC_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCYDIC_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCYDIC_ADD
@ID int output,
@DicName varchar(50),
@Backinfo varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPCYDIC](
	[DicName],[Backinfo],[UserName],[TimeStr]
	)VALUES(
	@DicName,@Backinfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCYDIC_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCYDIC_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCYDIC_Update
@ID int,
@DicName varchar(50),
@Backinfo varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPCYDIC] SET 
	[DicName] = @DicName,[Backinfo] = @Backinfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCYDIC_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCYDIC_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCYDIC_Delete
@ID int
 AS 
	DELETE [ERPCYDIC]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCYDIC_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCYDIC_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCYDIC_GetModel
@ID int
 AS 
	SELECT 
	ID,DicName,Backinfo,UserName,TimeStr
	 FROM [ERPCYDIC]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPCYDIC_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPCYDIC_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPCYDIC_GetList
 AS 
	SELECT 
	ID,DicName,Backinfo,UserName,TimeStr
	 FROM [ERPCYDIC]

GO


/******************************************************************
* 表名：ERPDangAn
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDangAn_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDangAn_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDangAn_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPDangAn]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDangAn_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDangAn_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDangAn_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPDangAn] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDangAn_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDangAn_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDangAn_ADD
@ID int output,
@FileName varchar(50),
@JuanKuName varchar(50),
@FileSerils varchar(50),
@FileTitle varchar(50),
@FaWenDanWei varchar(50),
@FaWenDate varchar(50),
@MiJi varchar(50),
@JingJi varchar(50),
@TypeStr varchar(50),
@GongWenType varchar(50),
@FilePage varchar(50),
@FuJianList varchar(5000),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime,
@IFDel varchar(50)

 AS 
	INSERT INTO [ERPDangAn](
	[FileName],[JuanKuName],[FileSerils],[FileTitle],[FaWenDanWei],[FaWenDate],[MiJi],[JingJi],[TypeStr],[GongWenType],[FilePage],[FuJianList],[BackInfo],[UserName],[TimeStr],[IFDel]
	)VALUES(
	@FileName,@JuanKuName,@FileSerils,@FileTitle,@FaWenDanWei,@FaWenDate,@MiJi,@JingJi,@TypeStr,@GongWenType,@FilePage,@FuJianList,@BackInfo,@UserName,@TimeStr,@IFDel
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDangAn_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDangAn_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDangAn_Update
@ID int,
@FileName varchar(50),
@JuanKuName varchar(50),
@FileSerils varchar(50),
@FileTitle varchar(50),
@FaWenDanWei varchar(50),
@FaWenDate varchar(50),
@MiJi varchar(50),
@JingJi varchar(50),
@TypeStr varchar(50),
@GongWenType varchar(50),
@FilePage varchar(50),
@FuJianList varchar(5000),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime,
@IFDel varchar(50)
 AS 
	UPDATE [ERPDangAn] SET 
	[FileName] = @FileName,[JuanKuName] = @JuanKuName,[FileSerils] = @FileSerils,[FileTitle] = @FileTitle,[FaWenDanWei] = @FaWenDanWei,[FaWenDate] = @FaWenDate,[MiJi] = @MiJi,[JingJi] = @JingJi,[TypeStr] = @TypeStr,[GongWenType] = @GongWenType,[FilePage] = @FilePage,[FuJianList] = @FuJianList,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr,[IFDel] = @IFDel
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDangAn_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDangAn_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDangAn_Delete
@ID int
 AS 
	DELETE [ERPDangAn]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDangAn_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDangAn_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDangAn_GetModel
@ID int
 AS 
	SELECT 
	ID,FileName,JuanKuName,FileSerils,FileTitle,FaWenDanWei,FaWenDate,MiJi,JingJi,TypeStr,GongWenType,FilePage,FuJianList,BackInfo,UserName,TimeStr,IFDel
	 FROM [ERPDangAn]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDangAn_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDangAn_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDangAn_GetList
 AS 
	SELECT 
	ID,FileName,JuanKuName,FileSerils,FileTitle,FaWenDanWei,FaWenDate,MiJi,JingJi,TypeStr,GongWenType,FilePage,FuJianList,BackInfo,UserName,TimeStr,IFDel
	 FROM [ERPDangAn]

GO


/******************************************************************
* 表名：ERPDanWeiInfo
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDanWeiInfo_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDanWeiInfo_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDanWeiInfo_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPDanWeiInfo]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDanWeiInfo_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDanWeiInfo_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDanWeiInfo_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPDanWeiInfo] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDanWeiInfo_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDanWeiInfo_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDanWeiInfo_ADD
@ID int output,
@DanWeiName varchar(100),
@Tel varchar(100),
@Fax varchar(100),
@YouBian varchar(50),
@Address varchar(500),
@WebUrl varchar(200),
@Email varchar(100),
@KaiHuHang varchar(100),
@ZhangHao varchar(100)

 AS 
	INSERT INTO [ERPDanWeiInfo](
	[DanWeiName],[Tel],[Fax],[YouBian],[Address],[WebUrl],[Email],[KaiHuHang],[ZhangHao]
	)VALUES(
	@DanWeiName,@Tel,@Fax,@YouBian,@Address,@WebUrl,@Email,@KaiHuHang,@ZhangHao
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDanWeiInfo_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDanWeiInfo_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDanWeiInfo_Update
@ID int,
@DanWeiName varchar(100),
@Tel varchar(100),
@Fax varchar(100),
@YouBian varchar(50),
@Address varchar(500),
@WebUrl varchar(200),
@Email varchar(100),
@KaiHuHang varchar(100),
@ZhangHao varchar(100)
 AS 
	UPDATE [ERPDanWeiInfo] SET 
	[DanWeiName] = @DanWeiName,[Tel] = @Tel,[Fax] = @Fax,[YouBian] = @YouBian,[Address] = @Address,[WebUrl] = @WebUrl,[Email] = @Email,[KaiHuHang] = @KaiHuHang,[ZhangHao] = @ZhangHao
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDanWeiInfo_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDanWeiInfo_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDanWeiInfo_Delete
@ID int
 AS 
	DELETE [ERPDanWeiInfo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDanWeiInfo_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDanWeiInfo_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDanWeiInfo_GetModel
@ID int
 AS 
	SELECT 
	ID,DanWeiName,Tel,Fax,YouBian,Address,WebUrl,Email,KaiHuHang,ZhangHao
	 FROM [ERPDanWeiInfo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPDanWeiInfo_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPDanWeiInfo_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPDanWeiInfo_GetList
 AS 
	SELECT 
	ID,DanWeiName,Tel,Fax,YouBian,Address,WebUrl,Email,KaiHuHang,ZhangHao
	 FROM [ERPDanWeiInfo]

GO


/******************************************************************
* 表名：ERPFileList
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFileList_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFileList_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFileList_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPFileList]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFileList_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFileList_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFileList_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPFileList] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFileList_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFileList_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFileList_ADD
@ID int output,
@FileName varchar(500),
@BianHao varchar(50),
@BackInfo text,
@DaXiao int,
@FileType varchar(50),
@DirID int,
@ShangChuanTime datetime,
@FilePath varchar(200),
@UserName varchar(50),
@IFDel varchar(50),
@TypeName varchar(50),
@IfShare varchar(50),
@DirOrFile int,
@CanAdd varchar(5000),
@CanMod varchar(5000),
@CanDel varchar(5000),
@CanView varchar(5000)

 AS 
	INSERT INTO [ERPFileList](
	[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]
	)VALUES(
	@FileName,@BianHao,@BackInfo,@DaXiao,@FileType,@DirID,@ShangChuanTime,@FilePath,@UserName,@IFDel,@TypeName,@IfShare,@DirOrFile,@CanAdd,@CanMod,@CanDel,@CanView
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFileList_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFileList_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFileList_Update
@ID int,
@FileName varchar(500),
@BianHao varchar(50),
@BackInfo text,
@DaXiao int,
@FileType varchar(50),
@DirID int,
@ShangChuanTime datetime,
@FilePath varchar(200),
@UserName varchar(50),
@IFDel varchar(50),
@TypeName varchar(50),
@IfShare varchar(50),
@DirOrFile int,
@CanAdd varchar(5000),
@CanMod varchar(5000),
@CanDel varchar(5000),
@CanView varchar(5000)
 AS 
	UPDATE [ERPFileList] SET 
	[FileName] = @FileName,[BianHao] = @BianHao,[BackInfo] = @BackInfo,[DaXiao] = @DaXiao,[FileType] = @FileType,[DirID] = @DirID,[ShangChuanTime] = @ShangChuanTime,[FilePath] = @FilePath,[UserName] = @UserName,[IFDel] = @IFDel,[TypeName] = @TypeName,[IfShare] = @IfShare,[DirOrFile] = @DirOrFile,[CanAdd] = @CanAdd,[CanMod] = @CanMod,[CanDel] = @CanDel,[CanView] = @CanView
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFileList_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFileList_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFileList_Delete
@ID int
 AS 
	DELETE [ERPFileList]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFileList_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFileList_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFileList_GetModel
@ID int
 AS 
	SELECT 
	ID,FileName,BianHao,BackInfo,DaXiao,FileType,DirID,ShangChuanTime,FilePath,UserName,IFDel,TypeName,IfShare,DirOrFile,CanAdd,CanMod,CanDel,CanView
	 FROM [ERPFileList]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFileList_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFileList_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFileList_GetList
 AS 
	SELECT 
	ID,FileName,BianHao,BackInfo,DaXiao,FileType,DirID,ShangChuanTime,FilePath,UserName,IFDel,TypeName,IfShare,DirOrFile,CanAdd,CanMod,CanDel,CanView
	 FROM [ERPFileList]

GO


/******************************************************************
* 表名：ERPFKJH
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFKJH_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFKJH_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFKJH_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPFKJH]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFKJH_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFKJH_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFKJH_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPFKJH] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFKJH_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFKJH_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFKJH_ADD
@ID int output,
@HeTongName varchar(200),
@GYS varchar(200),
@DaoKuanDate datetime,
@TiXingDate datetime,
@CreateTime datetime,
@CreateUser varchar(50),
@BackInfo varchar(8000),
@NowState varchar(50)

 AS 
	INSERT INTO [ERPFKJH](
	[HeTongName],[GYS],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[BackInfo],[NowState]
	)VALUES(
	@HeTongName,@GYS,@DaoKuanDate,@TiXingDate,@CreateTime,@CreateUser,@BackInfo,@NowState
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFKJH_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFKJH_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFKJH_Update
@ID int,
@HeTongName varchar(200),
@GYS varchar(200),
@DaoKuanDate datetime,
@TiXingDate datetime,
@CreateTime datetime,
@CreateUser varchar(50),
@BackInfo varchar(8000),
@NowState varchar(50)
 AS 
	UPDATE [ERPFKJH] SET 
	[HeTongName] = @HeTongName,[GYS] = @GYS,[DaoKuanDate] = @DaoKuanDate,[TiXingDate] = @TiXingDate,[CreateTime] = @CreateTime,[CreateUser] = @CreateUser,[BackInfo] = @BackInfo,[NowState] = @NowState
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFKJH_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFKJH_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFKJH_Delete
@ID int
 AS 
	DELETE [ERPFKJH]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFKJH_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFKJH_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFKJH_GetModel
@ID int
 AS 
	SELECT 
	ID,HeTongName,GYS,DaoKuanDate,TiXingDate,CreateTime,CreateUser,BackInfo,NowState
	 FROM [ERPFKJH]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPFKJH_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPFKJH_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPFKJH_GetList
 AS 
	SELECT 
	ID,HeTongName,GYS,DaoKuanDate,TiXingDate,CreateTime,CreateUser,BackInfo,NowState
	 FROM [ERPFKJH]

GO


/******************************************************************
* 表名：ERPGongGao
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGongGao_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGongGao_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGongGao_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPGongGao]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGongGao_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGongGao_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGongGao_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPGongGao] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGongGao_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGongGao_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGongGao_ADD
@ID int output,
@TitleStr varchar(500),
@TimeStr datetime,
@UserName varchar(50),
@UserBuMen varchar(5000),
@FuJian varchar(2000),
@ContentStr text,
@TypeStr varchar(50)

 AS 
	INSERT INTO [ERPGongGao](
	[TitleStr],[TimeStr],[UserName],[UserBuMen],[FuJian],[ContentStr],[TypeStr]
	)VALUES(
	@TitleStr,@TimeStr,@UserName,@UserBuMen,@FuJian,@ContentStr,@TypeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGongGao_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGongGao_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGongGao_Update
@ID int,
@TitleStr varchar(500),
@TimeStr datetime,
@UserName varchar(50),
@UserBuMen varchar(5000),
@FuJian varchar(2000),
@ContentStr text,
@TypeStr varchar(50)
 AS 
	UPDATE [ERPGongGao] SET 
	[TitleStr] = @TitleStr,[TimeStr] = @TimeStr,[UserName] = @UserName,[UserBuMen] = @UserBuMen,[FuJian] = @FuJian,[ContentStr] = @ContentStr,[TypeStr] = @TypeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGongGao_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGongGao_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGongGao_Delete
@ID int
 AS 
	DELETE [ERPGongGao]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGongGao_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGongGao_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGongGao_GetModel
@ID int
 AS 
	SELECT 
	ID,TitleStr,TimeStr,UserName,UserBuMen,FuJian,ContentStr,TypeStr
	 FROM [ERPGongGao]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGongGao_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGongGao_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGongGao_GetList
 AS 
	SELECT 
	ID,TitleStr,TimeStr,UserName,UserBuMen,FuJian,ContentStr,TypeStr
	 FROM [ERPGongGao]

GO


/******************************************************************
* 表名：ERPGuDing
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDing_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDing_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDing_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPGuDing]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDing_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDing_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDing_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPGuDing] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDing_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDing_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDing_ADD
@ID int output,
@GDName varchar(50),
@GDSerils varchar(50),
@GDType varchar(50),
@SuoShuBuMen varchar(50),
@GDAllCount varchar(50),
@NowCount varchar(50),
@NianXian varchar(50),
@GDXingZhi varchar(50),
@QiYongDate varchar(50),
@BaoGuanUser varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo text

 AS 
	INSERT INTO [ERPGuDing](
	[GDName],[GDSerils],[GDType],[SuoShuBuMen],[GDAllCount],[NowCount],[NianXian],[GDXingZhi],[QiYongDate],[BaoGuanUser],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@GDName,@GDSerils,@GDType,@SuoShuBuMen,@GDAllCount,@NowCount,@NianXian,@GDXingZhi,@QiYongDate,@BaoGuanUser,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDing_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDing_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDing_Update
@ID int,
@GDName varchar(50),
@GDSerils varchar(50),
@GDType varchar(50),
@SuoShuBuMen varchar(50),
@GDAllCount varchar(50),
@NowCount varchar(50),
@NianXian varchar(50),
@GDXingZhi varchar(50),
@QiYongDate varchar(50),
@BaoGuanUser varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo text
 AS 
	UPDATE [ERPGuDing] SET 
	[GDName] = @GDName,[GDSerils] = @GDSerils,[GDType] = @GDType,[SuoShuBuMen] = @SuoShuBuMen,[GDAllCount] = @GDAllCount,[NowCount] = @NowCount,[NianXian] = @NianXian,[GDXingZhi] = @GDXingZhi,[QiYongDate] = @QiYongDate,[BaoGuanUser] = @BaoGuanUser,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDing_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDing_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDing_Delete
@ID int
 AS 
	DELETE [ERPGuDing]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDing_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDing_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDing_GetModel
@ID int
 AS 
	SELECT 
	ID,GDName,GDSerils,GDType,SuoShuBuMen,GDAllCount,NowCount,NianXian,GDXingZhi,QiYongDate,BaoGuanUser,UserName,TimeStr,BackInfo
	 FROM [ERPGuDing]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDing_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDing_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDing_GetList
 AS 
	SELECT 
	ID,GDName,GDSerils,GDType,SuoShuBuMen,GDAllCount,NowCount,NianXian,GDXingZhi,QiYongDate,BaoGuanUser,UserName,TimeStr,BackInfo
	 FROM [ERPGuDing]

GO


/******************************************************************
* 表名：ERPGuDingJiLu
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDingJiLu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDingJiLu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDingJiLu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPGuDingJiLu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDingJiLu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDingJiLu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDingJiLu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPGuDingJiLu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDingJiLu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDingJiLu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDingJiLu_ADD
@ID int output,
@GDName varchar(50),
@ZJType varchar(50),
@ZJDate varchar(50),
@ZJJinE varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPGuDingJiLu](
	[GDName],[ZJType],[ZJDate],[ZJJinE],[UserName],[TimeStr],[BackInfo]
	)VALUES(
	@GDName,@ZJType,@ZJDate,@ZJJinE,@UserName,@TimeStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDingJiLu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDingJiLu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDingJiLu_Update
@ID int,
@GDName varchar(50),
@ZJType varchar(50),
@ZJDate varchar(50),
@ZJJinE varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPGuDingJiLu] SET 
	[GDName] = @GDName,[ZJType] = @ZJType,[ZJDate] = @ZJDate,[ZJJinE] = @ZJJinE,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDingJiLu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDingJiLu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDingJiLu_Delete
@ID int
 AS 
	DELETE [ERPGuDingJiLu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDingJiLu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDingJiLu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDingJiLu_GetModel
@ID int
 AS 
	SELECT 
	ID,GDName,ZJType,ZJDate,ZJJinE,UserName,TimeStr,BackInfo
	 FROM [ERPGuDingJiLu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPGuDingJiLu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPGuDingJiLu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPGuDingJiLu_GetList
 AS 
	SELECT 
	ID,GDName,ZJType,ZJDate,ZJJinE,UserName,TimeStr,BackInfo
	 FROM [ERPGuDingJiLu]

GO


/******************************************************************
* 表名：ERPHuiBao
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiBao_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiBao_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiBao_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPHuiBao]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiBao_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiBao_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiBao_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPHuiBao] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiBao_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiBao_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiBao_ADD
@ID int output,
@TitleStr varchar(500),
@ContentStr text,
@FuJianStr varchar(2000),
@UserName varchar(100),
@CanLookUser varchar(8000),
@TimeStr datetime

 AS 
	INSERT INTO [ERPHuiBao](
	[TitleStr],[ContentStr],[FuJianStr],[UserName],[CanLookUser],[TimeStr]
	)VALUES(
	@TitleStr,@ContentStr,@FuJianStr,@UserName,@CanLookUser,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiBao_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiBao_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiBao_Update
@ID int,
@TitleStr varchar(500),
@ContentStr text,
@FuJianStr varchar(2000),
@UserName varchar(100),
@CanLookUser varchar(8000),
@TimeStr datetime
 AS 
	UPDATE [ERPHuiBao] SET 
	[TitleStr] = @TitleStr,[ContentStr] = @ContentStr,[FuJianStr] = @FuJianStr,[UserName] = @UserName,[CanLookUser] = @CanLookUser,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiBao_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiBao_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiBao_Delete
@ID int
 AS 
	DELETE [ERPHuiBao]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiBao_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiBao_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiBao_GetModel
@ID int
 AS 
	SELECT 
	ID,TitleStr,ContentStr,FuJianStr,UserName,CanLookUser,TimeStr
	 FROM [ERPHuiBao]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiBao_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiBao_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiBao_GetList
 AS 
	SELECT 
	ID,TitleStr,ContentStr,FuJianStr,UserName,CanLookUser,TimeStr
	 FROM [ERPHuiBao]

GO


/******************************************************************
* 表名：ERPHuiYuan
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiYuan_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiYuan_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiYuan_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPHuiYuan]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiYuan_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiYuan_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiYuan_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPHuiYuan] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiYuan_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiYuan_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiYuan_ADD
@ID int output,
@NameStr varchar(50),
@RuHuiDate varchar(50),
@JieShaoRen varchar(50),
@SexStr varchar(50),
@JiGuan varchar(50),
@JingJi varchar(50),
@ChuShengDate varchar(50),
@XueLi varchar(50),
@ZiLi varchar(50),
@GeXing varchar(50),
@AiHao varchar(50),
@Address varchar(200),
@Tel varchar(50),
@MobTel varchar(50),
@ZuiJiaTime varchar(50),
@ChangYong varchar(50),
@ZiXin varchar(200),
@JieLun varchar(50),
@BackInfo text,
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPHuiYuan](
	[NameStr],[RuHuiDate],[JieShaoRen],[SexStr],[JiGuan],[JingJi],[ChuShengDate],[XueLi],[ZiLi],[GeXing],[AiHao],[Address],[Tel],[MobTel],[ZuiJiaTime],[ChangYong],[ZiXin],[JieLun],[BackInfo],[UserName],[TimeStr]
	)VALUES(
	@NameStr,@RuHuiDate,@JieShaoRen,@SexStr,@JiGuan,@JingJi,@ChuShengDate,@XueLi,@ZiLi,@GeXing,@AiHao,@Address,@Tel,@MobTel,@ZuiJiaTime,@ChangYong,@ZiXin,@JieLun,@BackInfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiYuan_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiYuan_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiYuan_Update
@ID int,
@NameStr varchar(50),
@RuHuiDate varchar(50),
@JieShaoRen varchar(50),
@SexStr varchar(50),
@JiGuan varchar(50),
@JingJi varchar(50),
@ChuShengDate varchar(50),
@XueLi varchar(50),
@ZiLi varchar(50),
@GeXing varchar(50),
@AiHao varchar(50),
@Address varchar(200),
@Tel varchar(50),
@MobTel varchar(50),
@ZuiJiaTime varchar(50),
@ChangYong varchar(50),
@ZiXin varchar(200),
@JieLun varchar(50),
@BackInfo text,
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPHuiYuan] SET 
	[NameStr] = @NameStr,[RuHuiDate] = @RuHuiDate,[JieShaoRen] = @JieShaoRen,[SexStr] = @SexStr,[JiGuan] = @JiGuan,[JingJi] = @JingJi,[ChuShengDate] = @ChuShengDate,[XueLi] = @XueLi,[ZiLi] = @ZiLi,[GeXing] = @GeXing,[AiHao] = @AiHao,[Address] = @Address,[Tel] = @Tel,[MobTel] = @MobTel,[ZuiJiaTime] = @ZuiJiaTime,[ChangYong] = @ChangYong,[ZiXin] = @ZiXin,[JieLun] = @JieLun,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiYuan_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiYuan_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiYuan_Delete
@ID int
 AS 
	DELETE [ERPHuiYuan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiYuan_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiYuan_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiYuan_GetModel
@ID int
 AS 
	SELECT 
	ID,NameStr,RuHuiDate,JieShaoRen,SexStr,JiGuan,JingJi,ChuShengDate,XueLi,ZiLi,GeXing,AiHao,Address,Tel,MobTel,ZuiJiaTime,ChangYong,ZiXin,JieLun,BackInfo,UserName,TimeStr
	 FROM [ERPHuiYuan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPHuiYuan_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPHuiYuan_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPHuiYuan_GetList
 AS 
	SELECT 
	ID,NameStr,RuHuiDate,JieShaoRen,SexStr,JiGuan,JingJi,ChuShengDate,XueLi,ZiLi,GeXing,AiHao,Address,Tel,MobTel,ZuiJiaTime,ChangYong,ZiXin,JieLun,BackInfo,UserName,TimeStr
	 FROM [ERPHuiYuan]

GO


/******************************************************************
* 表名：ERPJiangCheng
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangCheng_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangCheng_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangCheng_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJiangCheng]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangCheng_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangCheng_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangCheng_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJiangCheng] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangCheng_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangCheng_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangCheng_ADD
@ID int output,
@JCUser varchar(50),
@JiangChengQuFen varchar(50),
@JiangChengType varchar(50),
@ShouYuDanWei varchar(50),
@JiangChengDate varchar(50),
@JiangChengMingMu varchar(5000),
@JiangChengYuanYin varchar(5000),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPJiangCheng](
	[JCUser],[JiangChengQuFen],[JiangChengType],[ShouYuDanWei],[JiangChengDate],[JiangChengMingMu],[JiangChengYuanYin],[BackInfo],[UserName],[TimeStr]
	)VALUES(
	@JCUser,@JiangChengQuFen,@JiangChengType,@ShouYuDanWei,@JiangChengDate,@JiangChengMingMu,@JiangChengYuanYin,@BackInfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangCheng_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangCheng_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangCheng_Update
@ID int,
@JCUser varchar(50),
@JiangChengQuFen varchar(50),
@JiangChengType varchar(50),
@ShouYuDanWei varchar(50),
@JiangChengDate varchar(50),
@JiangChengMingMu varchar(5000),
@JiangChengYuanYin varchar(5000),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPJiangCheng] SET 
	[JCUser] = @JCUser,[JiangChengQuFen] = @JiangChengQuFen,[JiangChengType] = @JiangChengType,[ShouYuDanWei] = @ShouYuDanWei,[JiangChengDate] = @JiangChengDate,[JiangChengMingMu] = @JiangChengMingMu,[JiangChengYuanYin] = @JiangChengYuanYin,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangCheng_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangCheng_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangCheng_Delete
@ID int
 AS 
	DELETE [ERPJiangCheng]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangCheng_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangCheng_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangCheng_GetModel
@ID int
 AS 
	SELECT 
	ID,JCUser,JiangChengQuFen,JiangChengType,ShouYuDanWei,JiangChengDate,JiangChengMingMu,JiangChengYuanYin,BackInfo,UserName,TimeStr
	 FROM [ERPJiangCheng]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangCheng_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangCheng_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangCheng_GetList
 AS 
	SELECT 
	ID,JCUser,JiangChengQuFen,JiangChengType,ShouYuDanWei,JiangChengDate,JiangChengMingMu,JiangChengYuanYin,BackInfo,UserName,TimeStr
	 FROM [ERPJiangCheng]

GO


/******************************************************************
* 表名：ERPJiangChengZhiDu
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangChengZhiDu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangChengZhiDu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangChengZhiDu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJiangChengZhiDu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangChengZhiDu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangChengZhiDu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangChengZhiDu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJiangChengZhiDu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangChengZhiDu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangChengZhiDu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangChengZhiDu_ADD
@ID int output,
@TitleStr varchar(200),
@JianJie varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@FuJianStr varchar(500),
@ConTentStr text

 AS 
	INSERT INTO [ERPJiangChengZhiDu](
	[TitleStr],[JianJie],[UserName],[TimeStr],[FuJianStr],[ConTentStr]
	)VALUES(
	@TitleStr,@JianJie,@UserName,@TimeStr,@FuJianStr,@ConTentStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangChengZhiDu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangChengZhiDu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangChengZhiDu_Update
@ID int,
@TitleStr varchar(200),
@JianJie varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@FuJianStr varchar(500),
@ConTentStr text
 AS 
	UPDATE [ERPJiangChengZhiDu] SET 
	[TitleStr] = @TitleStr,[JianJie] = @JianJie,[UserName] = @UserName,[TimeStr] = @TimeStr,[FuJianStr] = @FuJianStr,[ConTentStr] = @ConTentStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangChengZhiDu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangChengZhiDu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangChengZhiDu_Delete
@ID int
 AS 
	DELETE [ERPJiangChengZhiDu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangChengZhiDu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangChengZhiDu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangChengZhiDu_GetModel
@ID int
 AS 
	SELECT 
	ID,TitleStr,JianJie,UserName,TimeStr,FuJianStr,ConTentStr
	 FROM [ERPJiangChengZhiDu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiangChengZhiDu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiangChengZhiDu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJiangChengZhiDu_GetList
 AS 
	SELECT 
	ID,TitleStr,JianJie,UserName,TimeStr,FuJianStr,ConTentStr
	 FROM [ERPJiangChengZhiDu]

GO


/******************************************************************
* 表名：ERPJianLi
* 时间：2014/6/4 23:05:06
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJianLi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJianLi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJianLi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJianLi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJianLi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJianLi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJianLi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJianLi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJianLi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJianLi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJianLi_ADD
@ID int output,
@YPName varchar(50),
@YPDate varchar(50),
@YPSex varchar(50),
@YPAge varchar(50),
@XueLi varchar(50),
@ZhuanYe varchar(50),
@YPZhiWei varchar(50),
@YPJieGuo varchar(100),
@BackInfo varchar(5000),
@FuJianStr varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPJianLi](
	[YPName],[YPDate],[YPSex],[YPAge],[XueLi],[ZhuanYe],[YPZhiWei],[YPJieGuo],[BackInfo],[FuJianStr],[UserName],[TimeStr]
	)VALUES(
	@YPName,@YPDate,@YPSex,@YPAge,@XueLi,@ZhuanYe,@YPZhiWei,@YPJieGuo,@BackInfo,@FuJianStr,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJianLi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJianLi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJianLi_Update
@ID int,
@YPName varchar(50),
@YPDate varchar(50),
@YPSex varchar(50),
@YPAge varchar(50),
@XueLi varchar(50),
@ZhuanYe varchar(50),
@YPZhiWei varchar(50),
@YPJieGuo varchar(100),
@BackInfo varchar(5000),
@FuJianStr varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPJianLi] SET 
	[YPName] = @YPName,[YPDate] = @YPDate,[YPSex] = @YPSex,[YPAge] = @YPAge,[XueLi] = @XueLi,[ZhuanYe] = @ZhuanYe,[YPZhiWei] = @YPZhiWei,[YPJieGuo] = @YPJieGuo,[BackInfo] = @BackInfo,[FuJianStr] = @FuJianStr,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJianLi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJianLi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJianLi_Delete
@ID int
 AS 
	DELETE [ERPJianLi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJianLi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJianLi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJianLi_GetModel
@ID int
 AS 
	SELECT 
	ID,YPName,YPDate,YPSex,YPAge,XueLi,ZhuanYe,YPZhiWei,YPJieGuo,BackInfo,FuJianStr,UserName,TimeStr
	 FROM [ERPJianLi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJianLi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJianLi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:06
------------------------------------
CREATE PROCEDURE ERPJianLi_GetList
 AS 
	SELECT 
	ID,YPName,YPDate,YPSex,YPAge,XueLi,ZhuanYe,YPZhiWei,YPJieGuo,BackInfo,FuJianStr,UserName,TimeStr
	 FROM [ERPJianLi]

GO


/******************************************************************
* 表名：ERPJiaoSe
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiaoSe_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiaoSe_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiaoSe_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJiaoSe]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiaoSe_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiaoSe_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiaoSe_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJiaoSe] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiaoSe_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiaoSe_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiaoSe_ADD
@ID int output,
@JiaoSeName varchar(50),
@BackInfo varchar(1000),
@QuanXian varchar(8000)

 AS 
	INSERT INTO [ERPJiaoSe](
	[JiaoSeName],[BackInfo],[QuanXian]
	)VALUES(
	@JiaoSeName,@BackInfo,@QuanXian
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiaoSe_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiaoSe_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiaoSe_Update
@ID int,
@JiaoSeName varchar(50),
@BackInfo varchar(1000),
@QuanXian varchar(8000)
 AS 
	UPDATE [ERPJiaoSe] SET 
	[JiaoSeName] = @JiaoSeName,[BackInfo] = @BackInfo,[QuanXian] = @QuanXian
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiaoSe_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiaoSe_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiaoSe_Delete
@ID int
 AS 
	DELETE [ERPJiaoSe]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiaoSe_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiaoSe_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiaoSe_GetModel
@ID int
 AS 
	SELECT 
	ID,JiaoSeName,BackInfo,QuanXian
	 FROM [ERPJiaoSe]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiaoSe_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiaoSe_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiaoSe_GetList
 AS 
	SELECT 
	ID,JiaoSeName,BackInfo,QuanXian
	 FROM [ERPJiaoSe]

GO


/******************************************************************
* 表名：ERPJinDu
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJinDu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJinDu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJinDu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJinDu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJinDu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJinDu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJinDu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJinDu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJinDu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJinDu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJinDu_ADD
@ID int output,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@JieDuanName varchar(100),
@StartTime datetime,
@EndTime datetime,
@WanChengDu varchar(50),
@FuZeRen varchar(50),
@ContentStr text,
@FuJianList varchar(1000),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPJinDu](
	[ProjectName],[ProjectSerils],[JieDuanName],[StartTime],[EndTime],[WanChengDu],[FuZeRen],[ContentStr],[FuJianList],[UserName],[TimeStr]
	)VALUES(
	@ProjectName,@ProjectSerils,@JieDuanName,@StartTime,@EndTime,@WanChengDu,@FuZeRen,@ContentStr,@FuJianList,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJinDu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJinDu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJinDu_Update
@ID int,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@JieDuanName varchar(100),
@StartTime datetime,
@EndTime datetime,
@WanChengDu varchar(50),
@FuZeRen varchar(50),
@ContentStr text,
@FuJianList varchar(1000),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPJinDu] SET 
	[ProjectName] = @ProjectName,[ProjectSerils] = @ProjectSerils,[JieDuanName] = @JieDuanName,[StartTime] = @StartTime,[EndTime] = @EndTime,[WanChengDu] = @WanChengDu,[FuZeRen] = @FuZeRen,[ContentStr] = @ContentStr,[FuJianList] = @FuJianList,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJinDu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJinDu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJinDu_Delete
@ID int
 AS 
	DELETE [ERPJinDu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJinDu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJinDu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJinDu_GetModel
@ID int
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,JieDuanName,StartTime,EndTime,WanChengDu,FuZeRen,ContentStr,FuJianList,UserName,TimeStr
	 FROM [ERPJinDu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJinDu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJinDu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJinDu_GetList
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,JieDuanName,StartTime,EndTime,WanChengDu,FuZeRen,ContentStr,FuJianList,UserName,TimeStr
	 FROM [ERPJinDu]

GO


/******************************************************************
* 表名：ERPJiXiao
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiao_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiao_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiao_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJiXiao]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiao_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiao_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiao_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJiXiao] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiao_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiao_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiao_ADD
@ID int output,
@JXName varchar(50),
@JianJie varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPJiXiao](
	[JXName],[JianJie],[UserName],[TimeStr]
	)VALUES(
	@JXName,@JianJie,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiao_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiao_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiao_Update
@ID int,
@JXName varchar(50),
@JianJie varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPJiXiao] SET 
	[JXName] = @JXName,[JianJie] = @JianJie,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiao_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiao_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiao_Delete
@ID int
 AS 
	DELETE [ERPJiXiao]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiao_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiao_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiao_GetModel
@ID int
 AS 
	SELECT 
	ID,JXName,JianJie,UserName,TimeStr
	 FROM [ERPJiXiao]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiao_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiao_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiao_GetList
 AS 
	SELECT 
	ID,JXName,JianJie,UserName,TimeStr
	 FROM [ERPJiXiao]

GO


/******************************************************************
* 表名：ERPJiXiaoCanShu
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiaoCanShu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiaoCanShu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiaoCanShu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJiXiaoCanShu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiaoCanShu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiaoCanShu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiaoCanShu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJiXiaoCanShu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiaoCanShu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiaoCanShu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiaoCanShu_ADD
@ID int output,
@ItemName varchar(50),
@BackInfo varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPJiXiaoCanShu](
	[ItemName],[BackInfo],[UserName],[TimeStr]
	)VALUES(
	@ItemName,@BackInfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiaoCanShu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiaoCanShu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiaoCanShu_Update
@ID int,
@ItemName varchar(50),
@BackInfo varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPJiXiaoCanShu] SET 
	[ItemName] = @ItemName,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiaoCanShu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiaoCanShu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiaoCanShu_Delete
@ID int
 AS 
	DELETE [ERPJiXiaoCanShu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiaoCanShu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiaoCanShu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiaoCanShu_GetModel
@ID int
 AS 
	SELECT 
	ID,ItemName,BackInfo,UserName,TimeStr
	 FROM [ERPJiXiaoCanShu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJiXiaoCanShu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJiXiaoCanShu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJiXiaoCanShu_GetList
 AS 
	SELECT 
	ID,ItemName,BackInfo,UserName,TimeStr
	 FROM [ERPJiXiaoCanShu]

GO


/******************************************************************
* 表名：ERPJSDIC
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJSDIC_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJSDIC_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJSDIC_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJSDIC]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJSDIC_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJSDIC_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJSDIC_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJSDIC] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJSDIC_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJSDIC_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJSDIC_ADD
@ID int output,
@DicName varchar(50),
@Backinfo varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPJSDIC](
	[DicName],[Backinfo],[UserName],[TimeStr]
	)VALUES(
	@DicName,@Backinfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJSDIC_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJSDIC_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJSDIC_Update
@ID int,
@DicName varchar(50),
@Backinfo varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPJSDIC] SET 
	[DicName] = @DicName,[Backinfo] = @Backinfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJSDIC_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJSDIC_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJSDIC_Delete
@ID int
 AS 
	DELETE [ERPJSDIC]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJSDIC_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJSDIC_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJSDIC_GetModel
@ID int
 AS 
	SELECT 
	ID,DicName,Backinfo,UserName,TimeStr
	 FROM [ERPJSDIC]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJSDIC_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJSDIC_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJSDIC_GetList
 AS 
	SELECT 
	ID,DicName,Backinfo,UserName,TimeStr
	 FROM [ERPJSDIC]

GO


/******************************************************************
* 表名：ERPJuanKu
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJuanKu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJuanKu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJuanKu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJuanKu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJuanKu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJuanKu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJuanKu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJuanKu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJuanKu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJuanKu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJuanKu_ADD
@ID int output,
@JuanKuName varchar(50),
@JuanKuSerils varchar(50),
@SuoShuBuMen varchar(50),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime,
@CanViewUserList varchar(8000)

 AS 
	INSERT INTO [ERPJuanKu](
	[JuanKuName],[JuanKuSerils],[SuoShuBuMen],[BackInfo],[UserName],[TimeStr],[CanViewUserList]
	)VALUES(
	@JuanKuName,@JuanKuSerils,@SuoShuBuMen,@BackInfo,@UserName,@TimeStr,@CanViewUserList
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJuanKu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJuanKu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJuanKu_Update
@ID int,
@JuanKuName varchar(50),
@JuanKuSerils varchar(50),
@SuoShuBuMen varchar(50),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime,
@CanViewUserList varchar(8000)
 AS 
	UPDATE [ERPJuanKu] SET 
	[JuanKuName] = @JuanKuName,[JuanKuSerils] = @JuanKuSerils,[SuoShuBuMen] = @SuoShuBuMen,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr,[CanViewUserList] = @CanViewUserList
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJuanKu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJuanKu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJuanKu_Delete
@ID int
 AS 
	DELETE [ERPJuanKu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJuanKu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJuanKu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJuanKu_GetModel
@ID int
 AS 
	SELECT 
	ID,JuanKuName,JuanKuSerils,SuoShuBuMen,BackInfo,UserName,TimeStr,CanViewUserList
	 FROM [ERPJuanKu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJuanKu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJuanKu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJuanKu_GetList
 AS 
	SELECT 
	ID,JuanKuName,JuanKuSerils,SuoShuBuMen,BackInfo,UserName,TimeStr,CanViewUserList
	 FROM [ERPJuanKu]

GO


/******************************************************************
* 表名：ERPJXDetails
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJXDetails_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJXDetails_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJXDetails_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPJXDetails]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJXDetails_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJXDetails_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJXDetails_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPJXDetails] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJXDetails_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJXDetails_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJXDetails_ADD
@ID int output,
@JXID int,
@ItemsID int,
@UserName varchar(50),
@NumStr varchar(50)

 AS 
	INSERT INTO [ERPJXDetails](
	[JXID],[ItemsID],[UserName],[NumStr]
	)VALUES(
	@JXID,@ItemsID,@UserName,@NumStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJXDetails_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJXDetails_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJXDetails_Update
@ID int,
@JXID int,
@ItemsID int,
@UserName varchar(50),
@NumStr varchar(50)
 AS 
	UPDATE [ERPJXDetails] SET 
	[JXID] = @JXID,[ItemsID] = @ItemsID,[UserName] = @UserName,[NumStr] = @NumStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJXDetails_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJXDetails_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJXDetails_Delete
@ID int
 AS 
	DELETE [ERPJXDetails]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJXDetails_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJXDetails_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJXDetails_GetModel
@ID int
 AS 
	SELECT 
	ID,JXID,ItemsID,UserName,NumStr
	 FROM [ERPJXDetails]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPJXDetails_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPJXDetails_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPJXDetails_GetList
 AS 
	SELECT 
	ID,JXID,ItemsID,UserName,NumStr
	 FROM [ERPJXDetails]

GO


/******************************************************************
* 表名：ERPKaoQin
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQin_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQin_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQin_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPKaoQin]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQin_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQin_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQin_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPKaoQin] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQin_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQin_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQin_ADD
@ID int output,
@UserName varchar(50),
@GuiDingTime1 datetime,
@DengJiTime1 datetime,
@GuiDingTime2 datetime,
@DengJiTime2 datetime,
@GuiDingTime3 datetime,
@DengJiTime3 datetime,
@GuiDingTime4 datetime,
@DengJiTime4 datetime,
@GuiDingTime5 datetime,
@DengJiTime5 datetime,
@GuiDingTime6 datetime,
@DengJiTime6 datetime,
@KaoQinRiQi datetime

 AS 
	INSERT INTO [ERPKaoQin](
	[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[DengJiTime2],[GuiDingTime3],[DengJiTime3],[GuiDingTime4],[DengJiTime4],[GuiDingTime5],[DengJiTime5],[GuiDingTime6],[DengJiTime6],[KaoQinRiQi]
	)VALUES(
	@UserName,@GuiDingTime1,@DengJiTime1,@GuiDingTime2,@DengJiTime2,@GuiDingTime3,@DengJiTime3,@GuiDingTime4,@DengJiTime4,@GuiDingTime5,@DengJiTime5,@GuiDingTime6,@DengJiTime6,@KaoQinRiQi
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQin_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQin_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQin_Update
@ID int,
@UserName varchar(50),
@GuiDingTime1 datetime,
@DengJiTime1 datetime,
@GuiDingTime2 datetime,
@DengJiTime2 datetime,
@GuiDingTime3 datetime,
@DengJiTime3 datetime,
@GuiDingTime4 datetime,
@DengJiTime4 datetime,
@GuiDingTime5 datetime,
@DengJiTime5 datetime,
@GuiDingTime6 datetime,
@DengJiTime6 datetime,
@KaoQinRiQi datetime
 AS 
	UPDATE [ERPKaoQin] SET 
	[UserName] = @UserName,[GuiDingTime1] = @GuiDingTime1,[DengJiTime1] = @DengJiTime1,[GuiDingTime2] = @GuiDingTime2,[DengJiTime2] = @DengJiTime2,[GuiDingTime3] = @GuiDingTime3,[DengJiTime3] = @DengJiTime3,[GuiDingTime4] = @GuiDingTime4,[DengJiTime4] = @DengJiTime4,[GuiDingTime5] = @GuiDingTime5,[DengJiTime5] = @DengJiTime5,[GuiDingTime6] = @GuiDingTime6,[DengJiTime6] = @DengJiTime6,[KaoQinRiQi] = @KaoQinRiQi
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQin_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQin_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQin_Delete
@ID int
 AS 
	DELETE [ERPKaoQin]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQin_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQin_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQin_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,GuiDingTime1,DengJiTime1,GuiDingTime2,DengJiTime2,GuiDingTime3,DengJiTime3,GuiDingTime4,DengJiTime4,GuiDingTime5,DengJiTime5,GuiDingTime6,DengJiTime6,KaoQinRiQi
	 FROM [ERPKaoQin]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQin_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQin_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQin_GetList
 AS 
	SELECT 
	ID,UserName,GuiDingTime1,DengJiTime1,GuiDingTime2,DengJiTime2,GuiDingTime3,DengJiTime3,GuiDingTime4,DengJiTime4,GuiDingTime5,DengJiTime5,GuiDingTime6,DengJiTime6,KaoQinRiQi
	 FROM [ERPKaoQin]

GO


/******************************************************************
* 表名：ERPKaoQinSetting
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQinSetting_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQinSetting_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQinSetting_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPKaoQinSetting]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQinSetting_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQinSetting_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQinSetting_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPKaoQinSetting] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQinSetting_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQinSetting_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQinSetting_ADD
@ID int output,
@GuiDingTime1 varchar(50),
@GuiDingTime2 varchar(50),
@GuiDingTime3 varchar(50),
@GuiDingTime4 varchar(50),
@GuiDingTime5 varchar(50),
@GuiDingTime6 varchar(50)

 AS 
	INSERT INTO [ERPKaoQinSetting](
	[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[GuiDingTime5],[GuiDingTime6]
	)VALUES(
	@GuiDingTime1,@GuiDingTime2,@GuiDingTime3,@GuiDingTime4,@GuiDingTime5,@GuiDingTime6
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQinSetting_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQinSetting_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQinSetting_Update
@ID int,
@GuiDingTime1 varchar(50),
@GuiDingTime2 varchar(50),
@GuiDingTime3 varchar(50),
@GuiDingTime4 varchar(50),
@GuiDingTime5 varchar(50),
@GuiDingTime6 varchar(50)
 AS 
	UPDATE [ERPKaoQinSetting] SET 
	[GuiDingTime1] = @GuiDingTime1,[GuiDingTime2] = @GuiDingTime2,[GuiDingTime3] = @GuiDingTime3,[GuiDingTime4] = @GuiDingTime4,[GuiDingTime5] = @GuiDingTime5,[GuiDingTime6] = @GuiDingTime6
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQinSetting_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQinSetting_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQinSetting_Delete
@ID int
 AS 
	DELETE [ERPKaoQinSetting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQinSetting_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQinSetting_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQinSetting_GetModel
@ID int
 AS 
	SELECT 
	ID,GuiDingTime1,GuiDingTime2,GuiDingTime3,GuiDingTime4,GuiDingTime5,GuiDingTime6
	 FROM [ERPKaoQinSetting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPKaoQinSetting_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPKaoQinSetting_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPKaoQinSetting_GetList
 AS 
	SELECT 
	ID,GuiDingTime1,GuiDingTime2,GuiDingTime3,GuiDingTime4,GuiDingTime5,GuiDingTime6
	 FROM [ERPKaoQinSetting]

GO


/******************************************************************
* 表名：ERPLanEmail
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLanEmail_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLanEmail_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLanEmail_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPLanEmail]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLanEmail_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLanEmail_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLanEmail_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPLanEmail] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLanEmail_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLanEmail_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLanEmail_ADD
@ID int output,
@EmailTitle varchar(500),
@TimeStr datetime,
@EmailContent text,
@FuJian varchar(2000),
@FromUser varchar(50),
@ToUser varchar(50),
@EmailState varchar(50),
@IFDel varchar(50)

 AS 
	INSERT INTO [ERPLanEmail](
	[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState],[IFDel]
	)VALUES(
	@EmailTitle,@TimeStr,@EmailContent,@FuJian,@FromUser,@ToUser,@EmailState,@IFDel
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLanEmail_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLanEmail_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLanEmail_Update
@ID int,
@EmailTitle varchar(500),
@TimeStr datetime,
@EmailContent text,
@FuJian varchar(2000),
@FromUser varchar(50),
@ToUser varchar(50),
@EmailState varchar(50),
@IFDel varchar(50)
 AS 
	UPDATE [ERPLanEmail] SET 
	[EmailTitle] = @EmailTitle,[TimeStr] = @TimeStr,[EmailContent] = @EmailContent,[FuJian] = @FuJian,[FromUser] = @FromUser,[ToUser] = @ToUser,[EmailState] = @EmailState,[IFDel] = @IFDel
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLanEmail_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLanEmail_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLanEmail_Delete
@ID int
 AS 
	DELETE [ERPLanEmail]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLanEmail_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLanEmail_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLanEmail_GetModel
@ID int
 AS 
	SELECT 
	ID,EmailTitle,TimeStr,EmailContent,FuJian,FromUser,ToUser,EmailState,IFDel
	 FROM [ERPLanEmail]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLanEmail_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLanEmail_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLanEmail_GetList
 AS 
	SELECT 
	ID,EmailTitle,TimeStr,EmailContent,FuJian,FromUser,ToUser,EmailState,IFDel
	 FROM [ERPLanEmail]

GO


/******************************************************************
* 表名：ERPLinkLog
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkLog_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkLog_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkLog_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPLinkLog]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkLog_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkLog_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkLog_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPLinkLog] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkLog_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkLog_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkLog_ADD
@ID int output,
@CustomName varchar(100),
@LinkTitle varchar(500),
@LinkType varchar(500),
@LinkResult varchar(5000),
@LinkTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)

 AS 
	INSERT INTO [ERPLinkLog](
	[CustomName],[LinkTitle],[LinkType],[LinkResult],[LinkTime],[UserName],[TimeStr],[IFShare],[CusBakA],[CusBakB],[CusBakC],[CusBakD],[CusBakE]
	)VALUES(
	@CustomName,@LinkTitle,@LinkType,@LinkResult,@LinkTime,@UserName,@TimeStr,@IFShare,@CusBakA,@CusBakB,@CusBakC,@CusBakD,@CusBakE
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkLog_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkLog_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkLog_Update
@ID int,
@CustomName varchar(100),
@LinkTitle varchar(500),
@LinkType varchar(500),
@LinkResult varchar(5000),
@LinkTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)
 AS 
	UPDATE [ERPLinkLog] SET 
	[CustomName] = @CustomName,[LinkTitle] = @LinkTitle,[LinkType] = @LinkType,[LinkResult] = @LinkResult,[LinkTime] = @LinkTime,[UserName] = @UserName,[TimeStr] = @TimeStr,[IFShare] = @IFShare,[CusBakA] = @CusBakA,[CusBakB] = @CusBakB,[CusBakC] = @CusBakC,[CusBakD] = @CusBakD,[CusBakE] = @CusBakE
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkLog_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkLog_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkLog_Delete
@ID int
 AS 
	DELETE [ERPLinkLog]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkLog_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkLog_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkLog_GetModel
@ID int
 AS 
	SELECT 
	ID,CustomName,LinkTitle,LinkType,LinkResult,LinkTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPLinkLog]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkLog_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkLog_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkLog_GetList
 AS 
	SELECT 
	ID,CustomName,LinkTitle,LinkType,LinkResult,LinkTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPLinkLog]

GO


/******************************************************************
* 表名：ERPLinkMan
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkMan_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkMan_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkMan_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPLinkMan]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkMan_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkMan_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkMan_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPLinkMan] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkMan_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkMan_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkMan_ADD
@ID int output,
@CustomName varchar(100),
@NameStr varchar(50),
@Sex varchar(50),
@BirthDay varchar(50),
@SuoChuJiaoSe varchar(50),
@ZhiWu varchar(50),
@PeiOu varchar(500),
@ZiNv varchar(500),
@DanWieDianHua varchar(50),
@DanWeiChuanZhen varchar(50),
@JiaTingZhuZhi varchar(500),
@JiaTingYouBian varchar(50),
@JiaTingDianHua varchar(50),
@ShouJi varchar(50),
@XiaoLingTong varchar(50),
@Email varchar(50),
@QQ varchar(50),
@Msn varchar(50),
@BackInfo text,
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)

 AS 
	INSERT INTO [ERPLinkMan](
	[CustomName],[NameStr],[Sex],[BirthDay],[SuoChuJiaoSe],[ZhiWu],[PeiOu],[ZiNv],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ],[Msn],[BackInfo],[UserName],[TimeStr],[IFShare],[CusBakA],[CusBakB],[CusBakC],[CusBakD],[CusBakE]
	)VALUES(
	@CustomName,@NameStr,@Sex,@BirthDay,@SuoChuJiaoSe,@ZhiWu,@PeiOu,@ZiNv,@DanWieDianHua,@DanWeiChuanZhen,@JiaTingZhuZhi,@JiaTingYouBian,@JiaTingDianHua,@ShouJi,@XiaoLingTong,@Email,@QQ,@Msn,@BackInfo,@UserName,@TimeStr,@IFShare,@CusBakA,@CusBakB,@CusBakC,@CusBakD,@CusBakE
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkMan_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkMan_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkMan_Update
@ID int,
@CustomName varchar(100),
@NameStr varchar(50),
@Sex varchar(50),
@BirthDay varchar(50),
@SuoChuJiaoSe varchar(50),
@ZhiWu varchar(50),
@PeiOu varchar(500),
@ZiNv varchar(500),
@DanWieDianHua varchar(50),
@DanWeiChuanZhen varchar(50),
@JiaTingZhuZhi varchar(500),
@JiaTingYouBian varchar(50),
@JiaTingDianHua varchar(50),
@ShouJi varchar(50),
@XiaoLingTong varchar(50),
@Email varchar(50),
@QQ varchar(50),
@Msn varchar(50),
@BackInfo text,
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)
 AS 
	UPDATE [ERPLinkMan] SET 
	[CustomName] = @CustomName,[NameStr] = @NameStr,[Sex] = @Sex,[BirthDay] = @BirthDay,[SuoChuJiaoSe] = @SuoChuJiaoSe,[ZhiWu] = @ZhiWu,[PeiOu] = @PeiOu,[ZiNv] = @ZiNv,[DanWieDianHua] = @DanWieDianHua,[DanWeiChuanZhen] = @DanWeiChuanZhen,[JiaTingZhuZhi] = @JiaTingZhuZhi,[JiaTingYouBian] = @JiaTingYouBian,[JiaTingDianHua] = @JiaTingDianHua,[ShouJi] = @ShouJi,[XiaoLingTong] = @XiaoLingTong,[Email] = @Email,[QQ] = @QQ,[Msn] = @Msn,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr,[IFShare] = @IFShare,[CusBakA] = @CusBakA,[CusBakB] = @CusBakB,[CusBakC] = @CusBakC,[CusBakD] = @CusBakD,[CusBakE] = @CusBakE
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkMan_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkMan_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkMan_Delete
@ID int
 AS 
	DELETE [ERPLinkMan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkMan_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkMan_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkMan_GetModel
@ID int
 AS 
	SELECT 
	ID,CustomName,NameStr,Sex,BirthDay,SuoChuJiaoSe,ZhiWu,PeiOu,ZiNv,DanWieDianHua,DanWeiChuanZhen,JiaTingZhuZhi,JiaTingYouBian,JiaTingDianHua,ShouJi,XiaoLingTong,Email,QQ,Msn,BackInfo,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPLinkMan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLinkMan_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLinkMan_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLinkMan_GetList
 AS 
	SELECT 
	ID,CustomName,NameStr,Sex,BirthDay,SuoChuJiaoSe,ZhiWu,PeiOu,ZiNv,DanWieDianHua,DanWeiChuanZhen,JiaTingZhuZhi,JiaTingYouBian,JiaTingDianHua,ShouJi,XiaoLingTong,Email,QQ,Msn,BackInfo,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPLinkMan]

GO


/******************************************************************
* 表名：ERPLiRun
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLiRun_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLiRun_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLiRun_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPLiRun]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLiRun_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLiRun_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLiRun_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPLiRun] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLiRun_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLiRun_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLiRun_ADD
@ID int output,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@SumJinE varchar(50),
@FeiYong varchar(50),
@ChengBen varchar(50),
@FangZu varchar(50),
@ShuiE varchar(50),
@GongZi varchar(50),
@TiCheng varchar(50),
@QiTa varchar(50),
@ShiJi varchar(50),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPLiRun](
	[ProjectName],[ProjectSerils],[SumJinE],[FeiYong],[ChengBen],[FangZu],[ShuiE],[GongZi],[TiCheng],[QiTa],[ShiJi],[UserName],[TimeStr]
	)VALUES(
	@ProjectName,@ProjectSerils,@SumJinE,@FeiYong,@ChengBen,@FangZu,@ShuiE,@GongZi,@TiCheng,@QiTa,@ShiJi,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLiRun_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLiRun_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLiRun_Update
@ID int,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@SumJinE varchar(50),
@FeiYong varchar(50),
@ChengBen varchar(50),
@FangZu varchar(50),
@ShuiE varchar(50),
@GongZi varchar(50),
@TiCheng varchar(50),
@QiTa varchar(50),
@ShiJi varchar(50),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPLiRun] SET 
	[ProjectName] = @ProjectName,[ProjectSerils] = @ProjectSerils,[SumJinE] = @SumJinE,[FeiYong] = @FeiYong,[ChengBen] = @ChengBen,[FangZu] = @FangZu,[ShuiE] = @ShuiE,[GongZi] = @GongZi,[TiCheng] = @TiCheng,[QiTa] = @QiTa,[ShiJi] = @ShiJi,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLiRun_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLiRun_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLiRun_Delete
@ID int
 AS 
	DELETE [ERPLiRun]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLiRun_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLiRun_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLiRun_GetModel
@ID int
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,SumJinE,FeiYong,ChengBen,FangZu,ShuiE,GongZi,TiCheng,QiTa,ShiJi,UserName,TimeStr
	 FROM [ERPLiRun]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLiRun_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLiRun_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLiRun_GetList
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,SumJinE,FeiYong,ChengBen,FangZu,ShuiE,GongZi,TiCheng,QiTa,ShiJi,UserName,TimeStr
	 FROM [ERPLiRun]

GO


/******************************************************************
* 表名：ERPLX
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLX_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLX_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLX_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPLX]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLX_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLX_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLX_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPLX] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLX_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLX_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLX_ADD
@ID int output,
@ProjectName varchar(200),
@ZHRQ datetime,
@XMBH varchar(50),
@JZJCRQ datetime,
@JZJDRQ datetime,
@JHDD varchar(200),
@GSBJ varchar(100),
@XiangMuCB varchar(200),
@UserName varchar(50),
@TimeStr datetime,
@FuJian varchar(5000),
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPLX](
	[ProjectName],[ZHRQ],[XMBH],[JZJCRQ],[JZJDRQ],[JHDD],[GSBJ],[XiangMuCB],[UserName],[TimeStr],[FuJian],[BackInfo]
	)VALUES(
	@ProjectName,@ZHRQ,@XMBH,@JZJCRQ,@JZJDRQ,@JHDD,@GSBJ,@XiangMuCB,@UserName,@TimeStr,@FuJian,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLX_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLX_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLX_Update
@ID int,
@ProjectName varchar(200),
@ZHRQ datetime,
@XMBH varchar(50),
@JZJCRQ datetime,
@JZJDRQ datetime,
@JHDD varchar(200),
@GSBJ varchar(100),
@XiangMuCB varchar(200),
@UserName varchar(50),
@TimeStr datetime,
@FuJian varchar(5000),
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPLX] SET 
	[ProjectName] = @ProjectName,[ZHRQ] = @ZHRQ,[XMBH] = @XMBH,[JZJCRQ] = @JZJCRQ,[JZJDRQ] = @JZJDRQ,[JHDD] = @JHDD,[GSBJ] = @GSBJ,[XiangMuCB] = @XiangMuCB,[UserName] = @UserName,[TimeStr] = @TimeStr,[FuJian] = @FuJian,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLX_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLX_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLX_Delete
@ID int
 AS 
	DELETE [ERPLX]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLX_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLX_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLX_GetModel
@ID int
 AS 
	SELECT 
	ID,ProjectName,ZHRQ,XMBH,JZJCRQ,JZJDRQ,JHDD,GSBJ,XiangMuCB,UserName,TimeStr,FuJian,BackInfo
	 FROM [ERPLX]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPLX_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPLX_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPLX_GetList
 AS 
	SELECT 
	ID,ProjectName,ZHRQ,XMBH,JZJCRQ,JZJDRQ,JHDD,GSBJ,XiangMuCB,UserName,TimeStr,FuJian,BackInfo
	 FROM [ERPLX]

GO


/******************************************************************
* 表名：ERPMeeting
* 时间：2014/6/4 23:05:07
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMeeting_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMeeting_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPMeeting_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPMeeting]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMeeting_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMeeting_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPMeeting_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPMeeting] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMeeting_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMeeting_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPMeeting_ADD
@ID int output,
@MeetingTitle varchar(500),
@MeetingZhuTi varchar(5000),
@MiaoShu varchar(5000),
@ChuXiRen varchar(8000),
@WangLuoHuiYiShiIP varchar(50),
@HuiYiZhuChi varchar(50),
@KaiShiTime datetime,
@JieShuTime datetime,
@HuiYiJiYao text,
@ZhuanXieRen varchar(50),
@TimeStr datetime,
@CurentOnline varchar(8000),
@NowState varchar(50)

 AS 
	INSERT INTO [ERPMeeting](
	[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[HuiYiJiYao],[ZhuanXieRen],[TimeStr],[CurentOnline],[NowState]
	)VALUES(
	@MeetingTitle,@MeetingZhuTi,@MiaoShu,@ChuXiRen,@WangLuoHuiYiShiIP,@HuiYiZhuChi,@KaiShiTime,@JieShuTime,@HuiYiJiYao,@ZhuanXieRen,@TimeStr,@CurentOnline,@NowState
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMeeting_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMeeting_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPMeeting_Update
@ID int,
@MeetingTitle varchar(500),
@MeetingZhuTi varchar(5000),
@MiaoShu varchar(5000),
@ChuXiRen varchar(8000),
@WangLuoHuiYiShiIP varchar(50),
@HuiYiZhuChi varchar(50),
@KaiShiTime datetime,
@JieShuTime datetime,
@HuiYiJiYao text,
@ZhuanXieRen varchar(50),
@TimeStr datetime,
@CurentOnline varchar(8000),
@NowState varchar(50)
 AS 
	UPDATE [ERPMeeting] SET 
	[MeetingTitle] = @MeetingTitle,[MeetingZhuTi] = @MeetingZhuTi,[MiaoShu] = @MiaoShu,[ChuXiRen] = @ChuXiRen,[WangLuoHuiYiShiIP] = @WangLuoHuiYiShiIP,[HuiYiZhuChi] = @HuiYiZhuChi,[KaiShiTime] = @KaiShiTime,[JieShuTime] = @JieShuTime,[HuiYiJiYao] = @HuiYiJiYao,[ZhuanXieRen] = @ZhuanXieRen,[TimeStr] = @TimeStr,[CurentOnline] = @CurentOnline,[NowState] = @NowState
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMeeting_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMeeting_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPMeeting_Delete
@ID int
 AS 
	DELETE [ERPMeeting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMeeting_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMeeting_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPMeeting_GetModel
@ID int
 AS 
	SELECT 
	ID,MeetingTitle,MeetingZhuTi,MiaoShu,ChuXiRen,WangLuoHuiYiShiIP,HuiYiZhuChi,KaiShiTime,JieShuTime,HuiYiJiYao,ZhuanXieRen,TimeStr,CurentOnline,NowState
	 FROM [ERPMeeting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMeeting_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMeeting_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:07
------------------------------------
CREATE PROCEDURE ERPMeeting_GetList
 AS 
	SELECT 
	ID,MeetingTitle,MeetingZhuTi,MiaoShu,ChuXiRen,WangLuoHuiYiShiIP,HuiYiZhuChi,KaiShiTime,JieShuTime,HuiYiJiYao,ZhuanXieRen,TimeStr,CurentOnline,NowState
	 FROM [ERPMeeting]

GO


/******************************************************************
* 表名：ERPMianShi
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMianShi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMianShi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMianShi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPMianShi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMianShi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMianShi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMianShi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPMianShi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMianShi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMianShi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMianShi_ADD
@ID int output,
@MSName varchar(50),
@MSDate varchar(50),
@MSSex varchar(50),
@MSAge varchar(50),
@XueLi varchar(50),
@ZhuanYe varchar(50),
@MSZhiWei varchar(50),
@MSJieGuo varchar(100),
@BackInfo varchar(5000),
@FuJianStr varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPMianShi](
	[MSName],[MSDate],[MSSex],[MSAge],[XueLi],[ZhuanYe],[MSZhiWei],[MSJieGuo],[BackInfo],[FuJianStr],[UserName],[TimeStr]
	)VALUES(
	@MSName,@MSDate,@MSSex,@MSAge,@XueLi,@ZhuanYe,@MSZhiWei,@MSJieGuo,@BackInfo,@FuJianStr,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMianShi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMianShi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMianShi_Update
@ID int,
@MSName varchar(50),
@MSDate varchar(50),
@MSSex varchar(50),
@MSAge varchar(50),
@XueLi varchar(50),
@ZhuanYe varchar(50),
@MSZhiWei varchar(50),
@MSJieGuo varchar(100),
@BackInfo varchar(5000),
@FuJianStr varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPMianShi] SET 
	[MSName] = @MSName,[MSDate] = @MSDate,[MSSex] = @MSSex,[MSAge] = @MSAge,[XueLi] = @XueLi,[ZhuanYe] = @ZhuanYe,[MSZhiWei] = @MSZhiWei,[MSJieGuo] = @MSJieGuo,[BackInfo] = @BackInfo,[FuJianStr] = @FuJianStr,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMianShi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMianShi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMianShi_Delete
@ID int
 AS 
	DELETE [ERPMianShi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMianShi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMianShi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMianShi_GetModel
@ID int
 AS 
	SELECT 
	ID,MSName,MSDate,MSSex,MSAge,XueLi,ZhuanYe,MSZhiWei,MSJieGuo,BackInfo,FuJianStr,UserName,TimeStr
	 FROM [ERPMianShi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMianShi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMianShi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMianShi_GetList
 AS 
	SELECT 
	ID,MSName,MSDate,MSSex,MSAge,XueLi,ZhuanYe,MSZhiWei,MSJieGuo,BackInfo,FuJianStr,UserName,TimeStr
	 FROM [ERPMianShi]

GO


/******************************************************************
* 表名：ERPMobile
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMobile_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMobile_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMobile_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPMobile]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMobile_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMobile_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMobile_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPMobile] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMobile_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMobile_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMobile_ADD
@ID int output,
@FaSongUser varchar(50),
@ToUserList varchar(8000),
@ContentStr varchar(8000),
@TimeStr datetime

 AS 
	INSERT INTO [ERPMobile](
	[FaSongUser],[ToUserList],[ContentStr],[TimeStr]
	)VALUES(
	@FaSongUser,@ToUserList,@ContentStr,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMobile_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMobile_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMobile_Update
@ID int,
@FaSongUser varchar(50),
@ToUserList varchar(8000),
@ContentStr varchar(8000),
@TimeStr datetime
 AS 
	UPDATE [ERPMobile] SET 
	[FaSongUser] = @FaSongUser,[ToUserList] = @ToUserList,[ContentStr] = @ContentStr,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMobile_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMobile_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMobile_Delete
@ID int
 AS 
	DELETE [ERPMobile]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMobile_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMobile_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMobile_GetModel
@ID int
 AS 
	SELECT 
	ID,FaSongUser,ToUserList,ContentStr,TimeStr
	 FROM [ERPMobile]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPMobile_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPMobile_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPMobile_GetList
 AS 
	SELECT 
	ID,FaSongUser,ToUserList,ContentStr,TimeStr
	 FROM [ERPMobile]

GO


/******************************************************************
* 表名：ERPNetEmail
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNetEmail_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNetEmail_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNetEmail_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPNetEmail]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNetEmail_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNetEmail_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNetEmail_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPNetEmail] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNetEmail_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNetEmail_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNetEmail_ADD
@ID int output,
@EmailTitle varchar(500),
@TimeStr datetime,
@EmailContent text,
@FuJian varchar(2000),
@FromUser varchar(50),
@ToUser varchar(50),
@EmailState varchar(50)

 AS 
	INSERT INTO [ERPNetEmail](
	[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]
	)VALUES(
	@EmailTitle,@TimeStr,@EmailContent,@FuJian,@FromUser,@ToUser,@EmailState
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNetEmail_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNetEmail_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNetEmail_Update
@ID int,
@EmailTitle varchar(500),
@TimeStr datetime,
@EmailContent text,
@FuJian varchar(2000),
@FromUser varchar(50),
@ToUser varchar(50),
@EmailState varchar(50)
 AS 
	UPDATE [ERPNetEmail] SET 
	[EmailTitle] = @EmailTitle,[TimeStr] = @TimeStr,[EmailContent] = @EmailContent,[FuJian] = @FuJian,[FromUser] = @FromUser,[ToUser] = @ToUser,[EmailState] = @EmailState
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNetEmail_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNetEmail_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNetEmail_Delete
@ID int
 AS 
	DELETE [ERPNetEmail]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNetEmail_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNetEmail_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNetEmail_GetModel
@ID int
 AS 
	SELECT 
	ID,EmailTitle,TimeStr,EmailContent,FuJian,FromUser,ToUser,EmailState
	 FROM [ERPNetEmail]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNetEmail_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNetEmail_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNetEmail_GetList
 AS 
	SELECT 
	ID,EmailTitle,TimeStr,EmailContent,FuJian,FromUser,ToUser,EmailState
	 FROM [ERPNetEmail]

GO


/******************************************************************
* 表名：ERPNForm
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNForm_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNForm_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNForm_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPNForm]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNForm_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNForm_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNForm_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPNForm] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNForm_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNForm_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNForm_ADD
@ID int output,
@FormName varchar(50),
@TypeID int,
@UserListOK varchar(8000),
@DepListOK varchar(8000),
@JiaoSeListOK varchar(8000),
@PaiXuStr varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@ContentStr text,
@ItemsList varchar(8000),
@IFOK varchar(50),
@FormDataName nvarchar(50),
@ItemList nvarchar(100)

 AS 
	INSERT INTO [ERPNForm](
	[FormName],[TypeID],[UserListOK],[DepListOK],[JiaoSeListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK],[FormDataName],[ItemList]
	)VALUES(
	@FormName,@TypeID,@UserListOK,@DepListOK,@JiaoSeListOK,@PaiXuStr,@UserName,@TimeStr,@ContentStr,@ItemsList,@IFOK,@FormDataName,@ItemList
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNForm_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNForm_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNForm_Update
@ID int,
@FormName varchar(50),
@TypeID int,
@UserListOK varchar(8000),
@DepListOK varchar(8000),
@JiaoSeListOK varchar(8000),
@PaiXuStr varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@ContentStr text,
@ItemsList varchar(8000),
@IFOK varchar(50),
@FormDataName nvarchar(50),
@ItemList nvarchar(100)
 AS 
	UPDATE [ERPNForm] SET 
	[FormName] = @FormName,[TypeID] = @TypeID,[UserListOK] = @UserListOK,[DepListOK] = @DepListOK,[JiaoSeListOK] = @JiaoSeListOK,[PaiXuStr] = @PaiXuStr,[UserName] = @UserName,[TimeStr] = @TimeStr,[ContentStr] = @ContentStr,[ItemsList] = @ItemsList,[IFOK] = @IFOK,[FormDataName] = @FormDataName,[ItemList] = @ItemList
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNForm_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNForm_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNForm_Delete
@ID int
 AS 
	DELETE [ERPNForm]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNForm_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNForm_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNForm_GetModel
@ID int
 AS 
	SELECT 
	ID,FormName,TypeID,UserListOK,DepListOK,JiaoSeListOK,PaiXuStr,UserName,TimeStr,ContentStr,ItemsList,IFOK,FormDataName,ItemList
	 FROM [ERPNForm]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNForm_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNForm_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNForm_GetList
 AS 
	SELECT 
	ID,FormName,TypeID,UserListOK,DepListOK,JiaoSeListOK,PaiXuStr,UserName,TimeStr,ContentStr,ItemsList,IFOK,FormDataName,ItemList
	 FROM [ERPNForm]

GO


/******************************************************************
* 表名：ERPNFormType
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNFormType_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNFormType_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNFormType_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPNFormType]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNFormType_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNFormType_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNFormType_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPNFormType] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNFormType_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNFormType_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNFormType_ADD
@ID int output,
@TypeName varchar(50),
@PaiXuStr varchar(50),
@BackInfo varchar(2000)

 AS 
	INSERT INTO [ERPNFormType](
	[TypeName],[PaiXuStr],[BackInfo]
	)VALUES(
	@TypeName,@PaiXuStr,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNFormType_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNFormType_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNFormType_Update
@ID int,
@TypeName varchar(50),
@PaiXuStr varchar(50),
@BackInfo varchar(2000)
 AS 
	UPDATE [ERPNFormType] SET 
	[TypeName] = @TypeName,[PaiXuStr] = @PaiXuStr,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNFormType_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNFormType_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNFormType_Delete
@ID int
 AS 
	DELETE [ERPNFormType]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNFormType_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNFormType_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNFormType_GetModel
@ID int
 AS 
	SELECT 
	ID,TypeName,PaiXuStr,BackInfo
	 FROM [ERPNFormType]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNFormType_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNFormType_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNFormType_GetList
 AS 
	SELECT 
	ID,TypeName,PaiXuStr,BackInfo
	 FROM [ERPNFormType]

GO


/******************************************************************
* 表名：ERPNWorkDetails
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkDetails_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkDetails_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkDetails_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPNWorkDetails]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkDetails_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkDetails_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkDetails_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPNWorkDetails] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkDetails_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkDetails_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkDetails_ADD
@ID int output,
@WorkID int,
@ItemsNameCN varchar(50),
@ItemsNameEn varchar(50),
@ItemsValue varchar(8000)

 AS 
	INSERT INTO [ERPNWorkDetails](
	[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]
	)VALUES(
	@WorkID,@ItemsNameCN,@ItemsNameEn,@ItemsValue
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkDetails_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkDetails_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkDetails_Update
@ID int,
@WorkID int,
@ItemsNameCN varchar(50),
@ItemsNameEn varchar(50),
@ItemsValue varchar(8000)
 AS 
	UPDATE [ERPNWorkDetails] SET 
	[WorkID] = @WorkID,[ItemsNameCN] = @ItemsNameCN,[ItemsNameEn] = @ItemsNameEn,[ItemsValue] = @ItemsValue
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkDetails_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkDetails_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkDetails_Delete
@ID int
 AS 
	DELETE [ERPNWorkDetails]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkDetails_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkDetails_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkDetails_GetModel
@ID int
 AS 
	SELECT 
	ID,WorkID,ItemsNameCN,ItemsNameEn,ItemsValue
	 FROM [ERPNWorkDetails]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkDetails_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkDetails_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkDetails_GetList
 AS 
	SELECT 
	ID,WorkID,ItemsNameCN,ItemsNameEn,ItemsValue
	 FROM [ERPNWorkDetails]

GO


/******************************************************************
* 表名：ERPNWorkFlow
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlow_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlow_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlow_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPNWorkFlow]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlow_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlow_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlow_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPNWorkFlow] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlow_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlow_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlow_ADD
@ID int output,
@WorkFlowName varchar(200),
@FormID int,
@UserListOK varchar(8000),
@DepListOK varchar(8000),
@JiaoSeListOK varchar(8000),
@PaiXuStr varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(2000),
@IFOK varchar(50)

 AS 
	INSERT INTO [ERPNWorkFlow](
	[WorkFlowName],[FormID],[UserListOK],[DepListOK],[JiaoSeListOK],[PaiXuStr],[UserName],[TimeStr],[BackInfo],[IFOK]
	)VALUES(
	@WorkFlowName,@FormID,@UserListOK,@DepListOK,@JiaoSeListOK,@PaiXuStr,@UserName,@TimeStr,@BackInfo,@IFOK
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlow_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlow_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlow_Update
@ID int,
@WorkFlowName varchar(200),
@FormID int,
@UserListOK varchar(8000),
@DepListOK varchar(8000),
@JiaoSeListOK varchar(8000),
@PaiXuStr varchar(50),
@UserName varchar(50),
@TimeStr datetime,
@BackInfo varchar(2000),
@IFOK varchar(50)
 AS 
	UPDATE [ERPNWorkFlow] SET 
	[WorkFlowName] = @WorkFlowName,[FormID] = @FormID,[UserListOK] = @UserListOK,[DepListOK] = @DepListOK,[JiaoSeListOK] = @JiaoSeListOK,[PaiXuStr] = @PaiXuStr,[UserName] = @UserName,[TimeStr] = @TimeStr,[BackInfo] = @BackInfo,[IFOK] = @IFOK
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlow_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlow_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlow_Delete
@ID int
 AS 
	DELETE [ERPNWorkFlow]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlow_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlow_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlow_GetModel
@ID int
 AS 
	SELECT 
	ID,WorkFlowName,FormID,UserListOK,DepListOK,JiaoSeListOK,PaiXuStr,UserName,TimeStr,BackInfo,IFOK
	 FROM [ERPNWorkFlow]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlow_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlow_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlow_GetList
 AS 
	SELECT 
	ID,WorkFlowName,FormID,UserListOK,DepListOK,JiaoSeListOK,PaiXuStr,UserName,TimeStr,BackInfo,IFOK
	 FROM [ERPNWorkFlow]

GO


/******************************************************************
* 表名：ERPNWorkFlowNode
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowNode_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowNode_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowNode_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPNWorkFlowNode]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowNode_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowNode_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowNode_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPNWorkFlowNode] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowNode_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowNode_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowNode_ADD
@ID int output,
@WorkFlowID int,
@NodeSerils varchar(50),
@NodeName varchar(50),
@NodeAddr varchar(50),
@NextNode varchar(50),
@IFCanJump varchar(50),
@IFCanView varchar(50),
@IFCanEdit varchar(50),
@IFCanDel varchar(50),
@JieShuHours int,
@PSType varchar(50),
@SPType varchar(50),
@SPDefaultList varchar(8000),
@CanWriteSet varchar(8000),
@SecretSet varchar(8000),
@ConditionSet varchar(8000),
@NodeLeft varchar(50),
@NodeTop varchar(50)

 AS 
	INSERT INTO [ERPNWorkFlowNode](
	[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[SecretSet],[ConditionSet],[NodeLeft],[NodeTop]
	)VALUES(
	@WorkFlowID,@NodeSerils,@NodeName,@NodeAddr,@NextNode,@IFCanJump,@IFCanView,@IFCanEdit,@IFCanDel,@JieShuHours,@PSType,@SPType,@SPDefaultList,@CanWriteSet,@SecretSet,@ConditionSet,@NodeLeft,@NodeTop
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowNode_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowNode_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowNode_Update
@ID int,
@WorkFlowID int,
@NodeSerils varchar(50),
@NodeName varchar(50),
@NodeAddr varchar(50),
@NextNode varchar(50),
@IFCanJump varchar(50),
@IFCanView varchar(50),
@IFCanEdit varchar(50),
@IFCanDel varchar(50),
@JieShuHours int,
@PSType varchar(50),
@SPType varchar(50),
@SPDefaultList varchar(8000),
@CanWriteSet varchar(8000),
@SecretSet varchar(8000),
@ConditionSet varchar(8000),
@NodeLeft varchar(50),
@NodeTop varchar(50)
 AS 
	UPDATE [ERPNWorkFlowNode] SET 
	[WorkFlowID] = @WorkFlowID,[NodeSerils] = @NodeSerils,[NodeName] = @NodeName,[NodeAddr] = @NodeAddr,[NextNode] = @NextNode,[IFCanJump] = @IFCanJump,[IFCanView] = @IFCanView,[IFCanEdit] = @IFCanEdit,[IFCanDel] = @IFCanDel,[JieShuHours] = @JieShuHours,[PSType] = @PSType,[SPType] = @SPType,[SPDefaultList] = @SPDefaultList,[CanWriteSet] = @CanWriteSet,[SecretSet] = @SecretSet,[ConditionSet] = @ConditionSet,[NodeLeft] = @NodeLeft,[NodeTop] = @NodeTop
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowNode_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowNode_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowNode_Delete
@ID int
 AS 
	DELETE [ERPNWorkFlowNode]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowNode_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowNode_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowNode_GetModel
@ID int
 AS 
	SELECT 
	ID,WorkFlowID,NodeSerils,NodeName,NodeAddr,NextNode,IFCanJump,IFCanView,IFCanEdit,IFCanDel,JieShuHours,PSType,SPType,SPDefaultList,CanWriteSet,SecretSet,ConditionSet,NodeLeft,NodeTop
	 FROM [ERPNWorkFlowNode]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowNode_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowNode_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowNode_GetList
 AS 
	SELECT 
	ID,WorkFlowID,NodeSerils,NodeName,NodeAddr,NextNode,IFCanJump,IFCanView,IFCanEdit,IFCanDel,JieShuHours,PSType,SPType,SPDefaultList,CanWriteSet,SecretSet,ConditionSet,NodeLeft,NodeTop
	 FROM [ERPNWorkFlowNode]

GO


/******************************************************************
* 表名：ERPNWorkFlowWT
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowWT_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowWT_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowWT_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPNWorkFlowWT]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowWT_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowWT_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowWT_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPNWorkFlowWT] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowWT_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowWT_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowWT_ADD
@ID int output,
@FromUser varchar(50),
@ToUser varchar(50),
@Days int,
@DayTime datetime

 AS 
	INSERT INTO [ERPNWorkFlowWT](
	[FromUser],[ToUser],[Days],[DayTime]
	)VALUES(
	@FromUser,@ToUser,@Days,@DayTime
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowWT_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowWT_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowWT_Update
@ID int,
@FromUser varchar(50),
@ToUser varchar(50),
@Days int,
@DayTime datetime
 AS 
	UPDATE [ERPNWorkFlowWT] SET 
	[FromUser] = @FromUser,[ToUser] = @ToUser,[Days] = @Days,[DayTime] = @DayTime
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowWT_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowWT_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowWT_Delete
@ID int
 AS 
	DELETE [ERPNWorkFlowWT]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowWT_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowWT_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowWT_GetModel
@ID int
 AS 
	SELECT 
	ID,FromUser,ToUser,Days,DayTime
	 FROM [ERPNWorkFlowWT]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkFlowWT_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkFlowWT_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkFlowWT_GetList
 AS 
	SELECT 
	ID,FromUser,ToUser,Days,DayTime
	 FROM [ERPNWorkFlowWT]

GO


/******************************************************************
* 表名：ERPNWorkToDo
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkToDo_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkToDo_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkToDo_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPNWorkToDo]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkToDo_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkToDo_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkToDo_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPNWorkToDo] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkToDo_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkToDo_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkToDo_ADD
@ID int output,
@WorkName varchar(200),
@FormID int,
@WorkFlowID int,
@UserName varchar(50),
@TimeStr datetime,
@FormContent text,
@FuJianList varchar(5000),
@ShenPiYiJian text,
@JieDianID int,
@JieDianName varchar(50),
@ShenPiUserList varchar(8000),
@OKUserList varchar(8000),
@StateNow varchar(50),
@LateTime datetime,
@ChaoSongUserList varchar(8000)

 AS 
	INSERT INTO [ERPNWorkToDo](
	[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[FuJianList],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime],[ChaoSongUserList]
	)VALUES(
	@WorkName,@FormID,@WorkFlowID,@UserName,@TimeStr,@FormContent,@FuJianList,@ShenPiYiJian,@JieDianID,@JieDianName,@ShenPiUserList,@OKUserList,@StateNow,@LateTime,@ChaoSongUserList
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkToDo_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkToDo_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkToDo_Update
@ID int,
@WorkName varchar(200),
@FormID int,
@WorkFlowID int,
@UserName varchar(50),
@TimeStr datetime,
@FormContent text,
@FuJianList varchar(5000),
@ShenPiYiJian text,
@JieDianID int,
@JieDianName varchar(50),
@ShenPiUserList varchar(8000),
@OKUserList varchar(8000),
@StateNow varchar(50),
@LateTime datetime,
@ChaoSongUserList varchar(8000)
 AS 
	UPDATE [ERPNWorkToDo] SET 
	[WorkName] = @WorkName,[FormID] = @FormID,[WorkFlowID] = @WorkFlowID,[UserName] = @UserName,[TimeStr] = @TimeStr,[FormContent] = @FormContent,[FuJianList] = @FuJianList,[ShenPiYiJian] = @ShenPiYiJian,[JieDianID] = @JieDianID,[JieDianName] = @JieDianName,[ShenPiUserList] = @ShenPiUserList,[OKUserList] = @OKUserList,[StateNow] = @StateNow,[LateTime] = @LateTime,[ChaoSongUserList] = @ChaoSongUserList
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkToDo_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkToDo_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkToDo_Delete
@ID int
 AS 
	DELETE [ERPNWorkToDo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkToDo_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkToDo_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkToDo_GetModel
@ID int
 AS 
	SELECT 
	ID,WorkName,FormID,WorkFlowID,UserName,TimeStr,FormContent,FuJianList,ShenPiYiJian,JieDianID,JieDianName,ShenPiUserList,OKUserList,StateNow,LateTime,ChaoSongUserList
	 FROM [ERPNWorkToDo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPNWorkToDo_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPNWorkToDo_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPNWorkToDo_GetList
 AS 
	SELECT 
	ID,WorkName,FormID,WorkFlowID,UserName,TimeStr,FormContent,FuJianList,ShenPiYiJian,JieDianID,JieDianName,ShenPiUserList,OKUserList,StateNow,LateTime,ChaoSongUserList
	 FROM [ERPNWorkToDo]

GO


/******************************************************************
* 表名：ERPOffice
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPOffice_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPOffice_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPOffice_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPOffice]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPOffice_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPOffice_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPOffice_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPOffice] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPOffice_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPOffice_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPOffice_ADD
@ID int output,
@OfficeName varchar(50),
@MiaoShu varchar(5000),
@FuJianStr varchar(500),
@TypeStr varchar(100),
@Serils varchar(100),
@DanWei varchar(50),
@DanJia varchar(50),
@GongYingShang varchar(100),
@MinNum varchar(50),
@MaxNum varchar(50),
@NowNum varchar(50),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPOffice](
	[OfficeName],[MiaoShu],[FuJianStr],[TypeStr],[Serils],[DanWei],[DanJia],[GongYingShang],[MinNum],[MaxNum],[NowNum],[UserName],[TimeStr]
	)VALUES(
	@OfficeName,@MiaoShu,@FuJianStr,@TypeStr,@Serils,@DanWei,@DanJia,@GongYingShang,@MinNum,@MaxNum,@NowNum,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPOffice_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPOffice_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPOffice_Update
@ID int,
@OfficeName varchar(50),
@MiaoShu varchar(5000),
@FuJianStr varchar(500),
@TypeStr varchar(100),
@Serils varchar(100),
@DanWei varchar(50),
@DanJia varchar(50),
@GongYingShang varchar(100),
@MinNum varchar(50),
@MaxNum varchar(50),
@NowNum varchar(50),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPOffice] SET 
	[OfficeName] = @OfficeName,[MiaoShu] = @MiaoShu,[FuJianStr] = @FuJianStr,[TypeStr] = @TypeStr,[Serils] = @Serils,[DanWei] = @DanWei,[DanJia] = @DanJia,[GongYingShang] = @GongYingShang,[MinNum] = @MinNum,[MaxNum] = @MaxNum,[NowNum] = @NowNum,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPOffice_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPOffice_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPOffice_Delete
@ID int
 AS 
	DELETE [ERPOffice]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPOffice_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPOffice_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPOffice_GetModel
@ID int
 AS 
	SELECT 
	ID,OfficeName,MiaoShu,FuJianStr,TypeStr,Serils,DanWei,DanJia,GongYingShang,MinNum,MaxNum,NowNum,UserName,TimeStr
	 FROM [ERPOffice]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPOffice_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPOffice_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPOffice_GetList
 AS 
	SELECT 
	ID,OfficeName,MiaoShu,FuJianStr,TypeStr,Serils,DanWei,DanJia,GongYingShang,MinNum,MaxNum,NowNum,UserName,TimeStr
	 FROM [ERPOffice]

GO


/******************************************************************
* 表名：ERPPeiXun
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXun_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXun_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXun_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPPeiXun]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXun_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXun_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXun_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPPeiXun] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXun_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXun_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXun_ADD
@ID int output,
@PeiXunName varchar(50),
@PeiXunUser varchar(50),
@CanYuUser varchar(8000),
@StartDate varchar(50),
@EndDate varchar(50),
@PeiXunMuDi varchar(5000),
@PeiXunNeiRong varchar(5000),
@XiaoGuo varchar(5000),
@BackInfo varchar(5000),
@FuJianList varchar(5000),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPPeiXun](
	[PeiXunName],[PeiXunUser],[CanYuUser],[StartDate],[EndDate],[PeiXunMuDi],[PeiXunNeiRong],[XiaoGuo],[BackInfo],[FuJianList],[UserName],[TimeStr]
	)VALUES(
	@PeiXunName,@PeiXunUser,@CanYuUser,@StartDate,@EndDate,@PeiXunMuDi,@PeiXunNeiRong,@XiaoGuo,@BackInfo,@FuJianList,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXun_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXun_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXun_Update
@ID int,
@PeiXunName varchar(50),
@PeiXunUser varchar(50),
@CanYuUser varchar(8000),
@StartDate varchar(50),
@EndDate varchar(50),
@PeiXunMuDi varchar(5000),
@PeiXunNeiRong varchar(5000),
@XiaoGuo varchar(5000),
@BackInfo varchar(5000),
@FuJianList varchar(5000),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPPeiXun] SET 
	[PeiXunName] = @PeiXunName,[PeiXunUser] = @PeiXunUser,[CanYuUser] = @CanYuUser,[StartDate] = @StartDate,[EndDate] = @EndDate,[PeiXunMuDi] = @PeiXunMuDi,[PeiXunNeiRong] = @PeiXunNeiRong,[XiaoGuo] = @XiaoGuo,[BackInfo] = @BackInfo,[FuJianList] = @FuJianList,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXun_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXun_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXun_Delete
@ID int
 AS 
	DELETE [ERPPeiXun]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXun_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXun_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXun_GetModel
@ID int
 AS 
	SELECT 
	ID,PeiXunName,PeiXunUser,CanYuUser,StartDate,EndDate,PeiXunMuDi,PeiXunNeiRong,XiaoGuo,BackInfo,FuJianList,UserName,TimeStr
	 FROM [ERPPeiXun]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXun_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXun_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXun_GetList
 AS 
	SELECT 
	ID,PeiXunName,PeiXunUser,CanYuUser,StartDate,EndDate,PeiXunMuDi,PeiXunNeiRong,XiaoGuo,BackInfo,FuJianList,UserName,TimeStr
	 FROM [ERPPeiXun]

GO


/******************************************************************
* 表名：ERPPeiXunRiJi
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunRiJi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunRiJi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunRiJi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPPeiXunRiJi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunRiJi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunRiJi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunRiJi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPPeiXunRiJi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunRiJi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunRiJi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunRiJi_ADD
@ID int output,
@PeiXunName varchar(50),
@RiJiTitle varchar(50),
@RiJiDate varchar(50),
@RiJiContent text,
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPPeiXunRiJi](
	[PeiXunName],[RiJiTitle],[RiJiDate],[RiJiContent],[UserName],[TimeStr]
	)VALUES(
	@PeiXunName,@RiJiTitle,@RiJiDate,@RiJiContent,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunRiJi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunRiJi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunRiJi_Update
@ID int,
@PeiXunName varchar(50),
@RiJiTitle varchar(50),
@RiJiDate varchar(50),
@RiJiContent text,
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPPeiXunRiJi] SET 
	[PeiXunName] = @PeiXunName,[RiJiTitle] = @RiJiTitle,[RiJiDate] = @RiJiDate,[RiJiContent] = @RiJiContent,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunRiJi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunRiJi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunRiJi_Delete
@ID int
 AS 
	DELETE [ERPPeiXunRiJi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunRiJi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunRiJi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunRiJi_GetModel
@ID int
 AS 
	SELECT 
	ID,PeiXunName,RiJiTitle,RiJiDate,RiJiContent,UserName,TimeStr
	 FROM [ERPPeiXunRiJi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunRiJi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunRiJi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunRiJi_GetList
 AS 
	SELECT 
	ID,PeiXunName,RiJiTitle,RiJiDate,RiJiContent,UserName,TimeStr
	 FROM [ERPPeiXunRiJi]

GO


/******************************************************************
* 表名：ERPPeiXunXiaoGuo
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunXiaoGuo_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunXiaoGuo_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunXiaoGuo_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPPeiXunXiaoGuo]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunXiaoGuo_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunXiaoGuo_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunXiaoGuo_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPPeiXunXiaoGuo] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunXiaoGuo_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunXiaoGuo_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunXiaoGuo_ADD
@ID int output,
@PeiXunName varchar(50),
@FanKuiZhuTi varchar(50),
@XiaoGuoFanKui varchar(5000),
@ZongTiJieLun varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPPeiXunXiaoGuo](
	[PeiXunName],[FanKuiZhuTi],[XiaoGuoFanKui],[ZongTiJieLun],[UserName],[TimeStr]
	)VALUES(
	@PeiXunName,@FanKuiZhuTi,@XiaoGuoFanKui,@ZongTiJieLun,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunXiaoGuo_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunXiaoGuo_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunXiaoGuo_Update
@ID int,
@PeiXunName varchar(50),
@FanKuiZhuTi varchar(50),
@XiaoGuoFanKui varchar(5000),
@ZongTiJieLun varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPPeiXunXiaoGuo] SET 
	[PeiXunName] = @PeiXunName,[FanKuiZhuTi] = @FanKuiZhuTi,[XiaoGuoFanKui] = @XiaoGuoFanKui,[ZongTiJieLun] = @ZongTiJieLun,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunXiaoGuo_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunXiaoGuo_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunXiaoGuo_Delete
@ID int
 AS 
	DELETE [ERPPeiXunXiaoGuo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunXiaoGuo_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunXiaoGuo_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunXiaoGuo_GetModel
@ID int
 AS 
	SELECT 
	ID,PeiXunName,FanKuiZhuTi,XiaoGuoFanKui,ZongTiJieLun,UserName,TimeStr
	 FROM [ERPPeiXunXiaoGuo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPeiXunXiaoGuo_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPeiXunXiaoGuo_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPeiXunXiaoGuo_GetList
 AS 
	SELECT 
	ID,PeiXunName,FanKuiZhuTi,XiaoGuoFanKui,ZongTiJieLun,UserName,TimeStr
	 FROM [ERPPeiXunXiaoGuo]

GO


/******************************************************************
* 表名：ERPPinShen
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPinShen_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPinShen_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPinShen_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPPinShen]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPinShen_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPinShen_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPinShen_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPPinShen] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPinShen_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPinShen_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPinShen_ADD
@ID int output,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@PingShenTime varchar(50),
@PingShenJieGuo varchar(8000),
@UserName varchar(50),
@TimeStr datetime,
@BachInfo text

 AS 
	INSERT INTO [ERPPinShen](
	[ProjectName],[ProjectSerils],[PingShenTime],[PingShenJieGuo],[UserName],[TimeStr],[BachInfo]
	)VALUES(
	@ProjectName,@ProjectSerils,@PingShenTime,@PingShenJieGuo,@UserName,@TimeStr,@BachInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPinShen_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPinShen_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPinShen_Update
@ID int,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@PingShenTime varchar(50),
@PingShenJieGuo varchar(8000),
@UserName varchar(50),
@TimeStr datetime,
@BachInfo text
 AS 
	UPDATE [ERPPinShen] SET 
	[ProjectName] = @ProjectName,[ProjectSerils] = @ProjectSerils,[PingShenTime] = @PingShenTime,[PingShenJieGuo] = @PingShenJieGuo,[UserName] = @UserName,[TimeStr] = @TimeStr,[BachInfo] = @BachInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPinShen_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPinShen_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPinShen_Delete
@ID int
 AS 
	DELETE [ERPPinShen]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPinShen_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPinShen_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPinShen_GetModel
@ID int
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,PingShenTime,PingShenJieGuo,UserName,TimeStr,BachInfo
	 FROM [ERPPinShen]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPPinShen_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPPinShen_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPPinShen_GetList
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,PingShenTime,PingShenJieGuo,UserName,TimeStr,BachInfo
	 FROM [ERPPinShen]

GO


/******************************************************************
* 表名：ERPProduct
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProduct_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProduct_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProduct_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPProduct]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProduct_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProduct_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProduct_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPProduct] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProduct_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProduct_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProduct_ADD
@ID int output,
@ProductName varchar(50),
@ProductSerils varchar(50),
@GongYingShang varchar(50),
@ProductType varchar(50),
@XingHao varchar(50),
@DanWei varchar(50),
@ChengBen varchar(50),
@ChuShou varchar(50),
@RuKuSum numeric(18,2),
@ChuKuSum numeric(18,2),
@NowKuCun numeric(18,2),
@KuCunBaoJing numeric(18,2),
@CunChuWeiZhi varchar(50),
@ChanPinMiaoShu varchar(5000),
@BackInfo varchar(5000),
@ProductSize varchar(50),
@Performance varchar(50),
@Coating varchar(50),
@SurfaceTreatment varchar(50),
@MagnetizingDirection varchar(50),
@Tolerance varchar(50),
@IsContainingTax int

 AS 
	INSERT INTO [ERPProduct](
	[ProductName],[ProductSerils],[GongYingShang],[ProductType],[XingHao],[DanWei],[ChengBen],[ChuShou],[RuKuSum],[ChuKuSum],[NowKuCun],[KuCunBaoJing],[CunChuWeiZhi],[ChanPinMiaoShu],[BackInfo],[ProductSize],[Performance],[Coating],[SurfaceTreatment],[MagnetizingDirection],[Tolerance],[IsContainingTax]
	)VALUES(
	@ProductName,@ProductSerils,@GongYingShang,@ProductType,@XingHao,@DanWei,@ChengBen,@ChuShou,@RuKuSum,@ChuKuSum,@NowKuCun,@KuCunBaoJing,@CunChuWeiZhi,@ChanPinMiaoShu,@BackInfo,@ProductSize,@Performance,@Coating,@SurfaceTreatment,@MagnetizingDirection,@Tolerance,@IsContainingTax
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProduct_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProduct_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProduct_Update
@ID int,
@ProductName varchar(50),
@ProductSerils varchar(50),
@GongYingShang varchar(50),
@ProductType varchar(50),
@XingHao varchar(50),
@DanWei varchar(50),
@ChengBen varchar(50),
@ChuShou varchar(50),
@RuKuSum numeric(18,2),
@ChuKuSum numeric(18,2),
@NowKuCun numeric(18,2),
@KuCunBaoJing numeric(18,2),
@CunChuWeiZhi varchar(50),
@ChanPinMiaoShu varchar(5000),
@BackInfo varchar(5000),
@ProductSize varchar(50),
@Performance varchar(50),
@Coating varchar(50),
@SurfaceTreatment varchar(50),
@MagnetizingDirection varchar(50),
@Tolerance varchar(50),
@IsContainingTax int
 AS 
	UPDATE [ERPProduct] SET 
	[ProductName] = @ProductName,[ProductSerils] = @ProductSerils,[GongYingShang] = @GongYingShang,[ProductType] = @ProductType,[XingHao] = @XingHao,[DanWei] = @DanWei,[ChengBen] = @ChengBen,[ChuShou] = @ChuShou,[RuKuSum] = @RuKuSum,[ChuKuSum] = @ChuKuSum,[NowKuCun] = @NowKuCun,[KuCunBaoJing] = @KuCunBaoJing,[CunChuWeiZhi] = @CunChuWeiZhi,[ChanPinMiaoShu] = @ChanPinMiaoShu,[BackInfo] = @BackInfo,[ProductSize] = @ProductSize,[Performance] = @Performance,[Coating] = @Coating,[SurfaceTreatment] = @SurfaceTreatment,[MagnetizingDirection] = @MagnetizingDirection,[Tolerance] = @Tolerance,[IsContainingTax] = @IsContainingTax
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProduct_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProduct_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProduct_Delete
@ID int
 AS 
	DELETE [ERPProduct]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProduct_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProduct_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProduct_GetModel
@ID int
 AS 
	SELECT 
	ID,ProductName,ProductSerils,GongYingShang,ProductType,XingHao,DanWei,ChengBen,ChuShou,RuKuSum,ChuKuSum,NowKuCun,KuCunBaoJing,CunChuWeiZhi,ChanPinMiaoShu,BackInfo,ProductSize,Performance,Coating,SurfaceTreatment,MagnetizingDirection,Tolerance,IsContainingTax
	 FROM [ERPProduct]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProduct_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProduct_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProduct_GetList
 AS 
	SELECT 
	ID,ProductName,ProductSerils,GongYingShang,ProductType,XingHao,DanWei,ChengBen,ChuShou,RuKuSum,ChuKuSum,NowKuCun,KuCunBaoJing,CunChuWeiZhi,ChanPinMiaoShu,BackInfo,ProductSize,Performance,Coating,SurfaceTreatment,MagnetizingDirection,Tolerance,IsContainingTax
	 FROM [ERPProduct]

GO


/******************************************************************
* 表名：ERPProject
* 时间：2014/6/4 23:05:08
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProject_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProject_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProject_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPProject]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProject_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProject_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProject_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPProject] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProject_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProject_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProject_ADD
@ID int output,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@SuoShuKeHu varchar(200),
@YuJiChengJiaoRiQi varchar(50),
@TiXingDate varchar(5000),
@FuZeRen varchar(50),
@XiangMuJinE varchar(200),
@XiangMuYuSuan varchar(200),
@XiangMuDaXiao varchar(50),
@PeiHeRenList varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@HeTongAndFuJian varchar(5000),
@BackInfo varchar(5000)

 AS 
	INSERT INTO [ERPProject](
	[ProjectName],[ProjectSerils],[SuoShuKeHu],[YuJiChengJiaoRiQi],[TiXingDate],[FuZeRen],[XiangMuJinE],[XiangMuYuSuan],[XiangMuDaXiao],[PeiHeRenList],[UserName],[TimeStr],[HeTongAndFuJian],[BackInfo]
	)VALUES(
	@ProjectName,@ProjectSerils,@SuoShuKeHu,@YuJiChengJiaoRiQi,@TiXingDate,@FuZeRen,@XiangMuJinE,@XiangMuYuSuan,@XiangMuDaXiao,@PeiHeRenList,@UserName,@TimeStr,@HeTongAndFuJian,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProject_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProject_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProject_Update
@ID int,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@SuoShuKeHu varchar(200),
@YuJiChengJiaoRiQi varchar(50),
@TiXingDate varchar(5000),
@FuZeRen varchar(50),
@XiangMuJinE varchar(200),
@XiangMuYuSuan varchar(200),
@XiangMuDaXiao varchar(50),
@PeiHeRenList varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@HeTongAndFuJian varchar(5000),
@BackInfo varchar(5000)
 AS 
	UPDATE [ERPProject] SET 
	[ProjectName] = @ProjectName,[ProjectSerils] = @ProjectSerils,[SuoShuKeHu] = @SuoShuKeHu,[YuJiChengJiaoRiQi] = @YuJiChengJiaoRiQi,[TiXingDate] = @TiXingDate,[FuZeRen] = @FuZeRen,[XiangMuJinE] = @XiangMuJinE,[XiangMuYuSuan] = @XiangMuYuSuan,[XiangMuDaXiao] = @XiangMuDaXiao,[PeiHeRenList] = @PeiHeRenList,[UserName] = @UserName,[TimeStr] = @TimeStr,[HeTongAndFuJian] = @HeTongAndFuJian,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProject_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProject_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProject_Delete
@ID int
 AS 
	DELETE [ERPProject]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProject_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProject_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProject_GetModel
@ID int
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,SuoShuKeHu,YuJiChengJiaoRiQi,TiXingDate,FuZeRen,XiangMuJinE,XiangMuYuSuan,XiangMuDaXiao,PeiHeRenList,UserName,TimeStr,HeTongAndFuJian,BackInfo
	 FROM [ERPProject]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPProject_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPProject_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:08
------------------------------------
CREATE PROCEDURE ERPProject_GetList
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,SuoShuKeHu,YuJiChengJiaoRiQi,TiXingDate,FuZeRen,XiangMuJinE,XiangMuYuSuan,XiangMuDaXiao,PeiHeRenList,UserName,TimeStr,HeTongAndFuJian,BackInfo
	 FROM [ERPProject]

GO


/******************************************************************
* 表名：ERPRecive
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRecive_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRecive_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRecive_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPRecive]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRecive_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRecive_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRecive_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPRecive] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRecive_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRecive_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRecive_ADD
@ID int output,
@HeTongName varchar(200),
@QianYueKeHu varchar(200),
@DaoKuanDate datetime,
@TiXingDate datetime,
@CreateTime datetime,
@CreateUser varchar(50),
@BackInfo varchar(8000),
@NowState varchar(50),
@HTJE nvarchar(30),
@SFDK nvarchar(20)

 AS 
	INSERT INTO [ERPRecive](
	[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[BackInfo],[NowState],[HTJE],[SFDK]
	)VALUES(
	@HeTongName,@QianYueKeHu,@DaoKuanDate,@TiXingDate,@CreateTime,@CreateUser,@BackInfo,@NowState,@HTJE,@SFDK
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRecive_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRecive_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRecive_Update
@ID int,
@HeTongName varchar(200),
@QianYueKeHu varchar(200),
@DaoKuanDate datetime,
@TiXingDate datetime,
@CreateTime datetime,
@CreateUser varchar(50),
@BackInfo varchar(8000),
@NowState varchar(50),
@HTJE nvarchar(30),
@SFDK nvarchar(20)
 AS 
	UPDATE [ERPRecive] SET 
	[HeTongName] = @HeTongName,[QianYueKeHu] = @QianYueKeHu,[DaoKuanDate] = @DaoKuanDate,[TiXingDate] = @TiXingDate,[CreateTime] = @CreateTime,[CreateUser] = @CreateUser,[BackInfo] = @BackInfo,[NowState] = @NowState,[HTJE] = @HTJE,[SFDK] = @SFDK
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRecive_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRecive_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRecive_Delete
@ID int
 AS 
	DELETE [ERPRecive]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRecive_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRecive_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRecive_GetModel
@ID int
 AS 
	SELECT 
	ID,HeTongName,QianYueKeHu,DaoKuanDate,TiXingDate,CreateTime,CreateUser,BackInfo,NowState,HTJE,SFDK
	 FROM [ERPRecive]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRecive_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRecive_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRecive_GetList
 AS 
	SELECT 
	ID,HeTongName,QianYueKeHu,DaoKuanDate,TiXingDate,CreateTime,CreateUser,BackInfo,NowState,HTJE,SFDK
	 FROM [ERPRecive]

GO


/******************************************************************
* 表名：ERPRedHead
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRedHead_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRedHead_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRedHead_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPRedHead]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRedHead_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRedHead_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRedHead_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPRedHead] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRedHead_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRedHead_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRedHead_ADD
@ID int output,
@FileName varchar(200),
@FilePath varchar(100),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPRedHead](
	[FileName],[FilePath],[UserName],[TimeStr]
	)VALUES(
	@FileName,@FilePath,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRedHead_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRedHead_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRedHead_Update
@ID int,
@FileName varchar(200),
@FilePath varchar(100),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPRedHead] SET 
	[FileName] = @FileName,[FilePath] = @FilePath,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRedHead_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRedHead_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRedHead_Delete
@ID int
 AS 
	DELETE [ERPRedHead]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRedHead_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRedHead_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRedHead_GetModel
@ID int
 AS 
	SELECT 
	ID,FileName,FilePath,UserName,TimeStr
	 FROM [ERPRedHead]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRedHead_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRedHead_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRedHead_GetList
 AS 
	SELECT 
	ID,FileName,FilePath,UserName,TimeStr
	 FROM [ERPRedHead]

GO


/******************************************************************
* 表名：ERPReimburse
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReimburse_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReimburse_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReimburse_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPReimburse]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReimburse_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReimburse_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReimburse_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPReimburse] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReimburse_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReimburse_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReimburse_ADD
@ID int output,
@UserName varchar(50),
@HeTongName varchar(200),
@QianYueKeHu varchar(200),
@ReimburseContent varchar(1000),
@ApplyTime varchar(30),
@Memo varchar(200)

 AS 
	INSERT INTO [ERPReimburse](
	[UserName],[HeTongName],[QianYueKeHu],[ReimburseContent],[ApplyTime],[Memo]
	)VALUES(
	@UserName,@HeTongName,@QianYueKeHu,@ReimburseContent,@ApplyTime,@Memo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReimburse_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReimburse_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReimburse_Update
@ID int,
@UserName varchar(50),
@HeTongName varchar(200),
@QianYueKeHu varchar(200),
@ReimburseContent varchar(1000),
@ApplyTime varchar(30),
@Memo varchar(200)
 AS 
	UPDATE [ERPReimburse] SET 
	[UserName] = @UserName,[HeTongName] = @HeTongName,[QianYueKeHu] = @QianYueKeHu,[ReimburseContent] = @ReimburseContent,[ApplyTime] = @ApplyTime,[Memo] = @Memo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReimburse_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReimburse_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReimburse_Delete
@ID int
 AS 
	DELETE [ERPReimburse]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReimburse_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReimburse_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReimburse_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,HeTongName,QianYueKeHu,ReimburseContent,ApplyTime,Memo
	 FROM [ERPReimburse]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReimburse_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReimburse_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReimburse_GetList
 AS 
	SELECT 
	ID,UserName,HeTongName,QianYueKeHu,ReimburseContent,ApplyTime,Memo
	 FROM [ERPReimburse]

GO


/******************************************************************
* 表名：ERPRenShiHeTong
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRenShiHeTong_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRenShiHeTong_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRenShiHeTong_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPRenShiHeTong]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRenShiHeTong_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRenShiHeTong_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRenShiHeTong_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPRenShiHeTong] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRenShiHeTong_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRenShiHeTong_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRenShiHeTong_ADD
@ID int output,
@HeTongUser varchar(50),
@NowState varchar(50),
@Serils varchar(50),
@TypeStr varchar(50),
@JingYe varchar(50),
@BaoMiXieYi varchar(50),
@QianYueDate varchar(50),
@ManYueDate varchar(50),
@JianZhengJiGuan varchar(50),
@JianZhengDate varchar(50),
@WeiYueZeRen varchar(5000),
@BackInfo varchar(5000),
@FuJianList varchar(5000),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPRenShiHeTong](
	[HeTongUser],[NowState],[Serils],[TypeStr],[JingYe],[BaoMiXieYi],[QianYueDate],[ManYueDate],[JianZhengJiGuan],[JianZhengDate],[WeiYueZeRen],[BackInfo],[FuJianList],[UserName],[TimeStr]
	)VALUES(
	@HeTongUser,@NowState,@Serils,@TypeStr,@JingYe,@BaoMiXieYi,@QianYueDate,@ManYueDate,@JianZhengJiGuan,@JianZhengDate,@WeiYueZeRen,@BackInfo,@FuJianList,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRenShiHeTong_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRenShiHeTong_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRenShiHeTong_Update
@ID int,
@HeTongUser varchar(50),
@NowState varchar(50),
@Serils varchar(50),
@TypeStr varchar(50),
@JingYe varchar(50),
@BaoMiXieYi varchar(50),
@QianYueDate varchar(50),
@ManYueDate varchar(50),
@JianZhengJiGuan varchar(50),
@JianZhengDate varchar(50),
@WeiYueZeRen varchar(5000),
@BackInfo varchar(5000),
@FuJianList varchar(5000),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPRenShiHeTong] SET 
	[HeTongUser] = @HeTongUser,[NowState] = @NowState,[Serils] = @Serils,[TypeStr] = @TypeStr,[JingYe] = @JingYe,[BaoMiXieYi] = @BaoMiXieYi,[QianYueDate] = @QianYueDate,[ManYueDate] = @ManYueDate,[JianZhengJiGuan] = @JianZhengJiGuan,[JianZhengDate] = @JianZhengDate,[WeiYueZeRen] = @WeiYueZeRen,[BackInfo] = @BackInfo,[FuJianList] = @FuJianList,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRenShiHeTong_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRenShiHeTong_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRenShiHeTong_Delete
@ID int
 AS 
	DELETE [ERPRenShiHeTong]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRenShiHeTong_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRenShiHeTong_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRenShiHeTong_GetModel
@ID int
 AS 
	SELECT 
	ID,HeTongUser,NowState,Serils,TypeStr,JingYe,BaoMiXieYi,QianYueDate,ManYueDate,JianZhengJiGuan,JianZhengDate,WeiYueZeRen,BackInfo,FuJianList,UserName,TimeStr
	 FROM [ERPRenShiHeTong]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRenShiHeTong_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRenShiHeTong_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRenShiHeTong_GetList
 AS 
	SELECT 
	ID,HeTongUser,NowState,Serils,TypeStr,JingYe,BaoMiXieYi,QianYueDate,ManYueDate,JianZhengJiGuan,JianZhengDate,WeiYueZeRen,BackInfo,FuJianList,UserName,TimeStr
	 FROM [ERPRenShiHeTong]

GO


/******************************************************************
* 表名：ERPReport
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReport_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReport_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReport_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPReport]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReport_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReport_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReport_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPReport] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReport_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReport_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReport_ADD
@ID int output,
@ReportName varchar(100),
@ReportSql varchar(8000),
@BackInfo varchar(5000),
@TypeID int,
@UserListOK varchar(8000),
@DepListOK varchar(8000),
@JiaoSeListOK varchar(8000),
@PaiXuStr varchar(50),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPReport](
	[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[DepListOK],[JiaoSeListOK],[PaiXuStr],[UserName],[TimeStr]
	)VALUES(
	@ReportName,@ReportSql,@BackInfo,@TypeID,@UserListOK,@DepListOK,@JiaoSeListOK,@PaiXuStr,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReport_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReport_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReport_Update
@ID int,
@ReportName varchar(100),
@ReportSql varchar(8000),
@BackInfo varchar(5000),
@TypeID int,
@UserListOK varchar(8000),
@DepListOK varchar(8000),
@JiaoSeListOK varchar(8000),
@PaiXuStr varchar(50),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPReport] SET 
	[ReportName] = @ReportName,[ReportSql] = @ReportSql,[BackInfo] = @BackInfo,[TypeID] = @TypeID,[UserListOK] = @UserListOK,[DepListOK] = @DepListOK,[JiaoSeListOK] = @JiaoSeListOK,[PaiXuStr] = @PaiXuStr,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReport_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReport_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReport_Delete
@ID int
 AS 
	DELETE [ERPReport]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReport_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReport_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReport_GetModel
@ID int
 AS 
	SELECT 
	ID,ReportName,ReportSql,BackInfo,TypeID,UserListOK,DepListOK,JiaoSeListOK,PaiXuStr,UserName,TimeStr
	 FROM [ERPReport]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReport_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReport_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReport_GetList
 AS 
	SELECT 
	ID,ReportName,ReportSql,BackInfo,TypeID,UserListOK,DepListOK,JiaoSeListOK,PaiXuStr,UserName,TimeStr
	 FROM [ERPReport]

GO


/******************************************************************
* 表名：ERPReportType
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReportType_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReportType_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReportType_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPReportType]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReportType_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReportType_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReportType_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPReportType] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReportType_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReportType_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReportType_ADD
@ID int output,
@TypeName varchar(50),
@BackInfo varchar(500),
@PaiXuStr varchar(50)

 AS 
	INSERT INTO [ERPReportType](
	[TypeName],[BackInfo],[PaiXuStr]
	)VALUES(
	@TypeName,@BackInfo,@PaiXuStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReportType_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReportType_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReportType_Update
@ID int,
@TypeName varchar(50),
@BackInfo varchar(500),
@PaiXuStr varchar(50)
 AS 
	UPDATE [ERPReportType] SET 
	[TypeName] = @TypeName,[BackInfo] = @BackInfo,[PaiXuStr] = @PaiXuStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReportType_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReportType_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReportType_Delete
@ID int
 AS 
	DELETE [ERPReportType]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReportType_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReportType_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReportType_GetModel
@ID int
 AS 
	SELECT 
	ID,TypeName,BackInfo,PaiXuStr
	 FROM [ERPReportType]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPReportType_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPReportType_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPReportType_GetList
 AS 
	SELECT 
	ID,TypeName,BackInfo,PaiXuStr
	 FROM [ERPReportType]

GO


/******************************************************************
* 表名：ERPRiZhi
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRiZhi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRiZhi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRiZhi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPRiZhi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRiZhi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRiZhi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRiZhi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPRiZhi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRiZhi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRiZhi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRiZhi_ADD
@ID int output,
@UserName varchar(50),
@TimeStr datetime,
@DoSomething varchar(1000),
@IpStr varchar(50)

 AS 
	INSERT INTO [ERPRiZhi](
	[UserName],[TimeStr],[DoSomething],[IpStr]
	)VALUES(
	@UserName,@TimeStr,@DoSomething,@IpStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRiZhi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRiZhi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRiZhi_Update
@ID int,
@UserName varchar(50),
@TimeStr datetime,
@DoSomething varchar(1000),
@IpStr varchar(50)
 AS 
	UPDATE [ERPRiZhi] SET 
	[UserName] = @UserName,[TimeStr] = @TimeStr,[DoSomething] = @DoSomething,[IpStr] = @IpStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRiZhi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRiZhi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRiZhi_Delete
@ID int
 AS 
	DELETE [ERPRiZhi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRiZhi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRiZhi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRiZhi_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,TimeStr,DoSomething,IpStr
	 FROM [ERPRiZhi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPRiZhi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPRiZhi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPRiZhi_GetList
 AS 
	SELECT 
	ID,UserName,TimeStr,DoSomething,IpStr
	 FROM [ERPRiZhi]

GO


/******************************************************************
* 表名：ERPSaveFileName
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSaveFileName_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSaveFileName_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSaveFileName_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPSaveFileName]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSaveFileName_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSaveFileName_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSaveFileName_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPSaveFileName] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSaveFileName_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSaveFileName_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSaveFileName_ADD
@ID int output,
@NowName varchar(50),
@OldName varchar(50)

 AS 
	INSERT INTO [ERPSaveFileName](
	[NowName],[OldName]
	)VALUES(
	@NowName,@OldName
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSaveFileName_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSaveFileName_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSaveFileName_Update
@ID int,
@NowName varchar(50),
@OldName varchar(50)
 AS 
	UPDATE [ERPSaveFileName] SET 
	[NowName] = @NowName,[OldName] = @OldName
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSaveFileName_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSaveFileName_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSaveFileName_Delete
@ID int
 AS 
	DELETE [ERPSaveFileName]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSaveFileName_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSaveFileName_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSaveFileName_GetModel
@ID int
 AS 
	SELECT 
	ID,NowName,OldName
	 FROM [ERPSaveFileName]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSaveFileName_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSaveFileName_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSaveFileName_GetList
 AS 
	SELECT 
	ID,NowName,OldName
	 FROM [ERPSaveFileName]

GO


/******************************************************************
* 表名：ERPSerils
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSerils_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSerils_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSerils_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPSerils]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSerils_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSerils_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSerils_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPSerils] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSerils_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSerils_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSerils_ADD
@ID int output,
@SerilsStr varchar(200),
@DateStr varchar(200),
@UserNum varchar(50),
@DanWeiStr varchar(5000)

 AS 
	INSERT INTO [ERPSerils](
	[SerilsStr],[DateStr],[UserNum],[DanWeiStr]
	)VALUES(
	@SerilsStr,@DateStr,@UserNum,@DanWeiStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSerils_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSerils_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSerils_Update
@ID int,
@SerilsStr varchar(200),
@DateStr varchar(200),
@UserNum varchar(50),
@DanWeiStr varchar(5000)
 AS 
	UPDATE [ERPSerils] SET 
	[SerilsStr] = @SerilsStr,[DateStr] = @DateStr,[UserNum] = @UserNum,[DanWeiStr] = @DanWeiStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSerils_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSerils_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSerils_Delete
@ID int
 AS 
	DELETE [ERPSerils]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSerils_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSerils_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSerils_GetModel
@ID int
 AS 
	SELECT 
	ID,SerilsStr,DateStr,UserNum,DanWeiStr
	 FROM [ERPSerils]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSerils_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSerils_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSerils_GetList
 AS 
	SELECT 
	ID,SerilsStr,DateStr,UserNum,DanWeiStr
	 FROM [ERPSerils]

GO


/******************************************************************
* 表名：ERPSheBei
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSheBei_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSheBei_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSheBei_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPSheBei]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSheBei_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSheBei_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSheBei_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPSheBei] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSheBei_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSheBei_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSheBei_ADD
@ID int output,
@SheBeiName varchar(50),
@YuanBianHao varchar(50),
@CaiWuBianHao varchar(50),
@JiBuBianHao varchar(50),
@SheBeiLeiBie varchar(50),
@XingHao varchar(50),
@XiangMu varchar(50),
@ChuChangBianHao varchar(50),
@ShiYongBuMen varchar(50),
@ShengChanChangJia varchar(50),
@DanWei varchar(50),
@DanJia varchar(50),
@SuYuanFangShi varchar(50),
@SuYaunDanWei varchar(50),
@SuYuanZhouQi varchar(50),
@ShangCiSuYuanDate varchar(50),
@JiHuaSuYaunDate varchar(50),
@ZhengShuBianHao varchar(50),
@CeLiangFanWei varchar(50),
@BuQueDingDu varchar(50),
@ShiYongCeLiangFanWei varchar(50),
@JingDu varchar(50),
@JieGuoPingJia varchar(50),
@PingJiaUser varchar(50),
@QianZiDate varchar(50),
@ZhengGai varchar(50),
@ChuCiSuYuanDate varchar(50),
@QiYongDate varchar(50),
@CunFangAddr varchar(50),
@GuanLiUser varchar(50),
@JiFei varchar(50),
@ZhuangTai varchar(50),
@BeiZhu varchar(500),
@HeDuiUser varchar(50),
@TiXingDate varchar(50),
@TiXingUser varchar(50),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPSheBei](
	[SheBeiName],[YuanBianHao],[CaiWuBianHao],[JiBuBianHao],[SheBeiLeiBie],[XingHao],[XiangMu],[ChuChangBianHao],[ShiYongBuMen],[ShengChanChangJia],[DanWei],[DanJia],[SuYuanFangShi],[SuYaunDanWei],[SuYuanZhouQi],[ShangCiSuYuanDate],[JiHuaSuYaunDate],[ZhengShuBianHao],[CeLiangFanWei],[BuQueDingDu],[ShiYongCeLiangFanWei],[JingDu],[JieGuoPingJia],[PingJiaUser],[QianZiDate],[ZhengGai],[ChuCiSuYuanDate],[QiYongDate],[CunFangAddr],[GuanLiUser],[JiFei],[ZhuangTai],[BeiZhu],[HeDuiUser],[TiXingDate],[TiXingUser],[UserName],[TimeStr]
	)VALUES(
	@SheBeiName,@YuanBianHao,@CaiWuBianHao,@JiBuBianHao,@SheBeiLeiBie,@XingHao,@XiangMu,@ChuChangBianHao,@ShiYongBuMen,@ShengChanChangJia,@DanWei,@DanJia,@SuYuanFangShi,@SuYaunDanWei,@SuYuanZhouQi,@ShangCiSuYuanDate,@JiHuaSuYaunDate,@ZhengShuBianHao,@CeLiangFanWei,@BuQueDingDu,@ShiYongCeLiangFanWei,@JingDu,@JieGuoPingJia,@PingJiaUser,@QianZiDate,@ZhengGai,@ChuCiSuYuanDate,@QiYongDate,@CunFangAddr,@GuanLiUser,@JiFei,@ZhuangTai,@BeiZhu,@HeDuiUser,@TiXingDate,@TiXingUser,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSheBei_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSheBei_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSheBei_Update
@ID int,
@SheBeiName varchar(50),
@YuanBianHao varchar(50),
@CaiWuBianHao varchar(50),
@JiBuBianHao varchar(50),
@SheBeiLeiBie varchar(50),
@XingHao varchar(50),
@XiangMu varchar(50),
@ChuChangBianHao varchar(50),
@ShiYongBuMen varchar(50),
@ShengChanChangJia varchar(50),
@DanWei varchar(50),
@DanJia varchar(50),
@SuYuanFangShi varchar(50),
@SuYaunDanWei varchar(50),
@SuYuanZhouQi varchar(50),
@ShangCiSuYuanDate varchar(50),
@JiHuaSuYaunDate varchar(50),
@ZhengShuBianHao varchar(50),
@CeLiangFanWei varchar(50),
@BuQueDingDu varchar(50),
@ShiYongCeLiangFanWei varchar(50),
@JingDu varchar(50),
@JieGuoPingJia varchar(50),
@PingJiaUser varchar(50),
@QianZiDate varchar(50),
@ZhengGai varchar(50),
@ChuCiSuYuanDate varchar(50),
@QiYongDate varchar(50),
@CunFangAddr varchar(50),
@GuanLiUser varchar(50),
@JiFei varchar(50),
@ZhuangTai varchar(50),
@BeiZhu varchar(500),
@HeDuiUser varchar(50),
@TiXingDate varchar(50),
@TiXingUser varchar(50),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPSheBei] SET 
	[SheBeiName] = @SheBeiName,[YuanBianHao] = @YuanBianHao,[CaiWuBianHao] = @CaiWuBianHao,[JiBuBianHao] = @JiBuBianHao,[SheBeiLeiBie] = @SheBeiLeiBie,[XingHao] = @XingHao,[XiangMu] = @XiangMu,[ChuChangBianHao] = @ChuChangBianHao,[ShiYongBuMen] = @ShiYongBuMen,[ShengChanChangJia] = @ShengChanChangJia,[DanWei] = @DanWei,[DanJia] = @DanJia,[SuYuanFangShi] = @SuYuanFangShi,[SuYaunDanWei] = @SuYaunDanWei,[SuYuanZhouQi] = @SuYuanZhouQi,[ShangCiSuYuanDate] = @ShangCiSuYuanDate,[JiHuaSuYaunDate] = @JiHuaSuYaunDate,[ZhengShuBianHao] = @ZhengShuBianHao,[CeLiangFanWei] = @CeLiangFanWei,[BuQueDingDu] = @BuQueDingDu,[ShiYongCeLiangFanWei] = @ShiYongCeLiangFanWei,[JingDu] = @JingDu,[JieGuoPingJia] = @JieGuoPingJia,[PingJiaUser] = @PingJiaUser,[QianZiDate] = @QianZiDate,[ZhengGai] = @ZhengGai,[ChuCiSuYuanDate] = @ChuCiSuYuanDate,[QiYongDate] = @QiYongDate,[CunFangAddr] = @CunFangAddr,[GuanLiUser] = @GuanLiUser,[JiFei] = @JiFei,[ZhuangTai] = @ZhuangTai,[BeiZhu] = @BeiZhu,[HeDuiUser] = @HeDuiUser,[TiXingDate] = @TiXingDate,[TiXingUser] = @TiXingUser,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSheBei_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSheBei_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSheBei_Delete
@ID int
 AS 
	DELETE [ERPSheBei]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSheBei_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSheBei_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSheBei_GetModel
@ID int
 AS 
	SELECT 
	ID,SheBeiName,YuanBianHao,CaiWuBianHao,JiBuBianHao,SheBeiLeiBie,XingHao,XiangMu,ChuChangBianHao,ShiYongBuMen,ShengChanChangJia,DanWei,DanJia,SuYuanFangShi,SuYaunDanWei,SuYuanZhouQi,ShangCiSuYuanDate,JiHuaSuYaunDate,ZhengShuBianHao,CeLiangFanWei,BuQueDingDu,ShiYongCeLiangFanWei,JingDu,JieGuoPingJia,PingJiaUser,QianZiDate,ZhengGai,ChuCiSuYuanDate,QiYongDate,CunFangAddr,GuanLiUser,JiFei,ZhuangTai,BeiZhu,HeDuiUser,TiXingDate,TiXingUser,UserName,TimeStr
	 FROM [ERPSheBei]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSheBei_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSheBei_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSheBei_GetList
 AS 
	SELECT 
	ID,SheBeiName,YuanBianHao,CaiWuBianHao,JiBuBianHao,SheBeiLeiBie,XingHao,XiangMu,ChuChangBianHao,ShiYongBuMen,ShengChanChangJia,DanWei,DanJia,SuYuanFangShi,SuYaunDanWei,SuYuanZhouQi,ShangCiSuYuanDate,JiHuaSuYaunDate,ZhengShuBianHao,CeLiangFanWei,BuQueDingDu,ShiYongCeLiangFanWei,JingDu,JieGuoPingJia,PingJiaUser,QianZiDate,ZhengGai,ChuCiSuYuanDate,QiYongDate,CunFangAddr,GuanLiUser,JiFei,ZhuangTai,BeiZhu,HeDuiUser,TiXingDate,TiXingUser,UserName,TimeStr
	 FROM [ERPSheBei]

GO


/******************************************************************
* 表名：ERPShenPi
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShenPi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShenPi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShenPi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPShenPi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShenPi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShenPi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShenPi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPShenPi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShenPi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShenPi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShenPi_ADD
@ID int output,
@ContentStr varchar(5000),
@TimeStr datetime,
@UserName varchar(50)

 AS 
	INSERT INTO [ERPShenPi](
	[ContentStr],[TimeStr],[UserName]
	)VALUES(
	@ContentStr,@TimeStr,@UserName
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShenPi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShenPi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShenPi_Update
@ID int,
@ContentStr varchar(5000),
@TimeStr datetime,
@UserName varchar(50)
 AS 
	UPDATE [ERPShenPi] SET 
	[ContentStr] = @ContentStr,[TimeStr] = @TimeStr,[UserName] = @UserName
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShenPi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShenPi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShenPi_Delete
@ID int
 AS 
	DELETE [ERPShenPi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShenPi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShenPi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShenPi_GetModel
@ID int
 AS 
	SELECT 
	ID,ContentStr,TimeStr,UserName
	 FROM [ERPShenPi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShenPi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShenPi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShenPi_GetList
 AS 
	SELECT 
	ID,ContentStr,TimeStr,UserName
	 FROM [ERPShenPi]

GO


/******************************************************************
* 表名：ERPShiShi
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShiShi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShiShi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShiShi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPShiShi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShiShi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShiShi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShiShi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPShiShi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShiShi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShiShi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShiShi_ADD
@ID int output,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@ShiShiTime varchar(50),
@ShiShiRen varchar(50),
@ShiShiContent varchar(500),
@WanGongLiang varchar(50),
@PingJia varchar(50),
@XiaoJie varchar(8000),
@WenTi varchar(8000),
@YuJiJieJueRiQi varchar(50),
@WenTiJieDa varchar(8000),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPShiShi](
	[ProjectName],[ProjectSerils],[ShiShiTime],[ShiShiRen],[ShiShiContent],[WanGongLiang],[PingJia],[XiaoJie],[WenTi],[YuJiJieJueRiQi],[WenTiJieDa],[UserName],[TimeStr]
	)VALUES(
	@ProjectName,@ProjectSerils,@ShiShiTime,@ShiShiRen,@ShiShiContent,@WanGongLiang,@PingJia,@XiaoJie,@WenTi,@YuJiJieJueRiQi,@WenTiJieDa,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShiShi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShiShi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShiShi_Update
@ID int,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@ShiShiTime varchar(50),
@ShiShiRen varchar(50),
@ShiShiContent varchar(500),
@WanGongLiang varchar(50),
@PingJia varchar(50),
@XiaoJie varchar(8000),
@WenTi varchar(8000),
@YuJiJieJueRiQi varchar(50),
@WenTiJieDa varchar(8000),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPShiShi] SET 
	[ProjectName] = @ProjectName,[ProjectSerils] = @ProjectSerils,[ShiShiTime] = @ShiShiTime,[ShiShiRen] = @ShiShiRen,[ShiShiContent] = @ShiShiContent,[WanGongLiang] = @WanGongLiang,[PingJia] = @PingJia,[XiaoJie] = @XiaoJie,[WenTi] = @WenTi,[YuJiJieJueRiQi] = @YuJiJieJueRiQi,[WenTiJieDa] = @WenTiJieDa,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShiShi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShiShi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShiShi_Delete
@ID int
 AS 
	DELETE [ERPShiShi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShiShi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShiShi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShiShi_GetModel
@ID int
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,ShiShiTime,ShiShiRen,ShiShiContent,WanGongLiang,PingJia,XiaoJie,WenTi,YuJiJieJueRiQi,WenTiJieDa,UserName,TimeStr
	 FROM [ERPShiShi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShiShi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShiShi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShiShi_GetList
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,ShiShiTime,ShiShiRen,ShiShiContent,WanGongLiang,PingJia,XiaoJie,WenTi,YuJiJieJueRiQi,WenTiJieDa,UserName,TimeStr
	 FROM [ERPShiShi]

GO


/******************************************************************
* 表名：ERPShouKuan
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShouKuan_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShouKuan_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShouKuan_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPShouKuan]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShouKuan_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShouKuan_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShouKuan_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPShouKuan] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShouKuan_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShouKuan_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShouKuan_ADD
@ID int output,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@JieDuanName varchar(50),
@ShouKuanE varchar(50),
@FaPiaoHao varchar(50),
@ShouKuanDate varchar(50),
@DaoKuanDate varchar(50),
@ShengYuE varchar(50),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPShouKuan](
	[ProjectName],[ProjectSerils],[JieDuanName],[ShouKuanE],[FaPiaoHao],[ShouKuanDate],[DaoKuanDate],[ShengYuE],[UserName],[TimeStr]
	)VALUES(
	@ProjectName,@ProjectSerils,@JieDuanName,@ShouKuanE,@FaPiaoHao,@ShouKuanDate,@DaoKuanDate,@ShengYuE,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShouKuan_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShouKuan_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShouKuan_Update
@ID int,
@ProjectName varchar(200),
@ProjectSerils varchar(50),
@JieDuanName varchar(50),
@ShouKuanE varchar(50),
@FaPiaoHao varchar(50),
@ShouKuanDate varchar(50),
@DaoKuanDate varchar(50),
@ShengYuE varchar(50),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPShouKuan] SET 
	[ProjectName] = @ProjectName,[ProjectSerils] = @ProjectSerils,[JieDuanName] = @JieDuanName,[ShouKuanE] = @ShouKuanE,[FaPiaoHao] = @FaPiaoHao,[ShouKuanDate] = @ShouKuanDate,[DaoKuanDate] = @DaoKuanDate,[ShengYuE] = @ShengYuE,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShouKuan_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShouKuan_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShouKuan_Delete
@ID int
 AS 
	DELETE [ERPShouKuan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShouKuan_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShouKuan_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShouKuan_GetModel
@ID int
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,JieDuanName,ShouKuanE,FaPiaoHao,ShouKuanDate,DaoKuanDate,ShengYuE,UserName,TimeStr
	 FROM [ERPShouKuan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPShouKuan_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPShouKuan_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPShouKuan_GetList
 AS 
	SELECT 
	ID,ProjectName,ProjectSerils,JieDuanName,ShouKuanE,FaPiaoHao,ShouKuanDate,DaoKuanDate,ShengYuE,UserName,TimeStr
	 FROM [ERPShouKuan]

GO


/******************************************************************
* 表名：ERPSongYang
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSongYang_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSongYang_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSongYang_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPSongYang]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSongYang_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSongYang_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSongYang_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPSongYang] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSongYang_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSongYang_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSongYang_ADD
@ID int output,
@CustomName varchar(100),
@SongYangLiaoHao varchar(500),
@SongYangType varchar(500),
@SongYangShuLiang varchar(50),
@SongYangDanJia varchar(50),
@SongYangJinE varchar(50),
@SongYangResult varchar(5000),
@SongYangTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)

 AS 
	INSERT INTO [ERPSongYang](
	[CustomName],[SongYangLiaoHao],[SongYangType],[SongYangShuLiang],[SongYangDanJia],[SongYangJinE],[SongYangResult],[SongYangTime],[UserName],[TimeStr],[IFShare],[CusBakA],[CusBakB],[CusBakC],[CusBakD],[CusBakE]
	)VALUES(
	@CustomName,@SongYangLiaoHao,@SongYangType,@SongYangShuLiang,@SongYangDanJia,@SongYangJinE,@SongYangResult,@SongYangTime,@UserName,@TimeStr,@IFShare,@CusBakA,@CusBakB,@CusBakC,@CusBakD,@CusBakE
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSongYang_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSongYang_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSongYang_Update
@ID int,
@CustomName varchar(100),
@SongYangLiaoHao varchar(500),
@SongYangType varchar(500),
@SongYangShuLiang varchar(50),
@SongYangDanJia varchar(50),
@SongYangJinE varchar(50),
@SongYangResult varchar(5000),
@SongYangTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)
 AS 
	UPDATE [ERPSongYang] SET 
	[CustomName] = @CustomName,[SongYangLiaoHao] = @SongYangLiaoHao,[SongYangType] = @SongYangType,[SongYangShuLiang] = @SongYangShuLiang,[SongYangDanJia] = @SongYangDanJia,[SongYangJinE] = @SongYangJinE,[SongYangResult] = @SongYangResult,[SongYangTime] = @SongYangTime,[UserName] = @UserName,[TimeStr] = @TimeStr,[IFShare] = @IFShare,[CusBakA] = @CusBakA,[CusBakB] = @CusBakB,[CusBakC] = @CusBakC,[CusBakD] = @CusBakD,[CusBakE] = @CusBakE
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSongYang_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSongYang_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSongYang_Delete
@ID int
 AS 
	DELETE [ERPSongYang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSongYang_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSongYang_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSongYang_GetModel
@ID int
 AS 
	SELECT 
	ID,CustomName,SongYangLiaoHao,SongYangType,SongYangShuLiang,SongYangDanJia,SongYangJinE,SongYangResult,SongYangTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPSongYang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSongYang_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSongYang_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSongYang_GetList
 AS 
	SELECT 
	ID,CustomName,SongYangLiaoHao,SongYangType,SongYangShuLiang,SongYangDanJia,SongYangJinE,SongYangResult,SongYangTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPSongYang]

GO


/******************************************************************
* 表名：ERPSupplyLink
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplyLink_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplyLink_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplyLink_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPSupplyLink]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplyLink_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplyLink_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplyLink_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPSupplyLink] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplyLink_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplyLink_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplyLink_ADD
@ID int output,
@SupplysName varchar(50),
@LinkManName varchar(50),
@ZhiWei varchar(50),
@Sex varchar(50),
@ShengRi datetime,
@AiHao varchar(200),
@IFFirstLink varchar(50),
@YouBian varchar(50),
@DiZhi varchar(500),
@JobTel varchar(50),
@JiaTingTel varchar(50),
@MobTel varchar(50),
@EmailStr varchar(50),
@QQorMsn varchar(50),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPSupplyLink](
	[SupplysName],[LinkManName],[ZhiWei],[Sex],[ShengRi],[AiHao],[IFFirstLink],[YouBian],[DiZhi],[JobTel],[JiaTingTel],[MobTel],[EmailStr],[QQorMsn],[BackInfo],[UserName],[TimeStr]
	)VALUES(
	@SupplysName,@LinkManName,@ZhiWei,@Sex,@ShengRi,@AiHao,@IFFirstLink,@YouBian,@DiZhi,@JobTel,@JiaTingTel,@MobTel,@EmailStr,@QQorMsn,@BackInfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplyLink_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplyLink_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplyLink_Update
@ID int,
@SupplysName varchar(50),
@LinkManName varchar(50),
@ZhiWei varchar(50),
@Sex varchar(50),
@ShengRi datetime,
@AiHao varchar(200),
@IFFirstLink varchar(50),
@YouBian varchar(50),
@DiZhi varchar(500),
@JobTel varchar(50),
@JiaTingTel varchar(50),
@MobTel varchar(50),
@EmailStr varchar(50),
@QQorMsn varchar(50),
@BackInfo varchar(5000),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPSupplyLink] SET 
	[SupplysName] = @SupplysName,[LinkManName] = @LinkManName,[ZhiWei] = @ZhiWei,[Sex] = @Sex,[ShengRi] = @ShengRi,[AiHao] = @AiHao,[IFFirstLink] = @IFFirstLink,[YouBian] = @YouBian,[DiZhi] = @DiZhi,[JobTel] = @JobTel,[JiaTingTel] = @JiaTingTel,[MobTel] = @MobTel,[EmailStr] = @EmailStr,[QQorMsn] = @QQorMsn,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplyLink_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplyLink_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplyLink_Delete
@ID int
 AS 
	DELETE [ERPSupplyLink]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplyLink_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplyLink_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplyLink_GetModel
@ID int
 AS 
	SELECT 
	ID,SupplysName,LinkManName,ZhiWei,Sex,ShengRi,AiHao,IFFirstLink,YouBian,DiZhi,JobTel,JiaTingTel,MobTel,EmailStr,QQorMsn,BackInfo,UserName,TimeStr
	 FROM [ERPSupplyLink]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplyLink_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplyLink_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplyLink_GetList
 AS 
	SELECT 
	ID,SupplysName,LinkManName,ZhiWei,Sex,ShengRi,AiHao,IFFirstLink,YouBian,DiZhi,JobTel,JiaTingTel,MobTel,EmailStr,QQorMsn,BackInfo,UserName,TimeStr
	 FROM [ERPSupplyLink]

GO


/******************************************************************
* 表名：ERPSupplys
* 时间：2014/6/4 23:05:09
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplys_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplys_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplys_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPSupplys]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplys_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplys_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplys_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPSupplys] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplys_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplys_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplys_ADD
@ID int output,
@SupplysName varchar(50),
@Serils varchar(50),
@JianCheng varchar(50),
@DianHua varchar(50),
@MobTel varchar(50),
@ChuanZhen varchar(50),
@URLStr varchar(50),
@EmailStr varchar(50),
@DiQu varchar(50),
@YouBian varchar(50),
@Address varchar(500),
@KaiHuHang varchar(200),
@ZhangHao varchar(50),
@BackInfo varchar(8000),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPSupplys](
	[SupplysName],[Serils],[JianCheng],[DianHua],[MobTel],[ChuanZhen],[URLStr],[EmailStr],[DiQu],[YouBian],[Address],[KaiHuHang],[ZhangHao],[BackInfo],[UserName],[TimeStr]
	)VALUES(
	@SupplysName,@Serils,@JianCheng,@DianHua,@MobTel,@ChuanZhen,@URLStr,@EmailStr,@DiQu,@YouBian,@Address,@KaiHuHang,@ZhangHao,@BackInfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplys_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplys_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplys_Update
@ID int,
@SupplysName varchar(50),
@Serils varchar(50),
@JianCheng varchar(50),
@DianHua varchar(50),
@MobTel varchar(50),
@ChuanZhen varchar(50),
@URLStr varchar(50),
@EmailStr varchar(50),
@DiQu varchar(50),
@YouBian varchar(50),
@Address varchar(500),
@KaiHuHang varchar(200),
@ZhangHao varchar(50),
@BackInfo varchar(8000),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPSupplys] SET 
	[SupplysName] = @SupplysName,[Serils] = @Serils,[JianCheng] = @JianCheng,[DianHua] = @DianHua,[MobTel] = @MobTel,[ChuanZhen] = @ChuanZhen,[URLStr] = @URLStr,[EmailStr] = @EmailStr,[DiQu] = @DiQu,[YouBian] = @YouBian,[Address] = @Address,[KaiHuHang] = @KaiHuHang,[ZhangHao] = @ZhangHao,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplys_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplys_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplys_Delete
@ID int
 AS 
	DELETE [ERPSupplys]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplys_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplys_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplys_GetModel
@ID int
 AS 
	SELECT 
	ID,SupplysName,Serils,JianCheng,DianHua,MobTel,ChuanZhen,URLStr,EmailStr,DiQu,YouBian,Address,KaiHuHang,ZhangHao,BackInfo,UserName,TimeStr
	 FROM [ERPSupplys]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSupplys_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSupplys_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:09
------------------------------------
CREATE PROCEDURE ERPSupplys_GetList
 AS 
	SELECT 
	ID,SupplysName,Serils,JianCheng,DianHua,MobTel,ChuanZhen,URLStr,EmailStr,DiQu,YouBian,Address,KaiHuHang,ZhangHao,BackInfo,UserName,TimeStr
	 FROM [ERPSupplys]

GO


/******************************************************************
* 表名：ERPSystemSetting
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSystemSetting_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSystemSetting_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPSystemSetting_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPSystemSetting]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSystemSetting_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSystemSetting_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPSystemSetting_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPSystemSetting] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSystemSetting_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSystemSetting_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPSystemSetting_ADD
@ID int output,
@FileType varchar(8000)

 AS 
	INSERT INTO [ERPSystemSetting](
	[FileType]
	)VALUES(
	@FileType
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSystemSetting_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSystemSetting_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPSystemSetting_Update
@ID int,
@FileType varchar(8000)
 AS 
	UPDATE [ERPSystemSetting] SET 
	[FileType] = @FileType
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSystemSetting_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSystemSetting_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPSystemSetting_Delete
@ID int
 AS 
	DELETE [ERPSystemSetting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSystemSetting_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSystemSetting_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPSystemSetting_GetModel
@ID int
 AS 
	SELECT 
	ID,FileType
	 FROM [ERPSystemSetting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPSystemSetting_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPSystemSetting_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPSystemSetting_GetList
 AS 
	SELECT 
	ID,FileType
	 FROM [ERPSystemSetting]

GO


/******************************************************************
* 表名：ERPTalkInfo
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkInfo_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkInfo_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkInfo_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTalkInfo]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkInfo_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkInfo_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkInfo_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTalkInfo] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkInfo_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkInfo_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkInfo_ADD
@ID int output,
@TalkRoomName varchar(500),
@UserName varchar(50),
@ToUser varchar(50),
@TimeStr datetime,
@ContentStr varchar(8000)

 AS 
	INSERT INTO [ERPTalkInfo](
	[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]
	)VALUES(
	@TalkRoomName,@UserName,@ToUser,@TimeStr,@ContentStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkInfo_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkInfo_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkInfo_Update
@ID int,
@TalkRoomName varchar(500),
@UserName varchar(50),
@ToUser varchar(50),
@TimeStr datetime,
@ContentStr varchar(8000)
 AS 
	UPDATE [ERPTalkInfo] SET 
	[TalkRoomName] = @TalkRoomName,[UserName] = @UserName,[ToUser] = @ToUser,[TimeStr] = @TimeStr,[ContentStr] = @ContentStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkInfo_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkInfo_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkInfo_Delete
@ID int
 AS 
	DELETE [ERPTalkInfo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkInfo_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkInfo_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkInfo_GetModel
@ID int
 AS 
	SELECT 
	ID,TalkRoomName,UserName,ToUser,TimeStr,ContentStr
	 FROM [ERPTalkInfo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkInfo_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkInfo_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkInfo_GetList
 AS 
	SELECT 
	ID,TalkRoomName,UserName,ToUser,TimeStr,ContentStr
	 FROM [ERPTalkInfo]

GO


/******************************************************************
* 表名：ERPTalkOnlineUser
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkOnlineUser_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkOnlineUser_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkOnlineUser_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTalkOnlineUser]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkOnlineUser_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkOnlineUser_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkOnlineUser_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTalkOnlineUser] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkOnlineUser_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkOnlineUser_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkOnlineUser_ADD
@ID int output,
@TalkRoomName varchar(500),
@LoginUser varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPTalkOnlineUser](
	[TalkRoomName],[LoginUser],[TimeStr]
	)VALUES(
	@TalkRoomName,@LoginUser,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkOnlineUser_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkOnlineUser_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkOnlineUser_Update
@ID int,
@TalkRoomName varchar(500),
@LoginUser varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPTalkOnlineUser] SET 
	[TalkRoomName] = @TalkRoomName,[LoginUser] = @LoginUser,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkOnlineUser_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkOnlineUser_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkOnlineUser_Delete
@ID int
 AS 
	DELETE [ERPTalkOnlineUser]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkOnlineUser_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkOnlineUser_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkOnlineUser_GetModel
@ID int
 AS 
	SELECT 
	ID,TalkRoomName,LoginUser,TimeStr
	 FROM [ERPTalkOnlineUser]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkOnlineUser_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkOnlineUser_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkOnlineUser_GetList
 AS 
	SELECT 
	ID,TalkRoomName,LoginUser,TimeStr
	 FROM [ERPTalkOnlineUser]

GO


/******************************************************************
* 表名：ERPTalkSetting
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkSetting_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkSetting_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkSetting_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTalkSetting]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkSetting_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkSetting_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkSetting_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTalkSetting] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkSetting_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkSetting_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkSetting_ADD
@ID int output,
@TalkName varchar(5000)

 AS 
	INSERT INTO [ERPTalkSetting](
	[TalkName]
	)VALUES(
	@TalkName
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkSetting_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkSetting_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkSetting_Update
@ID int,
@TalkName varchar(5000)
 AS 
	UPDATE [ERPTalkSetting] SET 
	[TalkName] = @TalkName
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkSetting_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkSetting_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkSetting_Delete
@ID int
 AS 
	DELETE [ERPTalkSetting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkSetting_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkSetting_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkSetting_GetModel
@ID int
 AS 
	SELECT 
	ID,TalkName
	 FROM [ERPTalkSetting]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTalkSetting_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTalkSetting_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTalkSetting_GetList
 AS 
	SELECT 
	ID,TalkName
	 FROM [ERPTalkSetting]

GO


/******************************************************************
* 表名：ERPTaskFP
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTaskFP_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTaskFP_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTaskFP_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTaskFP]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTaskFP_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTaskFP_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTaskFP_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTaskFP] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTaskFP_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTaskFP_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTaskFP_ADD
@ID int output,
@TaskTitle varchar(500),
@TaskContent text,
@FromUser varchar(50),
@ToUserList varchar(8000),
@XinXiGouTong text,
@JinDu decimal(18,2),
@WanCheng varchar(8000),
@NowState varchar(50),
@TimeStr datetime,
@KSSJ datetime,
@JSSJ datetime,
@SFFK nvarchar(10),
@FKSJ datetime

 AS 
	INSERT INTO [ERPTaskFP](
	[TaskTitle],[TaskContent],[FromUser],[ToUserList],[XinXiGouTong],[JinDu],[WanCheng],[NowState],[TimeStr],[KSSJ],[JSSJ],[SFFK],[FKSJ]
	)VALUES(
	@TaskTitle,@TaskContent,@FromUser,@ToUserList,@XinXiGouTong,@JinDu,@WanCheng,@NowState,@TimeStr,@KSSJ,@JSSJ,@SFFK,@FKSJ
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTaskFP_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTaskFP_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTaskFP_Update
@ID int,
@TaskTitle varchar(500),
@TaskContent text,
@FromUser varchar(50),
@ToUserList varchar(8000),
@XinXiGouTong text,
@JinDu decimal(18,2),
@WanCheng varchar(8000),
@NowState varchar(50),
@TimeStr datetime,
@KSSJ datetime,
@JSSJ datetime,
@SFFK nvarchar(10),
@FKSJ datetime
 AS 
	UPDATE [ERPTaskFP] SET 
	[TaskTitle] = @TaskTitle,[TaskContent] = @TaskContent,[FromUser] = @FromUser,[ToUserList] = @ToUserList,[XinXiGouTong] = @XinXiGouTong,[JinDu] = @JinDu,[WanCheng] = @WanCheng,[NowState] = @NowState,[TimeStr] = @TimeStr,[KSSJ] = @KSSJ,[JSSJ] = @JSSJ,[SFFK] = @SFFK,[FKSJ] = @FKSJ
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTaskFP_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTaskFP_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTaskFP_Delete
@ID int
 AS 
	DELETE [ERPTaskFP]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTaskFP_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTaskFP_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTaskFP_GetModel
@ID int
 AS 
	SELECT 
	ID,TaskTitle,TaskContent,FromUser,ToUserList,XinXiGouTong,JinDu,WanCheng,NowState,TimeStr,KSSJ,JSSJ,SFFK,FKSJ
	 FROM [ERPTaskFP]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTaskFP_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTaskFP_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTaskFP_GetList
 AS 
	SELECT 
	ID,TaskTitle,TaskContent,FromUser,ToUserList,XinXiGouTong,JinDu,WanCheng,NowState,TimeStr,KSSJ,JSSJ,SFFK,FKSJ
	 FROM [ERPTaskFP]

GO


/******************************************************************
* 表名：ERPTelFile
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTelFile_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTelFile_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTelFile_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTelFile]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTelFile_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTelFile_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTelFile_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTelFile] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTelFile_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTelFile_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTelFile_ADD
@ID int output,
@TitleStr varchar(500),
@FromUser varchar(50),
@TimeStr datetime,
@FileType varchar(50),
@ToUser varchar(8000),
@YiJieShouRen varchar(8000),
@ContentStr text,
@FuJianStr varchar(1000),
@ChuanYueYiJian text,
@QianShouHouIDList varchar(8000),
@ChuanYueHouIDList1 varchar(8000)

 AS 
	INSERT INTO [ERPTelFile](
	[TitleStr],[FromUser],[TimeStr],[FileType],[ToUser],[YiJieShouRen],[ContentStr],[FuJianStr],[ChuanYueYiJian],[QianShouHouIDList],[ChuanYueHouIDList1]
	)VALUES(
	@TitleStr,@FromUser,@TimeStr,@FileType,@ToUser,@YiJieShouRen,@ContentStr,@FuJianStr,@ChuanYueYiJian,@QianShouHouIDList,@ChuanYueHouIDList1
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTelFile_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTelFile_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTelFile_Update
@ID int,
@TitleStr varchar(500),
@FromUser varchar(50),
@TimeStr datetime,
@FileType varchar(50),
@ToUser varchar(8000),
@YiJieShouRen varchar(8000),
@ContentStr text,
@FuJianStr varchar(1000),
@ChuanYueYiJian text,
@QianShouHouIDList varchar(8000),
@ChuanYueHouIDList1 varchar(8000)
 AS 
	UPDATE [ERPTelFile] SET 
	[TitleStr] = @TitleStr,[FromUser] = @FromUser,[TimeStr] = @TimeStr,[FileType] = @FileType,[ToUser] = @ToUser,[YiJieShouRen] = @YiJieShouRen,[ContentStr] = @ContentStr,[FuJianStr] = @FuJianStr,[ChuanYueYiJian] = @ChuanYueYiJian,[QianShouHouIDList] = @QianShouHouIDList,[ChuanYueHouIDList1] = @ChuanYueHouIDList1
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTelFile_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTelFile_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTelFile_Delete
@ID int
 AS 
	DELETE [ERPTelFile]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTelFile_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTelFile_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTelFile_GetModel
@ID int
 AS 
	SELECT 
	ID,TitleStr,FromUser,TimeStr,FileType,ToUser,YiJieShouRen,ContentStr,FuJianStr,ChuanYueYiJian,QianShouHouIDList,ChuanYueHouIDList1
	 FROM [ERPTelFile]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTelFile_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTelFile_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTelFile_GetList
 AS 
	SELECT 
	ID,TitleStr,FromUser,TimeStr,FileType,ToUser,YiJieShouRen,ContentStr,FuJianStr,ChuanYueYiJian,QianShouHouIDList,ChuanYueHouIDList1
	 FROM [ERPTelFile]

GO


/******************************************************************
* 表名：ERPTiKu
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTiKu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTiKu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKu_ADD
@ID int output,
@TitleStr varchar(200),
@ItemsA varchar(200),
@ItemsB varchar(200),
@ItemsC varchar(200),
@ItemsD varchar(200),
@ItemsE varchar(200),
@ItemsF varchar(200),
@ItemsG varchar(200),
@ItemsH varchar(200),
@AnswerStr varchar(8000),
@TiKuID int,
@FenLeiStr varchar(20)

 AS 
	INSERT INTO [ERPTiKu](
	[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[ItemsE],[ItemsF],[ItemsG],[ItemsH],[AnswerStr],[TiKuID],[FenLeiStr]
	)VALUES(
	@TitleStr,@ItemsA,@ItemsB,@ItemsC,@ItemsD,@ItemsE,@ItemsF,@ItemsG,@ItemsH,@AnswerStr,@TiKuID,@FenLeiStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKu_Update
@ID int,
@TitleStr varchar(200),
@ItemsA varchar(200),
@ItemsB varchar(200),
@ItemsC varchar(200),
@ItemsD varchar(200),
@ItemsE varchar(200),
@ItemsF varchar(200),
@ItemsG varchar(200),
@ItemsH varchar(200),
@AnswerStr varchar(8000),
@TiKuID int,
@FenLeiStr varchar(20)
 AS 
	UPDATE [ERPTiKu] SET 
	[TitleStr] = @TitleStr,[ItemsA] = @ItemsA,[ItemsB] = @ItemsB,[ItemsC] = @ItemsC,[ItemsD] = @ItemsD,[ItemsE] = @ItemsE,[ItemsF] = @ItemsF,[ItemsG] = @ItemsG,[ItemsH] = @ItemsH,[AnswerStr] = @AnswerStr,[TiKuID] = @TiKuID,[FenLeiStr] = @FenLeiStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKu_Delete
@ID int
 AS 
	DELETE [ERPTiKu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKu_GetModel
@ID int
 AS 
	SELECT 
	ID,TitleStr,ItemsA,ItemsB,ItemsC,ItemsD,ItemsE,ItemsF,ItemsG,ItemsH,AnswerStr,TiKuID,FenLeiStr
	 FROM [ERPTiKu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKu_GetList
 AS 
	SELECT 
	ID,TitleStr,ItemsA,ItemsB,ItemsC,ItemsD,ItemsE,ItemsF,ItemsG,ItemsH,AnswerStr,TiKuID,FenLeiStr
	 FROM [ERPTiKu]

GO


/******************************************************************
* 表名：ERPTiKuKaoShi
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTiKuKaoShi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTiKuKaoShi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShi_ADD
@ID int output,
@UserName varchar(50),
@TimeStr datetime,
@ShiJuanID int,
@ShiJuanName varchar(500)

 AS 
	INSERT INTO [ERPTiKuKaoShi](
	[UserName],[TimeStr],[ShiJuanID],[ShiJuanName]
	)VALUES(
	@UserName,@TimeStr,@ShiJuanID,@ShiJuanName
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShi_Update
@ID int,
@UserName varchar(50),
@TimeStr datetime,
@ShiJuanID int,
@ShiJuanName varchar(500)
 AS 
	UPDATE [ERPTiKuKaoShi] SET 
	[UserName] = @UserName,[TimeStr] = @TimeStr,[ShiJuanID] = @ShiJuanID,[ShiJuanName] = @ShiJuanName
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShi_Delete
@ID int
 AS 
	DELETE [ERPTiKuKaoShi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShi_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,TimeStr,ShiJuanID,ShiJuanName
	 FROM [ERPTiKuKaoShi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShi_GetList
 AS 
	SELECT 
	ID,UserName,TimeStr,ShiJuanID,ShiJuanName
	 FROM [ERPTiKuKaoShi]

GO


/******************************************************************
* 表名：ERPTiKuKaoShiJieGuo
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShiJieGuo_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShiJieGuo_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShiJieGuo_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTiKuKaoShiJieGuo]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShiJieGuo_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShiJieGuo_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShiJieGuo_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTiKuKaoShiJieGuo] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShiJieGuo_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShiJieGuo_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShiJieGuo_ADD
@ID int output,
@KaoShiID int,
@TiMuID int,
@DaAn varchar(8000),
@UserDaAn varchar(8000),
@DeFen decimal(10,1)

 AS 
	INSERT INTO [ERPTiKuKaoShiJieGuo](
	[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]
	)VALUES(
	@KaoShiID,@TiMuID,@DaAn,@UserDaAn,@DeFen
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShiJieGuo_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShiJieGuo_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShiJieGuo_Update
@ID int,
@KaoShiID int,
@TiMuID int,
@DaAn varchar(8000),
@UserDaAn varchar(8000),
@DeFen decimal(10,1)
 AS 
	UPDATE [ERPTiKuKaoShiJieGuo] SET 
	[KaoShiID] = @KaoShiID,[TiMuID] = @TiMuID,[DaAn] = @DaAn,[UserDaAn] = @UserDaAn,[DeFen] = @DeFen
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShiJieGuo_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShiJieGuo_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShiJieGuo_Delete
@ID int
 AS 
	DELETE [ERPTiKuKaoShiJieGuo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShiJieGuo_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShiJieGuo_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShiJieGuo_GetModel
@ID int
 AS 
	SELECT 
	ID,KaoShiID,TiMuID,DaAn,UserDaAn,DeFen
	 FROM [ERPTiKuKaoShiJieGuo]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuKaoShiJieGuo_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuKaoShiJieGuo_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuKaoShiJieGuo_GetList
 AS 
	SELECT 
	ID,KaoShiID,TiMuID,DaAn,UserDaAn,DeFen
	 FROM [ERPTiKuKaoShiJieGuo]

GO


/******************************************************************
* 表名：ERPTiKuShiJuan
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuan_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuan_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuan_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTiKuShiJuan]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuan_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuan_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuan_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTiKuShiJuan] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuan_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuan_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuan_ADD
@ID int output,
@ShiJuanTitle varchar(100),
@IFSuiJiChuTi varchar(50),
@FenLeiShunXu varchar(200),
@KaoShiXianShi int,
@PanDuanTiList varchar(2000),
@DanXuanTiList varchar(2000),
@DuoXuanTiList varchar(2000),
@TianKongTiList varchar(2000),
@JianDaTiList varchar(2000),
@PanDuanFenShu decimal(18,1),
@DanXuanFenShu decimal(18,1),
@DuoXuanFenShu decimal(18,1),
@TianKongFenShu decimal(18,1),
@JianDaFenShu decimal(18,1),
@BackInfo varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPTiKuShiJuan](
	[ShiJuanTitle],[IFSuiJiChuTi],[FenLeiShunXu],[KaoShiXianShi],[PanDuanTiList],[DanXuanTiList],[DuoXuanTiList],[TianKongTiList],[JianDaTiList],[PanDuanFenShu],[DanXuanFenShu],[DuoXuanFenShu],[TianKongFenShu],[JianDaFenShu],[BackInfo],[UserName],[TimeStr]
	)VALUES(
	@ShiJuanTitle,@IFSuiJiChuTi,@FenLeiShunXu,@KaoShiXianShi,@PanDuanTiList,@DanXuanTiList,@DuoXuanTiList,@TianKongTiList,@JianDaTiList,@PanDuanFenShu,@DanXuanFenShu,@DuoXuanFenShu,@TianKongFenShu,@JianDaFenShu,@BackInfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuan_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuan_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuan_Update
@ID int,
@ShiJuanTitle varchar(100),
@IFSuiJiChuTi varchar(50),
@FenLeiShunXu varchar(200),
@KaoShiXianShi int,
@PanDuanTiList varchar(2000),
@DanXuanTiList varchar(2000),
@DuoXuanTiList varchar(2000),
@TianKongTiList varchar(2000),
@JianDaTiList varchar(2000),
@PanDuanFenShu decimal(18,1),
@DanXuanFenShu decimal(18,1),
@DuoXuanFenShu decimal(18,1),
@TianKongFenShu decimal(18,1),
@JianDaFenShu decimal(18,1),
@BackInfo varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPTiKuShiJuan] SET 
	[ShiJuanTitle] = @ShiJuanTitle,[IFSuiJiChuTi] = @IFSuiJiChuTi,[FenLeiShunXu] = @FenLeiShunXu,[KaoShiXianShi] = @KaoShiXianShi,[PanDuanTiList] = @PanDuanTiList,[DanXuanTiList] = @DanXuanTiList,[DuoXuanTiList] = @DuoXuanTiList,[TianKongTiList] = @TianKongTiList,[JianDaTiList] = @JianDaTiList,[PanDuanFenShu] = @PanDuanFenShu,[DanXuanFenShu] = @DanXuanFenShu,[DuoXuanFenShu] = @DuoXuanFenShu,[TianKongFenShu] = @TianKongFenShu,[JianDaFenShu] = @JianDaFenShu,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuan_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuan_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuan_Delete
@ID int
 AS 
	DELETE [ERPTiKuShiJuan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuan_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuan_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuan_GetModel
@ID int
 AS 
	SELECT 
	ID,ShiJuanTitle,IFSuiJiChuTi,FenLeiShunXu,KaoShiXianShi,PanDuanTiList,DanXuanTiList,DuoXuanTiList,TianKongTiList,JianDaTiList,PanDuanFenShu,DanXuanFenShu,DuoXuanFenShu,TianKongFenShu,JianDaFenShu,BackInfo,UserName,TimeStr
	 FROM [ERPTiKuShiJuan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuan_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuan_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuan_GetList
 AS 
	SELECT 
	ID,ShiJuanTitle,IFSuiJiChuTi,FenLeiShunXu,KaoShiXianShi,PanDuanTiList,DanXuanTiList,DuoXuanTiList,TianKongTiList,JianDaTiList,PanDuanFenShu,DanXuanFenShu,DuoXuanFenShu,TianKongFenShu,JianDaFenShu,BackInfo,UserName,TimeStr
	 FROM [ERPTiKuShiJuan]

GO


/******************************************************************
* 表名：ERPTiKuShiJuanSet
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuanSet_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuanSet_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuanSet_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTiKuShiJuanSet]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuanSet_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuanSet_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuanSet_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTiKuShiJuanSet] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuanSet_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuanSet_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuanSet_ADD
@ID int output,
@DanXuanNum int,
@DuoXuanNum int,
@PanDuanNum int,
@TianKongNum int,
@JianDaNum int,
@ShiJuanID int,
@TiKuTypeID int

 AS 
	INSERT INTO [ERPTiKuShiJuanSet](
	[DanXuanNum],[DuoXuanNum],[PanDuanNum],[TianKongNum],[JianDaNum],[ShiJuanID],[TiKuTypeID]
	)VALUES(
	@DanXuanNum,@DuoXuanNum,@PanDuanNum,@TianKongNum,@JianDaNum,@ShiJuanID,@TiKuTypeID
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuanSet_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuanSet_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuanSet_Update
@ID int,
@DanXuanNum int,
@DuoXuanNum int,
@PanDuanNum int,
@TianKongNum int,
@JianDaNum int,
@ShiJuanID int,
@TiKuTypeID int
 AS 
	UPDATE [ERPTiKuShiJuanSet] SET 
	[DanXuanNum] = @DanXuanNum,[DuoXuanNum] = @DuoXuanNum,[PanDuanNum] = @PanDuanNum,[TianKongNum] = @TianKongNum,[JianDaNum] = @JianDaNum,[ShiJuanID] = @ShiJuanID,[TiKuTypeID] = @TiKuTypeID
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuanSet_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuanSet_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuanSet_Delete
@ID int
 AS 
	DELETE [ERPTiKuShiJuanSet]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuanSet_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuanSet_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuanSet_GetModel
@ID int
 AS 
	SELECT 
	ID,DanXuanNum,DuoXuanNum,PanDuanNum,TianKongNum,JianDaNum,ShiJuanID,TiKuTypeID
	 FROM [ERPTiKuShiJuanSet]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuShiJuanSet_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuShiJuanSet_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuShiJuanSet_GetList
 AS 
	SELECT 
	ID,DanXuanNum,DuoXuanNum,PanDuanNum,TianKongNum,JianDaNum,ShiJuanID,TiKuTypeID
	 FROM [ERPTiKuShiJuanSet]

GO


/******************************************************************
* 表名：ERPTiKuType
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuType_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuType_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuType_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTiKuType]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuType_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuType_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuType_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTiKuType] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuType_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuType_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuType_ADD
@ID int output,
@TiKuName varchar(500),
@PaiXu varchar(50)

 AS 
	INSERT INTO [ERPTiKuType](
	[TiKuName],[PaiXu]
	)VALUES(
	@TiKuName,@PaiXu
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuType_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuType_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuType_Update
@ID int,
@TiKuName varchar(500),
@PaiXu varchar(50)
 AS 
	UPDATE [ERPTiKuType] SET 
	[TiKuName] = @TiKuName,[PaiXu] = @PaiXu
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuType_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuType_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuType_Delete
@ID int
 AS 
	DELETE [ERPTiKuType]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuType_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuType_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuType_GetModel
@ID int
 AS 
	SELECT 
	ID,TiKuName,PaiXu
	 FROM [ERPTiKuType]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTiKuType_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTiKuType_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTiKuType_GetList
 AS 
	SELECT 
	ID,TiKuName,PaiXu
	 FROM [ERPTiKuType]

GO


/******************************************************************
* 表名：ERPTongXunLu
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTongXunLu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTongXunLu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTongXunLu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTongXunLu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTongXunLu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTongXunLu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTongXunLu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTongXunLu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTongXunLu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTongXunLu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTongXunLu_ADD
@ID int output,
@UserName varchar(50),
@IfShare varchar(50),
@TypeStr varchar(50),
@FenZu varchar(50),
@NameStr varchar(50),
@Sex varchar(50),
@BirthDay varchar(50),
@NiCheng varchar(50),
@ZhiWu varchar(50),
@PeiOu varchar(500),
@ZiNv varchar(500),
@DanWeiMingCheng varchar(500),
@DanWeiDiZhi varchar(500),
@DanWeiYouBian varchar(50),
@DanWieDianHua varchar(50),
@DanWeiChuanZhen varchar(50),
@JiaTingZhuZhi varchar(500),
@JiaTingYouBian varchar(50),
@JiaTingDianHua varchar(50),
@ShouJi varchar(50),
@XiaoLingTong varchar(50),
@Email varchar(50),
@QQ varchar(50),
@Msn varchar(50),
@BackInfo text

 AS 
	INSERT INTO [ERPTongXunLu](
	[UserName],[IfShare],[TypeStr],[FenZu],[NameStr],[Sex],[BirthDay],[NiCheng],[ZhiWu],[PeiOu],[ZiNv],[DanWeiMingCheng],[DanWeiDiZhi],[DanWeiYouBian],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ],[Msn],[BackInfo]
	)VALUES(
	@UserName,@IfShare,@TypeStr,@FenZu,@NameStr,@Sex,@BirthDay,@NiCheng,@ZhiWu,@PeiOu,@ZiNv,@DanWeiMingCheng,@DanWeiDiZhi,@DanWeiYouBian,@DanWieDianHua,@DanWeiChuanZhen,@JiaTingZhuZhi,@JiaTingYouBian,@JiaTingDianHua,@ShouJi,@XiaoLingTong,@Email,@QQ,@Msn,@BackInfo
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTongXunLu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTongXunLu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTongXunLu_Update
@ID int,
@UserName varchar(50),
@IfShare varchar(50),
@TypeStr varchar(50),
@FenZu varchar(50),
@NameStr varchar(50),
@Sex varchar(50),
@BirthDay varchar(50),
@NiCheng varchar(50),
@ZhiWu varchar(50),
@PeiOu varchar(500),
@ZiNv varchar(500),
@DanWeiMingCheng varchar(500),
@DanWeiDiZhi varchar(500),
@DanWeiYouBian varchar(50),
@DanWieDianHua varchar(50),
@DanWeiChuanZhen varchar(50),
@JiaTingZhuZhi varchar(500),
@JiaTingYouBian varchar(50),
@JiaTingDianHua varchar(50),
@ShouJi varchar(50),
@XiaoLingTong varchar(50),
@Email varchar(50),
@QQ varchar(50),
@Msn varchar(50),
@BackInfo text
 AS 
	UPDATE [ERPTongXunLu] SET 
	[UserName] = @UserName,[IfShare] = @IfShare,[TypeStr] = @TypeStr,[FenZu] = @FenZu,[NameStr] = @NameStr,[Sex] = @Sex,[BirthDay] = @BirthDay,[NiCheng] = @NiCheng,[ZhiWu] = @ZhiWu,[PeiOu] = @PeiOu,[ZiNv] = @ZiNv,[DanWeiMingCheng] = @DanWeiMingCheng,[DanWeiDiZhi] = @DanWeiDiZhi,[DanWeiYouBian] = @DanWeiYouBian,[DanWieDianHua] = @DanWieDianHua,[DanWeiChuanZhen] = @DanWeiChuanZhen,[JiaTingZhuZhi] = @JiaTingZhuZhi,[JiaTingYouBian] = @JiaTingYouBian,[JiaTingDianHua] = @JiaTingDianHua,[ShouJi] = @ShouJi,[XiaoLingTong] = @XiaoLingTong,[Email] = @Email,[QQ] = @QQ,[Msn] = @Msn,[BackInfo] = @BackInfo
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTongXunLu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTongXunLu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTongXunLu_Delete
@ID int
 AS 
	DELETE [ERPTongXunLu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTongXunLu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTongXunLu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTongXunLu_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,IfShare,TypeStr,FenZu,NameStr,Sex,BirthDay,NiCheng,ZhiWu,PeiOu,ZiNv,DanWeiMingCheng,DanWeiDiZhi,DanWeiYouBian,DanWieDianHua,DanWeiChuanZhen,JiaTingZhuZhi,JiaTingYouBian,JiaTingDianHua,ShouJi,XiaoLingTong,Email,QQ,Msn,BackInfo
	 FROM [ERPTongXunLu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTongXunLu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTongXunLu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTongXunLu_GetList
 AS 
	SELECT 
	ID,UserName,IfShare,TypeStr,FenZu,NameStr,Sex,BirthDay,NiCheng,ZhiWu,PeiOu,ZiNv,DanWeiMingCheng,DanWeiDiZhi,DanWeiYouBian,DanWieDianHua,DanWeiChuanZhen,JiaTingZhuZhi,JiaTingYouBian,JiaTingDianHua,ShouJi,XiaoLingTong,Email,QQ,Msn,BackInfo
	 FROM [ERPTongXunLu]

GO


/******************************************************************
* 表名：ERPTouSu
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTouSu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTouSu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTouSu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTouSu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTouSu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTouSu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTouSu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTouSu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTouSu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTouSu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTouSu_ADD
@ID int output,
@CustomName varchar(100),
@TouSuWho varchar(500),
@TouSuType varchar(500),
@ChuLiResult varchar(5000),
@TouSuTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)

 AS 
	INSERT INTO [ERPTouSu](
	[CustomName],[TouSuWho],[TouSuType],[ChuLiResult],[TouSuTime],[UserName],[TimeStr],[IFShare],[CusBakA],[CusBakB],[CusBakC],[CusBakD],[CusBakE]
	)VALUES(
	@CustomName,@TouSuWho,@TouSuType,@ChuLiResult,@TouSuTime,@UserName,@TimeStr,@IFShare,@CusBakA,@CusBakB,@CusBakC,@CusBakD,@CusBakE
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTouSu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTouSu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTouSu_Update
@ID int,
@CustomName varchar(100),
@TouSuWho varchar(500),
@TouSuType varchar(500),
@ChuLiResult varchar(5000),
@TouSuTime varchar(500),
@UserName varchar(50),
@TimeStr datetime,
@IFShare varchar(5000),
@CusBakA varchar(8000),
@CusBakB varchar(8000),
@CusBakC varchar(8000),
@CusBakD varchar(8000),
@CusBakE varchar(8000)
 AS 
	UPDATE [ERPTouSu] SET 
	[CustomName] = @CustomName,[TouSuWho] = @TouSuWho,[TouSuType] = @TouSuType,[ChuLiResult] = @ChuLiResult,[TouSuTime] = @TouSuTime,[UserName] = @UserName,[TimeStr] = @TimeStr,[IFShare] = @IFShare,[CusBakA] = @CusBakA,[CusBakB] = @CusBakB,[CusBakC] = @CusBakC,[CusBakD] = @CusBakD,[CusBakE] = @CusBakE
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTouSu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTouSu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTouSu_Delete
@ID int
 AS 
	DELETE [ERPTouSu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTouSu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTouSu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTouSu_GetModel
@ID int
 AS 
	SELECT 
	ID,CustomName,TouSuWho,TouSuType,ChuLiResult,TouSuTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPTouSu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTouSu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTouSu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTouSu_GetList
 AS 
	SELECT 
	ID,CustomName,TouSuWho,TouSuType,ChuLiResult,TouSuTime,UserName,TimeStr,IFShare,CusBakA,CusBakB,CusBakC,CusBakD,CusBakE
	 FROM [ERPTouSu]

GO


/******************************************************************
* 表名：ERPTreeList
* 时间：2014/6/4 23:05:10
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTreeList_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTreeList_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTreeList_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPTreeList]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTreeList_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTreeList_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTreeList_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPTreeList] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTreeList_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTreeList_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTreeList_ADD
@ID int output,
@TextStr varchar(50),
@ImageUrlStr varchar(200),
@ValueStr varchar(50),
@NavigateUrlStr varchar(200),
@Target varchar(50),
@ParentID int,
@QuanXianList varchar(200),
@PaiXuStr int,
@ParentClass nvarchar(50)

 AS 
	INSERT INTO [ERPTreeList](
	[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr],[ParentClass]
	)VALUES(
	@TextStr,@ImageUrlStr,@ValueStr,@NavigateUrlStr,@Target,@ParentID,@QuanXianList,@PaiXuStr,@ParentClass
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTreeList_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTreeList_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTreeList_Update
@ID int,
@TextStr varchar(50),
@ImageUrlStr varchar(200),
@ValueStr varchar(50),
@NavigateUrlStr varchar(200),
@Target varchar(50),
@ParentID int,
@QuanXianList varchar(200),
@PaiXuStr int,
@ParentClass nvarchar(50)
 AS 
	UPDATE [ERPTreeList] SET 
	[TextStr] = @TextStr,[ImageUrlStr] = @ImageUrlStr,[ValueStr] = @ValueStr,[NavigateUrlStr] = @NavigateUrlStr,[Target] = @Target,[ParentID] = @ParentID,[QuanXianList] = @QuanXianList,[PaiXuStr] = @PaiXuStr,[ParentClass] = @ParentClass
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTreeList_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTreeList_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTreeList_Delete
@ID int
 AS 
	DELETE [ERPTreeList]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTreeList_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTreeList_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTreeList_GetModel
@ID int
 AS 
	SELECT 
	ID,TextStr,ImageUrlStr,ValueStr,NavigateUrlStr,Target,ParentID,QuanXianList,PaiXuStr,ParentClass
	 FROM [ERPTreeList]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPTreeList_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPTreeList_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:10
------------------------------------
CREATE PROCEDURE ERPTreeList_GetList
 AS 
	SELECT 
	ID,TextStr,ImageUrlStr,ValueStr,NavigateUrlStr,Target,ParentID,QuanXianList,PaiXuStr,ParentClass
	 FROM [ERPTreeList]

GO


/******************************************************************
* 表名：ERPUser
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUser_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUser_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUser_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPUser]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUser_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUser_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUser_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPUser] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUser_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUser_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUser_ADD
@ID int output,
@UserName varchar(50),
@UserPwd varchar(200),
@TrueName varchar(50),
@Serils varchar(50),
@Department varchar(50),
@JiaoSe varchar(50),
@ActiveTime datetime,
@ZhiWei varchar(50),
@ZaiGang varchar(50),
@EmailStr varchar(50),
@IfLogin varchar(50),
@Sex varchar(50),
@BackInfo varchar(8000),
@BirthDay varchar(50),
@MingZu varchar(50),
@SFZSerils varchar(50),
@HunYing varchar(50),
@ZhengZhiMianMao varchar(50),
@JiGuan varchar(50),
@HuKou varchar(500),
@XueLi varchar(50),
@ZhiCheng varchar(50),
@BiYeYuanXiao varchar(50),
@ZhuanYe varchar(50),
@CanJiaGongZuoTime varchar(50),
@JiaRuBenDanWeiTime varchar(50),
@JiaTingDianHua varchar(50),
@JiaTingAddress varchar(500),
@GangWeiBianDong text,
@JiaoYueBeiJing text,
@GongZuoJianLi text,
@SheHuiGuanXi text,
@JiangChengJiLu text,
@ZhiWuQingKuang text,
@PeiXunJiLu text,
@DanBaoJiLu text,
@NaoDongHeTong text,
@SheBaoJiaoNa text,
@TiJianJiLu text,
@BeiZhuStr text,
@FuJian varchar(5000),
@POP3UserName varchar(50),
@POP3UserPwd varchar(50),
@POP3Server varchar(50),
@POP3Port varchar(50),
@SMTPUserName varchar(50),
@SMTPUserPwd varchar(50),
@SMTPServer varchar(50),
@SMTPFromEmail varchar(50),
@TiXingTime varchar(50),
@IfTiXing varchar(50),
@DaoHangList text,
@xKeGuanDep varchar(5000),
@XiaShuUser varchar(8000)

 AS 
	INSERT INTO [ERPUser](
	[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[EmailStr],[IfLogin],[Sex],[BackInfo],[BirthDay],[MingZu],[SFZSerils],[HunYing],[ZhengZhiMianMao],[JiGuan],[HuKou],[XueLi],[ZhiCheng],[BiYeYuanXiao],[ZhuanYe],[CanJiaGongZuoTime],[JiaRuBenDanWeiTime],[JiaTingDianHua],[JiaTingAddress],[GangWeiBianDong],[JiaoYueBeiJing],[GongZuoJianLi],[SheHuiGuanXi],[JiangChengJiLu],[ZhiWuQingKuang],[PeiXunJiLu],[DanBaoJiLu],[NaoDongHeTong],[SheBaoJiaoNa],[TiJianJiLu],[BeiZhuStr],[FuJian],[POP3UserName],[POP3UserPwd],[POP3Server],[POP3Port],[SMTPUserName],[SMTPUserPwd],[SMTPServer],[SMTPFromEmail],[TiXingTime],[IfTiXing],[DaoHangList],[xKeGuanDep],[XiaShuUser]
	)VALUES(
	@UserName,@UserPwd,@TrueName,@Serils,@Department,@JiaoSe,@ActiveTime,@ZhiWei,@ZaiGang,@EmailStr,@IfLogin,@Sex,@BackInfo,@BirthDay,@MingZu,@SFZSerils,@HunYing,@ZhengZhiMianMao,@JiGuan,@HuKou,@XueLi,@ZhiCheng,@BiYeYuanXiao,@ZhuanYe,@CanJiaGongZuoTime,@JiaRuBenDanWeiTime,@JiaTingDianHua,@JiaTingAddress,@GangWeiBianDong,@JiaoYueBeiJing,@GongZuoJianLi,@SheHuiGuanXi,@JiangChengJiLu,@ZhiWuQingKuang,@PeiXunJiLu,@DanBaoJiLu,@NaoDongHeTong,@SheBaoJiaoNa,@TiJianJiLu,@BeiZhuStr,@FuJian,@POP3UserName,@POP3UserPwd,@POP3Server,@POP3Port,@SMTPUserName,@SMTPUserPwd,@SMTPServer,@SMTPFromEmail,@TiXingTime,@IfTiXing,@DaoHangList,@xKeGuanDep,@XiaShuUser
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUser_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUser_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUser_Update
@ID int,
@UserName varchar(50),
@UserPwd varchar(200),
@TrueName varchar(50),
@Serils varchar(50),
@Department varchar(50),
@JiaoSe varchar(50),
@ActiveTime datetime,
@ZhiWei varchar(50),
@ZaiGang varchar(50),
@EmailStr varchar(50),
@IfLogin varchar(50),
@Sex varchar(50),
@BackInfo varchar(8000),
@BirthDay varchar(50),
@MingZu varchar(50),
@SFZSerils varchar(50),
@HunYing varchar(50),
@ZhengZhiMianMao varchar(50),
@JiGuan varchar(50),
@HuKou varchar(500),
@XueLi varchar(50),
@ZhiCheng varchar(50),
@BiYeYuanXiao varchar(50),
@ZhuanYe varchar(50),
@CanJiaGongZuoTime varchar(50),
@JiaRuBenDanWeiTime varchar(50),
@JiaTingDianHua varchar(50),
@JiaTingAddress varchar(500),
@GangWeiBianDong text,
@JiaoYueBeiJing text,
@GongZuoJianLi text,
@SheHuiGuanXi text,
@JiangChengJiLu text,
@ZhiWuQingKuang text,
@PeiXunJiLu text,
@DanBaoJiLu text,
@NaoDongHeTong text,
@SheBaoJiaoNa text,
@TiJianJiLu text,
@BeiZhuStr text,
@FuJian varchar(5000),
@POP3UserName varchar(50),
@POP3UserPwd varchar(50),
@POP3Server varchar(50),
@POP3Port varchar(50),
@SMTPUserName varchar(50),
@SMTPUserPwd varchar(50),
@SMTPServer varchar(50),
@SMTPFromEmail varchar(50),
@TiXingTime varchar(50),
@IfTiXing varchar(50),
@DaoHangList text,
@xKeGuanDep varchar(5000),
@XiaShuUser varchar(8000)
 AS 
	UPDATE [ERPUser] SET 
	[UserName] = @UserName,[UserPwd] = @UserPwd,[TrueName] = @TrueName,[Serils] = @Serils,[Department] = @Department,[JiaoSe] = @JiaoSe,[ActiveTime] = @ActiveTime,[ZhiWei] = @ZhiWei,[ZaiGang] = @ZaiGang,[EmailStr] = @EmailStr,[IfLogin] = @IfLogin,[Sex] = @Sex,[BackInfo] = @BackInfo,[BirthDay] = @BirthDay,[MingZu] = @MingZu,[SFZSerils] = @SFZSerils,[HunYing] = @HunYing,[ZhengZhiMianMao] = @ZhengZhiMianMao,[JiGuan] = @JiGuan,[HuKou] = @HuKou,[XueLi] = @XueLi,[ZhiCheng] = @ZhiCheng,[BiYeYuanXiao] = @BiYeYuanXiao,[ZhuanYe] = @ZhuanYe,[CanJiaGongZuoTime] = @CanJiaGongZuoTime,[JiaRuBenDanWeiTime] = @JiaRuBenDanWeiTime,[JiaTingDianHua] = @JiaTingDianHua,[JiaTingAddress] = @JiaTingAddress,[GangWeiBianDong] = @GangWeiBianDong,[JiaoYueBeiJing] = @JiaoYueBeiJing,[GongZuoJianLi] = @GongZuoJianLi,[SheHuiGuanXi] = @SheHuiGuanXi,[JiangChengJiLu] = @JiangChengJiLu,[ZhiWuQingKuang] = @ZhiWuQingKuang,[PeiXunJiLu] = @PeiXunJiLu,[DanBaoJiLu] = @DanBaoJiLu,[NaoDongHeTong] = @NaoDongHeTong,[SheBaoJiaoNa] = @SheBaoJiaoNa,[TiJianJiLu] = @TiJianJiLu,[BeiZhuStr] = @BeiZhuStr,[FuJian] = @FuJian,[POP3UserName] = @POP3UserName,[POP3UserPwd] = @POP3UserPwd,[POP3Server] = @POP3Server,[POP3Port] = @POP3Port,[SMTPUserName] = @SMTPUserName,[SMTPUserPwd] = @SMTPUserPwd,[SMTPServer] = @SMTPServer,[SMTPFromEmail] = @SMTPFromEmail,[TiXingTime] = @TiXingTime,[IfTiXing] = @IfTiXing,[DaoHangList] = @DaoHangList,[xKeGuanDep] = @xKeGuanDep,[XiaShuUser] = @XiaShuUser
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUser_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUser_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUser_Delete
@ID int
 AS 
	DELETE [ERPUser]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUser_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUser_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUser_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,UserPwd,TrueName,Serils,Department,JiaoSe,ActiveTime,ZhiWei,ZaiGang,EmailStr,IfLogin,Sex,BackInfo,BirthDay,MingZu,SFZSerils,HunYing,ZhengZhiMianMao,JiGuan,HuKou,XueLi,ZhiCheng,BiYeYuanXiao,ZhuanYe,CanJiaGongZuoTime,JiaRuBenDanWeiTime,JiaTingDianHua,JiaTingAddress,GangWeiBianDong,JiaoYueBeiJing,GongZuoJianLi,SheHuiGuanXi,JiangChengJiLu,ZhiWuQingKuang,PeiXunJiLu,DanBaoJiLu,NaoDongHeTong,SheBaoJiaoNa,TiJianJiLu,BeiZhuStr,FuJian,POP3UserName,POP3UserPwd,POP3Server,POP3Port,SMTPUserName,SMTPUserPwd,SMTPServer,SMTPFromEmail,TiXingTime,IfTiXing,DaoHangList,xKeGuanDep,XiaShuUser
	 FROM [ERPUser]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUser_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUser_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUser_GetList
 AS 
	SELECT 
	ID,UserName,UserPwd,TrueName,Serils,Department,JiaoSe,ActiveTime,ZhiWei,ZaiGang,EmailStr,IfLogin,Sex,BackInfo,BirthDay,MingZu,SFZSerils,HunYing,ZhengZhiMianMao,JiGuan,HuKou,XueLi,ZhiCheng,BiYeYuanXiao,ZhuanYe,CanJiaGongZuoTime,JiaRuBenDanWeiTime,JiaTingDianHua,JiaTingAddress,GangWeiBianDong,JiaoYueBeiJing,GongZuoJianLi,SheHuiGuanXi,JiangChengJiLu,ZhiWuQingKuang,PeiXunJiLu,DanBaoJiLu,NaoDongHeTong,SheBaoJiaoNa,TiJianJiLu,BeiZhuStr,FuJian,POP3UserName,POP3UserPwd,POP3Server,POP3Port,SMTPUserName,SMTPUserPwd,SMTPServer,SMTPFromEmail,TiXingTime,IfTiXing,DaoHangList,xKeGuanDep,XiaShuUser
	 FROM [ERPUser]

GO


/******************************************************************
* 表名：ERPUserDesk
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUserDesk_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUserDesk_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUserDesk_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPUserDesk]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUserDesk_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUserDesk_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUserDesk_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPUserDesk] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUserDesk_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUserDesk_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUserDesk_ADD
@ID int output,
@UserName varchar(50),
@ModelName varchar(50),
@LookNum int

 AS 
	INSERT INTO [ERPUserDesk](
	[UserName],[ModelName],[LookNum]
	)VALUES(
	@UserName,@ModelName,@LookNum
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUserDesk_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUserDesk_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUserDesk_Update
@ID int,
@UserName varchar(50),
@ModelName varchar(50),
@LookNum int
 AS 
	UPDATE [ERPUserDesk] SET 
	[UserName] = @UserName,[ModelName] = @ModelName,[LookNum] = @LookNum
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUserDesk_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUserDesk_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUserDesk_Delete
@ID int
 AS 
	DELETE [ERPUserDesk]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUserDesk_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUserDesk_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUserDesk_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,ModelName,LookNum
	 FROM [ERPUserDesk]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPUserDesk_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPUserDesk_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPUserDesk_GetList
 AS 
	SELECT 
	ID,UserName,ModelName,LookNum
	 FROM [ERPUserDesk]

GO


/******************************************************************
* 表名：ERPVote
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPVote_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPVote_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPVote_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPVote]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPVote_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPVote_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPVote_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPVote] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPVote_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPVote_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPVote_ADD
@ID int output,
@TitleStr varchar(500),
@TimeStr datetime,
@UserName varchar(50),
@ContentStr varchar(8000),
@ScoreStr varchar(800),
@TouPiaoRenList varchar(8000)

 AS 
	INSERT INTO [ERPVote](
	[TitleStr],[TimeStr],[UserName],[ContentStr],[ScoreStr],[TouPiaoRenList]
	)VALUES(
	@TitleStr,@TimeStr,@UserName,@ContentStr,@ScoreStr,@TouPiaoRenList
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPVote_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPVote_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPVote_Update
@ID int,
@TitleStr varchar(500),
@TimeStr datetime,
@UserName varchar(50),
@ContentStr varchar(8000),
@ScoreStr varchar(800),
@TouPiaoRenList varchar(8000)
 AS 
	UPDATE [ERPVote] SET 
	[TitleStr] = @TitleStr,[TimeStr] = @TimeStr,[UserName] = @UserName,[ContentStr] = @ContentStr,[ScoreStr] = @ScoreStr,[TouPiaoRenList] = @TouPiaoRenList
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPVote_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPVote_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPVote_Delete
@ID int
 AS 
	DELETE [ERPVote]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPVote_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPVote_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPVote_GetModel
@ID int
 AS 
	SELECT 
	ID,TitleStr,TimeStr,UserName,ContentStr,ScoreStr,TouPiaoRenList
	 FROM [ERPVote]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPVote_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPVote_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPVote_GetList
 AS 
	SELECT 
	ID,TitleStr,TimeStr,UserName,ContentStr,ScoreStr,TouPiaoRenList
	 FROM [ERPVote]

GO


/******************************************************************
* 表名：ERPWorkPlan
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkPlan_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkPlan_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkPlan_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPWorkPlan]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkPlan_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkPlan_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkPlan_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPWorkPlan] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkPlan_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkPlan_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkPlan_ADD
@ID int output,
@TitleStr varchar(500),
@ContentStr text,
@FuJianStr varchar(2000),
@UserName varchar(100),
@CanLookUser varchar(8000),
@TimeStr datetime

 AS 
	INSERT INTO [ERPWorkPlan](
	[TitleStr],[ContentStr],[FuJianStr],[UserName],[CanLookUser],[TimeStr]
	)VALUES(
	@TitleStr,@ContentStr,@FuJianStr,@UserName,@CanLookUser,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkPlan_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkPlan_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkPlan_Update
@ID int,
@TitleStr varchar(500),
@ContentStr text,
@FuJianStr varchar(2000),
@UserName varchar(100),
@CanLookUser varchar(8000),
@TimeStr datetime
 AS 
	UPDATE [ERPWorkPlan] SET 
	[TitleStr] = @TitleStr,[ContentStr] = @ContentStr,[FuJianStr] = @FuJianStr,[UserName] = @UserName,[CanLookUser] = @CanLookUser,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkPlan_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkPlan_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkPlan_Delete
@ID int
 AS 
	DELETE [ERPWorkPlan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkPlan_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkPlan_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkPlan_GetModel
@ID int
 AS 
	SELECT 
	ID,TitleStr,ContentStr,FuJianStr,UserName,CanLookUser,TimeStr
	 FROM [ERPWorkPlan]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkPlan_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkPlan_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkPlan_GetList
 AS 
	SELECT 
	ID,TitleStr,ContentStr,FuJianStr,UserName,CanLookUser,TimeStr
	 FROM [ERPWorkPlan]

GO


/******************************************************************
* 表名：ERPWorkRiZhi
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkRiZhi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkRiZhi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkRiZhi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPWorkRiZhi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkRiZhi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkRiZhi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkRiZhi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPWorkRiZhi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkRiZhi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkRiZhi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkRiZhi_ADD
@ID int output,
@UserName varchar(50),
@TitleStr varchar(1000),
@TimeStr datetime,
@TypeStr varchar(50),
@ContentStr text

 AS 
	INSERT INTO [ERPWorkRiZhi](
	[UserName],[TitleStr],[TimeStr],[TypeStr],[ContentStr]
	)VALUES(
	@UserName,@TitleStr,@TimeStr,@TypeStr,@ContentStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkRiZhi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkRiZhi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkRiZhi_Update
@ID int,
@UserName varchar(50),
@TitleStr varchar(1000),
@TimeStr datetime,
@TypeStr varchar(50),
@ContentStr text
 AS 
	UPDATE [ERPWorkRiZhi] SET 
	[UserName] = @UserName,[TitleStr] = @TitleStr,[TimeStr] = @TimeStr,[TypeStr] = @TypeStr,[ContentStr] = @ContentStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkRiZhi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkRiZhi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkRiZhi_Delete
@ID int
 AS 
	DELETE [ERPWorkRiZhi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkRiZhi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkRiZhi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkRiZhi_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,TitleStr,TimeStr,TypeStr,ContentStr
	 FROM [ERPWorkRiZhi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPWorkRiZhi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPWorkRiZhi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPWorkRiZhi_GetList
 AS 
	SELECT 
	ID,UserName,TitleStr,TimeStr,TypeStr,ContentStr
	 FROM [ERPWorkRiZhi]

GO


/******************************************************************
* 表名：ERPXCDetails
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXCDetails_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXCDetails_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXCDetails_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPXCDetails]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXCDetails_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXCDetails_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXCDetails_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPXCDetails] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXCDetails_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXCDetails_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXCDetails_ADD
@ID int output,
@XCID int,
@ItemsID int,
@UserName varchar(50),
@NumStr varchar(50)

 AS 
	INSERT INTO [ERPXCDetails](
	[XCID],[ItemsID],[UserName],[NumStr]
	)VALUES(
	@XCID,@ItemsID,@UserName,@NumStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXCDetails_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXCDetails_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXCDetails_Update
@ID int,
@XCID int,
@ItemsID int,
@UserName varchar(50),
@NumStr varchar(50)
 AS 
	UPDATE [ERPXCDetails] SET 
	[XCID] = @XCID,[ItemsID] = @ItemsID,[UserName] = @UserName,[NumStr] = @NumStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXCDetails_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXCDetails_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXCDetails_Delete
@ID int
 AS 
	DELETE [ERPXCDetails]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXCDetails_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXCDetails_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXCDetails_GetModel
@ID int
 AS 
	SELECT 
	ID,XCID,ItemsID,UserName,NumStr
	 FROM [ERPXCDetails]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXCDetails_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXCDetails_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXCDetails_GetList
 AS 
	SELECT 
	ID,XCID,ItemsID,UserName,NumStr
	 FROM [ERPXCDetails]

GO


/******************************************************************
* 表名：ERPXinChou
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChou_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChou_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChou_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPXinChou]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChou_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChou_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChou_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPXinChou] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChou_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChou_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChou_ADD
@ID int output,
@XCName varchar(50),
@JianJie varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPXinChou](
	[XCName],[JianJie],[UserName],[TimeStr]
	)VALUES(
	@XCName,@JianJie,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChou_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChou_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChou_Update
@ID int,
@XCName varchar(50),
@JianJie varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPXinChou] SET 
	[XCName] = @XCName,[JianJie] = @JianJie,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChou_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChou_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChou_Delete
@ID int
 AS 
	DELETE [ERPXinChou]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChou_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChou_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChou_GetModel
@ID int
 AS 
	SELECT 
	ID,XCName,JianJie,UserName,TimeStr
	 FROM [ERPXinChou]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChou_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChou_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChou_GetList
 AS 
	SELECT 
	ID,XCName,JianJie,UserName,TimeStr
	 FROM [ERPXinChou]

GO


/******************************************************************
* 表名：ERPXinChouCanShu
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChouCanShu_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChouCanShu_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChouCanShu_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPXinChouCanShu]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChouCanShu_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChouCanShu_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChouCanShu_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPXinChouCanShu] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChouCanShu_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChouCanShu_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChouCanShu_ADD
@ID int output,
@ItemName varchar(50),
@BackInfo varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPXinChouCanShu](
	[ItemName],[BackInfo],[UserName],[TimeStr]
	)VALUES(
	@ItemName,@BackInfo,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChouCanShu_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChouCanShu_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChouCanShu_Update
@ID int,
@ItemName varchar(50),
@BackInfo varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPXinChouCanShu] SET 
	[ItemName] = @ItemName,[BackInfo] = @BackInfo,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChouCanShu_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChouCanShu_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChouCanShu_Delete
@ID int
 AS 
	DELETE [ERPXinChouCanShu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChouCanShu_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChouCanShu_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChouCanShu_GetModel
@ID int
 AS 
	SELECT 
	ID,ItemName,BackInfo,UserName,TimeStr
	 FROM [ERPXinChouCanShu]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXinChouCanShu_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXinChouCanShu_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXinChouCanShu_GetList
 AS 
	SELECT 
	ID,ItemName,BackInfo,UserName,TimeStr
	 FROM [ERPXinChouCanShu]

GO


/******************************************************************
* 表名：ERPXueXi
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXi_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXi_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXi_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPXueXi]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXi_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXi_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXi_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPXueXi] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXi_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXi_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXi_ADD
@ID int output,
@TitleStr varchar(200),
@BackInfo text,
@FuJianStr varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPXueXi](
	[TitleStr],[BackInfo],[FuJianStr],[UserName],[TimeStr]
	)VALUES(
	@TitleStr,@BackInfo,@FuJianStr,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXi_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXi_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXi_Update
@ID int,
@TitleStr varchar(200),
@BackInfo text,
@FuJianStr varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPXueXi] SET 
	[TitleStr] = @TitleStr,[BackInfo] = @BackInfo,[FuJianStr] = @FuJianStr,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXi_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXi_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXi_Delete
@ID int
 AS 
	DELETE [ERPXueXi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXi_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXi_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXi_GetModel
@ID int
 AS 
	SELECT 
	ID,TitleStr,BackInfo,FuJianStr,UserName,TimeStr
	 FROM [ERPXueXi]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXi_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXi_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXi_GetList
 AS 
	SELECT 
	ID,TitleStr,BackInfo,FuJianStr,UserName,TimeStr
	 FROM [ERPXueXi]

GO


/******************************************************************
* 表名：ERPXueXiXinDe
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXiXinDe_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXiXinDe_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXiXinDe_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPXueXiXinDe]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXiXinDe_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXiXinDe_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXiXinDe_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPXueXiXinDe] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXiXinDe_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXiXinDe_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXiXinDe_ADD
@ID int output,
@XinDeTitle varchar(200),
@XinDeContent text,
@FuJianStr varchar(500),
@ShenPiContent varchar(500),
@UserName varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPXueXiXinDe](
	[XinDeTitle],[XinDeContent],[FuJianStr],[ShenPiContent],[UserName],[TimeStr]
	)VALUES(
	@XinDeTitle,@XinDeContent,@FuJianStr,@ShenPiContent,@UserName,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXiXinDe_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXiXinDe_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXiXinDe_Update
@ID int,
@XinDeTitle varchar(200),
@XinDeContent text,
@FuJianStr varchar(500),
@ShenPiContent varchar(500),
@UserName varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPXueXiXinDe] SET 
	[XinDeTitle] = @XinDeTitle,[XinDeContent] = @XinDeContent,[FuJianStr] = @FuJianStr,[ShenPiContent] = @ShenPiContent,[UserName] = @UserName,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXiXinDe_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXiXinDe_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXiXinDe_Delete
@ID int
 AS 
	DELETE [ERPXueXiXinDe]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXiXinDe_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXiXinDe_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXiXinDe_GetModel
@ID int
 AS 
	SELECT 
	ID,XinDeTitle,XinDeContent,FuJianStr,ShenPiContent,UserName,TimeStr
	 FROM [ERPXueXiXinDe]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPXueXiXinDe_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPXueXiXinDe_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPXueXiXinDe_GetList
 AS 
	SELECT 
	ID,XinDeTitle,XinDeContent,FuJianStr,ShenPiContent,UserName,TimeStr
	 FROM [ERPXueXiXinDe]

GO


/******************************************************************
* 表名：ERPYinZhang
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhang_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhang_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhang_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPYinZhang]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhang_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhang_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhang_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPYinZhang] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhang_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhang_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhang_ADD
@ID int output,
@YinZhangName varchar(50),
@YinZhangLeiBie varchar(50),
@YinZhangMiMa varchar(50),
@UserName varchar(50),
@ImgPath varchar(50),
@TimeStr datetime

 AS 
	INSERT INTO [ERPYinZhang](
	[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]
	)VALUES(
	@YinZhangName,@YinZhangLeiBie,@YinZhangMiMa,@UserName,@ImgPath,@TimeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhang_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhang_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhang_Update
@ID int,
@YinZhangName varchar(50),
@YinZhangLeiBie varchar(50),
@YinZhangMiMa varchar(50),
@UserName varchar(50),
@ImgPath varchar(50),
@TimeStr datetime
 AS 
	UPDATE [ERPYinZhang] SET 
	[YinZhangName] = @YinZhangName,[YinZhangLeiBie] = @YinZhangLeiBie,[YinZhangMiMa] = @YinZhangMiMa,[UserName] = @UserName,[ImgPath] = @ImgPath,[TimeStr] = @TimeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhang_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhang_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhang_Delete
@ID int
 AS 
	DELETE [ERPYinZhang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhang_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhang_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhang_GetModel
@ID int
 AS 
	SELECT 
	ID,YinZhangName,YinZhangLeiBie,YinZhangMiMa,UserName,ImgPath,TimeStr
	 FROM [ERPYinZhang]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhang_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhang_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhang_GetList
 AS 
	SELECT 
	ID,YinZhangName,YinZhangLeiBie,YinZhangMiMa,UserName,ImgPath,TimeStr
	 FROM [ERPYinZhang]

GO


/******************************************************************
* 表名：ERPYinZhangLog
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhangLog_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhangLog_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhangLog_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPYinZhangLog]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhangLog_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhangLog_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhangLog_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPYinZhangLog] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhangLog_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhangLog_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhangLog_ADD
@ID int output,
@UserName varchar(50),
@TimeStr datetime,
@DoSomething varchar(1000),
@IpStr varchar(50),
@TypeStr varchar(50)

 AS 
	INSERT INTO [ERPYinZhangLog](
	[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]
	)VALUES(
	@UserName,@TimeStr,@DoSomething,@IpStr,@TypeStr
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhangLog_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhangLog_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhangLog_Update
@ID int,
@UserName varchar(50),
@TimeStr datetime,
@DoSomething varchar(1000),
@IpStr varchar(50),
@TypeStr varchar(50)
 AS 
	UPDATE [ERPYinZhangLog] SET 
	[UserName] = @UserName,[TimeStr] = @TimeStr,[DoSomething] = @DoSomething,[IpStr] = @IpStr,[TypeStr] = @TypeStr
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhangLog_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhangLog_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhangLog_Delete
@ID int
 AS 
	DELETE [ERPYinZhangLog]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhangLog_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhangLog_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhangLog_GetModel
@ID int
 AS 
	SELECT 
	ID,UserName,TimeStr,DoSomething,IpStr,TypeStr
	 FROM [ERPYinZhangLog]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYinZhangLog_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYinZhangLog_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYinZhangLog_GetList
 AS 
	SELECT 
	ID,UserName,TimeStr,DoSomething,IpStr,TypeStr
	 FROM [ERPYinZhangLog]

GO


/******************************************************************
* 表名：ERPYS
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYS_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYS_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYS_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [ERPYS]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYS_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYS_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYS_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [ERPYS] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYS_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYS_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYS_ADD
@ID int output,
@HeTongName varchar(200),
@QianYueKeHu varchar(200),
@DaoKuanDate datetime,
@TiXingDate datetime,
@CreateTime datetime,
@CreateUser varchar(50),
@BackInfo varchar(8000),
@NowState varchar(50),
@HTJE nvarchar(30),
@SFDK nvarchar(20),
@FKID int

 AS 
	INSERT INTO [ERPYS](
	[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[BackInfo],[NowState],[HTJE],[SFDK],[FKID]
	)VALUES(
	@HeTongName,@QianYueKeHu,@DaoKuanDate,@TiXingDate,@CreateTime,@CreateUser,@BackInfo,@NowState,@HTJE,@SFDK,@FKID
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYS_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYS_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYS_Update
@ID int,
@HeTongName varchar(200),
@QianYueKeHu varchar(200),
@DaoKuanDate datetime,
@TiXingDate datetime,
@CreateTime datetime,
@CreateUser varchar(50),
@BackInfo varchar(8000),
@NowState varchar(50),
@HTJE nvarchar(30),
@SFDK nvarchar(20),
@FKID int
 AS 
	UPDATE [ERPYS] SET 
	[HeTongName] = @HeTongName,[QianYueKeHu] = @QianYueKeHu,[DaoKuanDate] = @DaoKuanDate,[TiXingDate] = @TiXingDate,[CreateTime] = @CreateTime,[CreateUser] = @CreateUser,[BackInfo] = @BackInfo,[NowState] = @NowState,[HTJE] = @HTJE,[SFDK] = @SFDK,[FKID] = @FKID
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYS_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYS_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYS_Delete
@ID int
 AS 
	DELETE [ERPYS]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYS_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYS_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYS_GetModel
@ID int
 AS 
	SELECT 
	ID,HeTongName,QianYueKeHu,DaoKuanDate,TiXingDate,CreateTime,CreateUser,BackInfo,NowState,HTJE,SFDK,FKID
	 FROM [ERPYS]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[ERPYS_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [ERPYS_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE ERPYS_GetList
 AS 
	SELECT 
	ID,HeTongName,QianYueKeHu,DaoKuanDate,TiXingDate,CreateTime,CreateUser,BackInfo,NowState,HTJE,SFDK,FKID
	 FROM [ERPYS]

GO


/******************************************************************
* 表名：GZRZ
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[GZRZ_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [GZRZ_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE GZRZ_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [GZRZ]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[GZRZ_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [GZRZ_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE GZRZ_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [GZRZ] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[GZRZ_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [GZRZ_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE GZRZ_ADD
@ID int output,
@WorkFormID int,
@UserName varchar(100),
@Subject nvarchar(100),
@Contents nvarchar(3999)

 AS 
	INSERT INTO [GZRZ](
	[WorkFormID],[UserName],[Subject],[Contents]
	)VALUES(
	@WorkFormID,@UserName,@Subject,@Contents
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[GZRZ_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [GZRZ_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE GZRZ_Update
@ID int,
@WorkFormID int,
@UserName varchar(100),
@Subject nvarchar(100),
@Contents nvarchar(3999)
 AS 
	UPDATE [GZRZ] SET 
	[WorkFormID] = @WorkFormID,[UserName] = @UserName,[Subject] = @Subject,[Contents] = @Contents
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[GZRZ_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [GZRZ_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE GZRZ_Delete
@ID int
 AS 
	DELETE [GZRZ]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[GZRZ_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [GZRZ_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE GZRZ_GetModel
@ID int
 AS 
	SELECT 
	ID,WorkFormID,UserName,Subject,Contents
	 FROM [GZRZ]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[GZRZ_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [GZRZ_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE GZRZ_GetList
 AS 
	SELECT 
	ID,WorkFormID,UserName,Subject,Contents
	 FROM [GZRZ]

GO


/******************************************************************
* 表名：QJSQB
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[QJSQB_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [QJSQB_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE QJSQB_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [QJSQB]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[QJSQB_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [QJSQB_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE QJSQB_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [QJSQB] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[QJSQB_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [QJSQB_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE QJSQB_ADD
@ID int output,
@WorkFormID int,
@UserName varchar(100)

 AS 
	INSERT INTO [QJSQB](
	[WorkFormID],[UserName]
	)VALUES(
	@WorkFormID,@UserName
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[QJSQB_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [QJSQB_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE QJSQB_Update
@ID int,
@WorkFormID int,
@UserName varchar(100)
 AS 
	UPDATE [QJSQB] SET 
	[WorkFormID] = @WorkFormID,[UserName] = @UserName
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[QJSQB_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [QJSQB_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE QJSQB_Delete
@ID int
 AS 
	DELETE [QJSQB]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[QJSQB_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [QJSQB_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE QJSQB_GetModel
@ID int
 AS 
	SELECT 
	ID,WorkFormID,UserName
	 FROM [QJSQB]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[QJSQB_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [QJSQB_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE QJSQB_GetList
 AS 
	SELECT 
	ID,WorkFormID,UserName
	 FROM [QJSQB]

GO


/******************************************************************
* 表名：SWDJFB
* 时间：2014/6/4 23:05:11
* Made by Codematic
******************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[SWDJFB_GetMaxId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [SWDJFB_GetMaxId]
GO
------------------------------------
--用途：得到主键字段最大值 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE SWDJFB_GetMaxId
AS
	DECLARE @TempID int
	SELECT @TempID = max([ID])+1 FROM [SWDJFB]
	IF @TempID IS NULL
		RETURN 1
	ELSE
		RETURN @TempID

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[SWDJFB_Exists]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [SWDJFB_Exists]
GO
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE SWDJFB_Exists
@ID int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [SWDJFB] WHERE ID=@ID 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[SWDJFB_ADD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [SWDJFB_ADD]
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE SWDJFB_ADD
@ID int output,
@WorkFormID int,
@UserName varchar(100),
@LBXX nvarchar(100),
@BHXX nvarchar(100)

 AS 
	INSERT INTO [SWDJFB](
	[WorkFormID],[UserName],[LBXX],[BHXX]
	)VALUES(
	@WorkFormID,@UserName,@LBXX,@BHXX
	)
	SET @ID = @@IDENTITY

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[SWDJFB_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [SWDJFB_Update]
GO
------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE SWDJFB_Update
@ID int,
@WorkFormID int,
@UserName varchar(100),
@LBXX nvarchar(100),
@BHXX nvarchar(100)
 AS 
	UPDATE [SWDJFB] SET 
	[WorkFormID] = @WorkFormID,[UserName] = @UserName,[LBXX] = @LBXX,[BHXX] = @BHXX
	WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[SWDJFB_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [SWDJFB_Delete]
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE SWDJFB_Delete
@ID int
 AS 
	DELETE [SWDJFB]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[SWDJFB_GetModel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [SWDJFB_GetModel]
GO
------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE SWDJFB_GetModel
@ID int
 AS 
	SELECT 
	ID,WorkFormID,UserName,LBXX,BHXX
	 FROM [SWDJFB]
	 WHERE ID=@ID 

GO

if exists (select * from dbo.sysobjects where id = object_id(N'[SWDJFB_GetList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [SWDJFB_GetList]
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2014/6/4 23:05:11
------------------------------------
CREATE PROCEDURE SWDJFB_GetList
 AS 
	SELECT 
	ID,WorkFormID,UserName,LBXX,BHXX
	 FROM [SWDJFB]

GO


