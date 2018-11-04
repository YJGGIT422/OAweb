if exists (select * from sysobjects where id = OBJECT_ID('[ERPAnPai]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPAnPai]

CREATE TABLE [ERPAnPai] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TitleStr] [varchar]  (500) NULL,
[ContentStr] [text]  NULL,
[TimeStart] [datetime]  NULL,
[TimeEnd] [datetime]  NULL,
[TimeTiXing] [datetime]  NULL,
[TypeStr] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[GongXiangWho] [varchar]  (5000) NULL)

ALTER TABLE [ERPAnPai] WITH NOCHECK ADD  CONSTRAINT [PK_ERPAnPai] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPAnPai] ON

INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[GongXiangWho]) VALUES ( 20,N'admin',N'���й�˾�ڲ����ᣬҪ׼ʱ�μ�',N'׼ʱ�μӵ�λ�ڲ����ᣬ֪ͨ�����λ���Ա��������ԱҲҪͬʱ�μӡ�',N'2012/3/10 9:00:00',N'2012/3/10 12:00:00',N'2012/3/10 0:00:00',N'��λ����',N'������')
INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr],[GongXiangWho]) VALUES ( 21,N'admin',N'Ӫ���γ���ѵ������Ҫ��μ�',N'��λӪ���γ���ѵ����Ҫȫ����Ա�μӣ���ǰ׼�����ϡ�',N'2012/4/18 13:00:00',N'2012/4/18 15:00:00',N'2012/4/18 0:00:00',N'��������',N'2012/2/29 15:59:13',N'������')
INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr],[GongXiangWho]) VALUES ( 22,N'admin',N'�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ',N'��ʱȥ�ͻ��ֳ��������⣬��ϵפ�㹤��ʦһ��ǰ����',N'2012/5/21 8:00:00',N'2012/5/21 17:00:00',N'2012/5/21 0:00:00',N'��λ����',N'2012/2/29 16:00:37',N'������')
INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[TimeStart],[TimeEnd],[TimeTiXing],[TimeStr],[GongXiangWho]) VALUES ( 23,N'admin',N'test1',N'2013/11/9 0:00:00',N'2013/11/12 0:00:00',N'2013/11/11 0:00:00',N'2013/11/9 10:45:18',N'������')
INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr],[GongXiangWho]) VALUES ( 24,N'admin',N'test2',N'2013/11/20 0:00:00',N'2013/11/27 0:00:00',N'2013/11/19 0:00:00',N'��ϵ�ͻ�',N'2013/11/9 10:46:37',N'�����')
INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr],[GongXiangWho]) VALUES ( 25,N'admin',N'kkk',N'<p>kkk</p>',N'2014/3/20 0:00:00',N'2014/3/28 1:18:00',N'2014/3/22 0:00:00',N'��λ����',N'2014/3/20 19:24:53',N'������')

SET IDENTITY_INSERT [ERPAnPai] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBaoJia]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBaoJia]

CREATE TABLE [ERPBaoJia] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CustomName] [varchar]  (100) NULL,
[BaoJiaTitle] [varchar]  (500) NULL,
[BaoJiaType] [varchar]  (500) NULL,
[BaoJiaJinE] [varchar]  (500) NULL,
[BaoJiaContent] [varchar]  (8000) NULL,
[BaoJiaResult] [varchar]  (5000) NULL,
[BaoJiaTime] [varchar]  (500) NULL,
[BackInfo] [varchar]  (8000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[IFShare] [varchar]  (5000) NULL,
[CusBakA] [varchar]  (8000) NULL,
[CusBakB] [varchar]  (8000) NULL,
[CusBakC] [varchar]  (8000) NULL,
[CusBakD] [varchar]  (8000) NULL,
[CusBakE] [varchar]  (8000) NULL,
[Fujian] [varchar]  (2000) NULL)

ALTER TABLE [ERPBaoJia] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBaoJia] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBaoJia] ON

INSERT [ERPBaoJia] ([ID],[CustomName],[BaoJiaTitle],[BaoJiaType],[BaoJiaJinE],[BaoJiaContent],[BaoJiaResult],[BaoJiaTime],[UserName],[TimeStr]) VALUES ( 3,N'����������Ź�ҵ��Ʒ���޹�˾',N'OA�칫�Զ���ϵͳ����',N'���α���',N'35000',N'����ȫ�����󣬰���ʵʩ��ѵ',N'�ɹ�',N'2012-3-1',N'admin',N'2012/3/2 11:46:21')

SET IDENTITY_INSERT [ERPBaoJia] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBaoXiao]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBaoXiao]

CREATE TABLE [ERPBaoXiao] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProjectName] [varchar]  (200) NULL,
[FeiYongType] [varchar]  (50) NULL,
[ShenQingRen] [varchar]  (50) NULL,
[ShenPiRen] [varchar]  (50) NULL,
[ShenQingContent] [varchar]  (5000) NULL,
[JinE] [varchar]  (50) NULL,
[StateNow] [varchar]  (50) NULL,
[Username] [varchar]  (50) NULL,
[ShenQingTime] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPBaoXiao] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBaoXiao] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBaoXiao] ON

INSERT [ERPBaoXiao] ([ID],[ProjectName],[FeiYongType],[ShenQingRen],[ShenPiRen],[ShenQingContent],[JinE],[StateNow],[Username],[ShenQingTime]) VALUES ( 4,N'5rt5rt',N'11',N'admin',N'��Ϊ��',N'1111',N'111',N'����',N'admin',N'2014/2/20 21:36:22')

SET IDENTITY_INSERT [ERPBaoXiao] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBBSBanKuai]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBBSBanKuai]

CREATE TABLE [ERPBBSBanKuai] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BanKuaiName] [varchar]  (500) NULL,
[BanZhuList] [varchar]  (500) NULL,
[BanKuaiMiaoShu] [varchar]  (8000) NULL,
[BanKuaiImg] [varchar]  (200) NULL,
[JiaoSeXianZhiList] [varchar]  (8000) NULL,
[BuMenXianZhi] [varchar]  (8000) NULL,
[UserXianZhi] [varchar]  (8000) NULL)

ALTER TABLE [ERPBBSBanKuai] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBBSBanKuai] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBBSBanKuai] ON

INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 1,N'��������',N'admin',N'Ա���������������������ԣ�����',N'BanKuai.gif',N'���н�ɫ',N'���в���',N'�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 2,N'��ˮ��԰',N'admin',N'Ӣ��Ī�ʳ�������ˮ��ѯԵ�ɡ����ࡹ��һ����...',N'BanKuai.gif',N'���н�ɫ',N'���в���',N'�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 3,N'��ѧ���',N'admin',N'��������õģ�����ǲ԰׵ģ���������ʵ�ģ��������ϵ���������֮�ʣ���д�Լ�����˵Ĺ��¡�',N'BanKuai.gif',N'���н�ɫ',N'���в���',N'�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 4,N'��ͼר��',N'admin',N'���� | ���� | ���� | ��Ա���� | ������ͼ | ͼ������ | ��Ц | ����...ͼ�Ĳ�ï��չʾ��ķ�ɡ�',N'BanKuai.gif',N'���н�ɫ',N'���в���',N'�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 5,N'ʱ������',N'admin',N'ÿһ�죬��Ҫ����µľ��ʣ�������ĸ�����ʱ���о�������...',N'BanKuai.gif',N'���н�ɫ',N'���в���',N'�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 6,N'�����ǿ�',N'admin',N'�������ֵ����ã��������õ����硣',N'BanKuai.gif',N'���н�ɫ',N'���в���',N'�����û�')

SET IDENTITY_INSERT [ERPBBSBanKuai] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBBSTieZi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBBSTieZi]

CREATE TABLE [ERPBBSTieZi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BanKuaiID] [int]  NULL,
[TitleStr] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[ContentStr] [text]  NULL,
[ZuiHouUser] [varchar]  (50) NULL,
[ZuiHouTime] [datetime]  NULL DEFAULT (getdate()),
[PaiXu] [int]  NULL DEFAULT (0),
[HuiFuContent] [text]  NULL)

ALTER TABLE [ERPBBSTieZi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBBSTieZi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBBSTieZi] ON

INSERT [ERPBBSTieZi] ([ID],[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu],[HuiFuContent]) VALUES ( 4,6,N'ʮ��İٶ���һ���������ҵ��ʮ��İٶ���һ�����㵽�ڵ�ͻ�ơ�',N'admin',N'2012/3/2 12:36:52',N'ʮ��İٶ���һ���������ҵ��ʮ��İٶ���һ�����㵽�ڵ�ͻ�ƣ�ʮ��İٶ��Ǵ�7���˵�7000�˵Ŀ�Խ��<BR>ʮ��İٶ��������й�����������˥��һ·����ı�����һ·������һ·�����ı����ǰٶ��˵��ֹۡ�רע�ͼ��顣<BR>���ٶ�ʮ�꣬���й�������ʮ�꣬��˭���ƶ����й��Ľ�������˭�ڰ�������������ɹ���<BR>�ӱ�������˹��ˣ��Ӽ��Ѵ�ҵ���������ͣ���ʲô�ڼᶨ�������������ʲôӰ���Űٶ��˵������<BR>�ٶȴ�����ʷչ������Ϊ��һһ�����<BR>',N'liyiyang',N'2013/11/11 9:33:52',0,N'<table><tr><td></td></tr></table><table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1"><tr><td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" /><font color="#0000C0" style=" font-weight:bold">liyiyang</font><br></td><td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top"><p>fffffffffffffffff</p></td></tr><tr><td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>2013/11/11 9:33:46<br></td></tr></table><table><tr><td></td></tr></table><table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1"><tr><td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" /><font color="#0000C0" style=" font-weight:bold">liyiyang</font><br></td><td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top"><p>fbbsbsbs</p></td></tr><tr><td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>2013/11/11 9:33:52<br></td></tr></table>')
INSERT [ERPBBSTieZi] ([ID],[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu],[HuiFuContent]) VALUES ( 5,6,N'ͨ�����ҵ��������룬ͨ�������˽�����ͨ����ʵ�����롣',N'admin',N'2012/3/2 12:37:16',N'������������Ϯ������ÿ���˶���һ������������С�����ͨ�������˽����磬ͨ�����ҵ��������룬ͨ�������˽�����ͨ����ʵ�����롣<BR>���ǵ����ʽ������Ȼ�����Ÿı䣬������Щ�����Ѿ����֣���Щ���ǻ�ȫȻ������<BR>���죬�绰����Ψһ�Ĺ�ͨ������һ����Ҫȥͼ��ݲ�ѯ�������������ֻ�����Լ��ڹ�ע��ʲô��������ȫ�벻���ģ�<BR>�ٶȴ��ò�Ʒչ�����������������������ڷ����ı仯�����ٶ�Ϊ��Ӫ���ȫ�����ʽ���� <BR><!--�Ҳ����ݽ��� -->',N'liyiyang',N'2013/11/11 9:33:01',0,N'<table><tr><td></td></tr></table><table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1"><tr><td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" /><font color="#0000C0" style=" font-weight:bold">liyiyang</font><br></td><td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top"><p>ghmh</p></td></tr><tr><td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>2013/11/11 9:33:01<br></td></tr></table>')
INSERT [ERPBBSTieZi] ([ID],[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu]) VALUES ( 6,4,N'jh.',N'liyiyang',N'2013/11/11 9:32:10',N'<p>jk.</p>',N'liyiyang',N'2013/11/11 9:32:10',0)

SET IDENTITY_INSERT [ERPBBSTieZi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBook]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBook]

CREATE TABLE [ERPBook] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BookName] [varchar]  (50) NULL,
[BookSerils] [varchar]  (50) NULL,
[SuoShuBuMen] [varchar]  (50) NULL,
[BookType] [varchar]  (50) NULL,
[Auother] [varchar]  (50) NULL,
[ISBN] [varchar]  (50) NULL,
[CoperStr] [varchar]  (50) NULL,
[ChuBanDate] [varchar]  (50) NULL,
[CunFangDian] [varchar]  (50) NULL,
[ShuLiang] [varchar]  (50) NULL,
[JiaGe] [varchar]  (50) NULL,
[NeiRong] [varchar]  (5000) NULL,
[NowState] [varchar]  (50) NULL,
[BackInfo] [varchar]  (5000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL)

ALTER TABLE [ERPBook] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBook] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBook] ON

INSERT [ERPBook] ([ID],[BookName],[BookSerils],[SuoShuBuMen],[BookType],[Auother],[ISBN],[CoperStr],[ChuBanDate],[CunFangDian],[ShuLiang],[JiaGe],[NeiRong],[NowState],[BackInfo],[UserName],[TimeStr]) VALUES ( 2,N'�����������淶',N'CX-001',N'������',N'�����鼮',N'�۶��Ƽ�',N'BD0982001',N'�۶�������',N'2012-3-1',N'B��402',N'6',N'50',N'���������������淶��������ѧϰ��',N'����',N'��',N'admin',N'2012/3/2 10:35:14')

SET IDENTITY_INSERT [ERPBook] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBookJieHuan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBookJieHuan]

CREATE TABLE [ERPBookJieHuan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BookName] [varchar]  (50) NULL,
[JieShuDate] [varchar]  (50) NULL,
[GuiHuanDate] [varchar]  (50) NULL,
[JieHuanState] [varchar]  (50) NULL,
[BackInfo] [varchar]  (5000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL)

ALTER TABLE [ERPBookJieHuan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBookJieHuan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBookJieHuan] ON

INSERT [ERPBookJieHuan] ([ID],[BookName],[JieShuDate],[GuiHuanDate],[JieHuanState],[BackInfo],[UserName],[TimeStr]) VALUES ( 4,N'�����������淶',N'2012-3-1',N'2012-3-2',N'�ѹ黹',N'��',N'������',N'2012/3/2 10:35:46')
INSERT [ERPBookJieHuan] ([ID],[BookName],[JieShuDate],[JieHuanState],[BackInfo],[UserName],[TimeStr]) VALUES ( 5,N'�����������淶',N'2012-3-2',N'�ѽ��',N'��',N'�ܱ�',N'2012/3/2 10:36:26')

SET IDENTITY_INSERT [ERPBookJieHuan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBuMen]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBuMen]

CREATE TABLE [ERPBuMen] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BuMenName] [varchar]  (50) NULL,
[ChargeMan] [varchar]  (50) NULL,
[TelStr] [varchar]  (50) NULL,
[ChuanZhen] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[DirID] [int]  NULL)

ALTER TABLE [ERPBuMen] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBuMen] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBuMen] ON

INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 29,N'����۶��Ƽ��������ι�˾',N'admin',N'023-67466469',N'023-67466469',0)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 30,N'�ͷ���',N'admin',N'023-67466469',N'023-67466469',29)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 31,N'������',N'admin',N'023-67466469',N'023-67466469',29)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 32,N'������',N'admin',N'023-67466469',N'023-67466469',29)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 33,N'����',N'admin',N'023-67466469',N'023-67466469',29)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 34,N'�ܾ���',N'admin',N'023-67466469',N'023-67466469',29)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 35,N'���۲�',N'admin',N'023-67466469',N'023-67466469',29)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 36,N'�ۺϲ�',N'admin',N'023-67466469',N'023-67466469',29)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 42,N'���Ӫ��',N'admin',N'023-67466469',N'023-67466469',35)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 43,N'��Ʒ���۲�',N'admin',N'023-67466469',N'023-67466469',35)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 44,N'�ۺϰ칫��',N'admin',N'023-67466469',N'023-67466469',36)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[DirID]) VALUES ( 45,N'���ϰ��´�',N'admin',N'023-67466469',N'023-67466469',36)
INSERT [ERPBuMen] ([ID],[BuMenName],[TelStr],[ChuanZhen],[BackInfo],[DirID]) VALUES ( 48,N'xxx',N'444',N'44',N'44',42)

SET IDENTITY_INSERT [ERPBuMen] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBuyChanPin]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBuyChanPin]

CREATE TABLE [ERPBuyChanPin] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[OrderName] [varchar]  (50) NULL,
[ProductName] [varchar]  (50) NULL,
[ProductSerils] [varchar]  (50) NULL,
[GongYingShang] [varchar]  (50) NULL,
[ProductType] [varchar]  (50) NULL,
[XingHao] [varchar]  (50) NULL,
[DanWei] [varchar]  (50) NULL,
[DanJia] [numeric]  (18,2) NULL,
[ShuLiang] [numeric]  (18,2) NULL,
[ZongJia] [numeric]  (18,2) NULL,
[YiFuKuan] [numeric]  (18,2) NULL,
[QianKuanShu] [numeric]  (18,2) NULL,
[IFJiaoFu] [varchar]  (50) NULL,
[ChanPinMiaoShu] [varchar]  (5000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL,
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPBuyChanPin] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBuyChanPin] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBuyChanPin] ON

INSERT [ERPBuyChanPin] ([ID],[OrderName],[ProductName],[ProductSerils],[GongYingShang],[ProductType],[XingHao],[DanWei],[DanJia],[ShuLiang],[ZongJia],[YiFuKuan],[QianKuanShu],[IFJiaoFu],[UserName],[TimeStr]) VALUES ( 3,N'����������ɹ���ͬ',N'����������',N'BD-CP-001',N'�������',N'Ӳ����Ʒ',N'��������',N'̨',30000.00,7.00,210000.00,210000.00,0.00,N'�ѽ���',N'admin',N'2012/3/2 12:01:11')
INSERT [ERPBuyChanPin] ([ID],[OrderName],[ProductName],[ProductSerils],[GongYingShang],[ProductType],[XingHao],[DanWei],[DanJia],[ShuLiang],[ZongJia],[YiFuKuan],[QianKuanShu],[IFJiaoFu],[UserName],[TimeStr]) VALUES ( 4,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'OA�칫ϵͳV7.2.1-��ҵͨ�ð�',N'BD-CP-001',N'�������',N'������Ʒ',N'��������',N'̨',10000.00,3.00,30000.00,0.00,30000.00,N'�ѽ���',N'admin',N'2013/1/6 15:42:51')
INSERT [ERPBuyChanPin] ([ID],[OrderName],[ProductName],[DanJia],[ShuLiang],[ZongJia],[YiFuKuan],[QianKuanShu],[IFJiaoFu]) VALUES ( 5,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'OA�칫ϵͳV7.2.1-��ҵͨ�ð�',35000.00,1.00,35000.00,35000.00,0.00,N'�ѽ���')
INSERT [ERPBuyChanPin] ([ID],[OrderName],[ProductName],[DanJia],[ShuLiang],[ZongJia],[YiFuKuan],[QianKuanShu],[IFJiaoFu]) VALUES ( 6,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'����������',35000.00,1.00,35000.00,35000.00,0.00,N'�ѽ���')

SET IDENTITY_INSERT [ERPBuyChanPin] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBuyOrder]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBuyOrder]

CREATE TABLE [ERPBuyOrder] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[OrderName] [varchar]  (50) NULL,
[GongYingShangName] [varchar]  (50) NULL,
[Serils] [varchar]  (50) NULL,
[DingDanLeiXing] [varchar]  (50) NULL,
[DingDanMiaoShu] [varchar]  (5000) NULL,
[CreateDate] [datetime]  NULL,
[LaiHuoDate] [datetime]  NULL,
[TiXingDate] [datetime]  NULL,
[ChuangJianRen] [varchar]  (50) NULL,
[FuZeRen] [varchar]  (50) NULL,
[FuJianList] [varchar]  (500) NULL,
[NowState] [varchar]  (50) NULL,
[ShenPiTongGuoRen] [varchar]  (50) NULL,
[BackInfo] [text]  NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[HTZJ] [float]  NULL,
[YFFY] [float]  NULL,
[SFJF] [nvarchar]  (50) NULL,
[SQFY] [float]  NULL)

ALTER TABLE [ERPBuyOrder] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBuyOrder] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBuyOrder] ON

INSERT [ERPBuyOrder] ([ID],[OrderName],[GongYingShangName],[Serils],[DingDanLeiXing],[DingDanMiaoShu],[CreateDate],[LaiHuoDate],[TiXingDate],[ChuangJianRen],[FuZeRen],[NowState],[BackInfo],[UserName],[TimeStr],[HTZJ],[SFJF]) VALUES ( 2,N'����������ɹ���ͬ',N'�������',N'BD-CG-001',N'��Ҫ����',N'�ɹ����������',N'2013/1/10 0:00:00',N'2013/1/16 0:00:00',N'2012/3/1 0:00:00',N'��Ϊ��',N'��Ϊ��',N'ͨ�����',N'��ʱ��������ʱ���',N'admin',N'2012/3/2 11:59:46',210000,N'�ѽ���')
INSERT [ERPBuyOrder] ([ID],[OrderName],[Serils],[DingDanLeiXing],[DingDanMiaoShu],[CreateDate],[LaiHuoDate],[TiXingDate],[ChuangJianRen],[NowState],[UserName],[TimeStr],[HTZJ],[YFFY],[SFJF],[SQFY]) VALUES ( 3,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'YL-201301-S-0001',N'��Ҫ����',N'�ɹ����������',N'2013/1/9 0:00:00',N'2013/1/25 0:00:00',N'2013/1/16 0:00:00',N'admin,��ȫʤ',N'�ȴ����',N'admin',N'2013/1/6 15:40:40',100000,2323,N'�ѽ���',97677)
INSERT [ERPBuyOrder] ([ID],[OrderName],[GongYingShangName],[Serils],[CreateDate],[LaiHuoDate],[TiXingDate],[NowState],[UserName],[TimeStr],[SFJF]) VALUES ( 4,N'�������',N'�������',N'YL-201301-S-0002',N'2013/1/15 0:00:00',N'2013/1/30 0:00:00',N'2013/1/30 0:00:00',N'�ȴ����',N'admin',N'2013/1/7 14:21:00',N'δ����')
INSERT [ERPBuyOrder] ([ID],[OrderName],[GongYingShangName],[Serils],[CreateDate],[LaiHuoDate],[TiXingDate],[NowState],[UserName],[TimeStr],[SFJF]) VALUES ( 5,N'��˹��',N'�������',N'YL-201301-S-0003',N'2013/1/8 0:00:00',N'2013/1/16 0:00:00',N'2013/1/18 0:00:00',N'�ȴ����',N'admin',N'2013/1/8 17:38:09',N'δ����')

SET IDENTITY_INSERT [ERPBuyOrder] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCarBaoXian]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCarBaoXian]

CREATE TABLE [ERPCarBaoXian] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CarName] [varchar]  (50) NULL,
[FeiYongName] [varchar]  (50) NULL,
[ProjectName] [varchar]  (50) NULL,
[BaoXianPrice] [varchar]  (50) NULL,
[BaoXianDate] [varchar]  (50) NULL,
[TiXingDate] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPCarBaoXian] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCarBaoXian] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCarBaoXian] ON

INSERT [ERPCarBaoXian] ([ID],[CarName],[FeiYongName],[ProjectName],[BaoXianPrice],[BaoXianDate],[TiXingDate],[UserName],[TimeStr],[BackInfo]) VALUES ( 2,N'��λ����',N'��������',N'ȫ����Ŀ',N'8000',N'2012-3-1',N'2012-3-1',N'admin',N'2012/3/2 10:28:49',N'�ܶౣ��')
INSERT [ERPCarBaoXian] ([ID],[CarName],[FeiYongName],[ProjectName],[BaoXianPrice],[BaoXianDate],[TiXingDate],[UserName],[TimeStr],[BackInfo]) VALUES ( 3,N'һ������',N'��������',N'ȫ����Ŀ',N'3000',N'2012-3-1',N'2012-3-1',N'admin',N'2012/3/2 10:29:30',N'��')

SET IDENTITY_INSERT [ERPCarBaoXian] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCarBaoYang]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCarBaoYang]

CREATE TABLE [ERPCarBaoYang] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CarName] [varchar]  (50) NULL,
[BYDate] [varchar]  (50) NULL,
[JingBanUser] [varchar]  (50) NULL,
[ZhuGuanUser] [varchar]  (50) NULL,
[BYQianLCBNum] [varchar]  (50) NULL,
[QiYouJinE] [varchar]  (50) NULL,
[BYJinE] [varchar]  (50) NULL,
[WeiXiuJinE] [varchar]  (50) NULL,
[OtherJinE] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPCarBaoYang] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCarBaoYang] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCarBaoYang] ON

INSERT [ERPCarBaoYang] ([ID],[CarName],[BYDate],[JingBanUser],[ZhuGuanUser],[BYQianLCBNum],[QiYouJinE],[BYJinE],[WeiXiuJinE],[OtherJinE],[UserName],[TimeStr],[BackInfo]) VALUES ( 2,N'��λ����',N'2012-3-1',N'�Ź���',N'�Ź���',N'2000',N'500',N'200',N'300',N'200',N'admin',N'2012/3/2 10:31:56',N'���ıȽϴ�')

SET IDENTITY_INSERT [ERPCarBaoYang] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCarInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCarInfo]

CREATE TABLE [ERPCarInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CarName] [varchar]  (50) NULL,
[CarPaiHao] [varchar]  (50) NULL,
[CarXingHao] [varchar]  (50) NULL,
[LeiXing] [varchar]  (50) NULL,
[SuoShuDep] [varchar]  (8000) NULL,
[DriverUser] [varchar]  (50) NULL,
[NowState] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPCarInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCarInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCarInfo] ON

INSERT [ERPCarInfo] ([ID],[CarName],[CarPaiHao],[CarXingHao],[LeiXing],[SuoShuDep],[DriverUser],[NowState],[UserName],[TimeStr],[BackInfo]) VALUES ( 5,N'��λ����',N'��A-JK888',N'����',N'����',N'���в���',N'�Ź���',N'����ʹ��',N'admin',N'2012/3/2 10:22:57',N'��')
INSERT [ERPCarInfo] ([ID],[CarName],[CarPaiHao],[CarXingHao],[LeiXing],[SuoShuDep],[DriverUser],[NowState],[UserName],[TimeStr],[BackInfo]) VALUES ( 6,N'һ������',N'��A-BL090',N'����',N'һ������ר��',N'�ͷ���',N'��ȫʤ',N'����ʹ��',N'admin',N'2012/3/2 10:24:06',N'��')

SET IDENTITY_INSERT [ERPCarInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCarJiaYou]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCarJiaYou]

CREATE TABLE [ERPCarJiaYou] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CarName] [varchar]  (50) NULL,
[JYDate] [varchar]  (50) NULL,
[JingBanUser] [varchar]  (50) NULL,
[DriverUser] [varchar]  (50) NULL,
[JiaYouAddress] [varchar]  (50) NULL,
[StartNum] [varchar]  (50) NULL,
[JiaYouNum] [varchar]  (50) NULL,
[YouFeiJinE] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPCarJiaYou] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCarJiaYou] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCarJiaYou] ON

INSERT [ERPCarJiaYou] ([ID],[CarName],[JYDate],[JingBanUser],[DriverUser],[JiaYouAddress],[StartNum],[JiaYouNum],[YouFeiJinE],[UserName],[TimeStr],[BackInfo]) VALUES ( 2,N'��λ����',N'2012-3-1',N'�Ź���',N'�Ź���',N'����319����',N'10',N'20',N'150',N'admin',N'2012/3/2 10:32:43',N'�ܺ�')

SET IDENTITY_INSERT [ERPCarJiaYou] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCarLog]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCarLog]

CREATE TABLE [ERPCarLog] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CarName] [varchar]  (50) NULL,
[LogDate] [varchar]  (50) NULL,
[JingBanUser] [varchar]  (50) NULL,
[DriverUser] [varchar]  (50) NULL,
[ChuCheDate] [varchar]  (50) NULL,
[StartNum] [varchar]  (50) NULL,
[EndNum] [varchar]  (50) NULL,
[XingShiTime] [varchar]  (50) NULL,
[ShiYou] [varchar]  (5000) NULL,
[XingShiLiCheng] [varchar]  (50) NULL,
[YouHaoShu] [varchar]  (50) NULL,
[DaoDaAddress] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPCarLog] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCarLog] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCarLog] ON

INSERT [ERPCarLog] ([ID],[CarName],[LogDate],[JingBanUser],[DriverUser],[ChuCheDate],[StartNum],[EndNum],[XingShiTime],[ShiYou],[XingShiLiCheng],[YouHaoShu],[DaoDaAddress],[UserName],[TimeStr],[BackInfo]) VALUES ( 2,N'��λ����',N'2012-3-1',N'�Ź���',N'�Ź���',N'2012-3-1',N'2390',N'2590',N'2',N'���ͻ��ֳ����пͻ�ά���ƻ�',N'200',N'20',N'����',N'admin',N'2012/3/2 10:30:56',N'��')

SET IDENTITY_INSERT [ERPCarLog] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCarShiYong]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCarShiYong]

CREATE TABLE [ERPCarShiYong] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CarName] [varchar]  (50) NULL,
[DriverUser] [varchar]  (50) NULL,
[YongCheUser] [varchar]  (50) NULL,
[YongCheBuMen] [varchar]  (50) NULL,
[QiShiTime] [varchar]  (50) NULL,
[JieShuTime] [varchar]  (50) NULL,
[MuDiDi] [varchar]  (50) NULL,
[LiCheng] [varchar]  (50) NULL,
[ShengQingUser] [varchar]  (50) NULL,
[DiaoDuUser] [varchar]  (50) NULL,
[ShengQingShiYou] [varchar]  (5000) NULL,
[NowState] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPCarShiYong] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCarShiYong] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCarShiYong] ON

INSERT [ERPCarShiYong] ([ID],[CarName],[DriverUser],[YongCheUser],[YongCheBuMen],[QiShiTime],[JieShuTime],[MuDiDi],[LiCheng],[ShengQingUser],[DiaoDuUser],[ShengQingShiYou],[UserName],[TimeStr],[BackInfo]) VALUES ( 4,N'��λ����',N'�Ź���',N'����,������',N'�ͷ���',N'2012-03-02 10:00:00',N'2012-03-02 16:00:00',N'����',N'480',N'����',N'��ȫʤ',N'���ͻ��ֳ�ά���ͻ�ϵͳ��',N'admin',N'2012/3/2 10:26:10',N'��')

SET IDENTITY_INSERT [ERPCarShiYong] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCarWeiHu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCarWeiHu]

CREATE TABLE [ERPCarWeiHu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CarName] [varchar]  (50) NULL,
[WeiHuRiQi] [varchar]  (50) NULL,
[WeiHuLeiXing] [varchar]  (50) NULL,
[WeiHuYuanYin] [varchar]  (5000) NULL,
[JingBanUser] [varchar]  (50) NULL,
[WeiHuFeiYong] [varchar]  (50) NULL,
[NowState] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPCarWeiHu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCarWeiHu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCarWeiHu] ON

INSERT [ERPCarWeiHu] ([ID],[CarName],[WeiHuRiQi],[WeiHuLeiXing],[WeiHuYuanYin],[JingBanUser],[WeiHuFeiYong],[UserName],[TimeStr],[BackInfo]) VALUES ( 2,N'һ������',N'2012-3-1',N'����',N'��������',N'�Ź���',N'12000',N'admin',N'2012/3/2 10:27:22',N'�𻵺�����')
INSERT [ERPCarWeiHu] ([ID],[CarName],[WeiHuRiQi],[WeiHuLeiXing],[WeiHuYuanYin],[JingBanUser],[WeiHuFeiYong],[UserName],[TimeStr],[BackInfo]) VALUES ( 3,N'��λ����',N'2012-3-5',N'һ������',N'���Ӿ���',N'�Ź���',N'200',N'admin',N'2012/3/2 10:27:57',N'��')

SET IDENTITY_INSERT [ERPCarWeiHu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCarWeiZhang]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCarWeiZhang]

CREATE TABLE [ERPCarWeiZhang] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CarName] [varchar]  (50) NULL,
[WZDate] [varchar]  (50) NULL,
[DriverUser] [varchar]  (50) NULL,
[WZAddress] [varchar]  (50) NULL,
[KouFenNum] [varchar]  (50) NULL,
[FKJinE] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPCarWeiZhang] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCarWeiZhang] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCarWeiZhang] ON

INSERT [ERPCarWeiZhang] ([ID],[CarName],[WZDate],[DriverUser],[WZAddress],[KouFenNum],[FKJinE],[UserName],[TimeStr],[BackInfo]) VALUES ( 2,N'��λ����',N'2012-3-1',N'�Ź���',N'������������',N'2',N'200',N'admin',N'2012/3/2 10:33:18',N'�����')

SET IDENTITY_INSERT [ERPCarWeiZhang] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPContract]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPContract]

CREATE TABLE [ERPContract] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[HeTongName] [varchar]  (200) NULL,
[HeTongSerils] [varchar]  (50) NULL,
[HeTongLeiXing] [varchar]  (50) NULL,
[QianYueKeHu] [varchar]  (200) NULL,
[HeTongMiaoShu] [varchar]  (8000) NULL,
[HeTongTiaoKuan] [varchar]  (8000) NULL,
[HeTongContent] [text]  NULL,
[ShengXiaoDate] [datetime]  NULL,
[ZhongZhiDate] [datetime]  NULL,
[TiXingDate] [datetime]  NULL,
[QianYueRenBuy] [varchar]  (50) NULL,
[QianYueRenSell] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL DEFAULT (getdate()),
[CreateUser] [varchar]  (50) NULL,
[FuJianList] [varchar]  (500) NULL,
[BackInfo] [varchar]  (8000) NULL,
[NowState] [varchar]  (50) NULL,
[HTZJ] [float]  NULL,
[YFFY] [float]  NULL,
[SFJF] [varchar]  (50) NULL,
[SQFY] [float]  NULL)

ALTER TABLE [ERPContract] WITH NOCHECK ADD  CONSTRAINT [PK_ERPContract] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPContract] ON

INSERT [ERPContract] ([ID],[HeTongName],[HeTongSerils],[HeTongLeiXing],[QianYueKeHu],[HeTongMiaoShu],[HeTongTiaoKuan],[HeTongContent],[ShengXiaoDate],[ZhongZhiDate],[TiXingDate],[QianYueRenBuy],[QianYueRenSell],[CreateTime],[CreateUser],[NowState],[HTZJ],[YFFY],[SFJF],[SQFY]) VALUES ( 2,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'BD-HT-001',N'��Ҫ��ͬ',N'����������Ź�ҵ��Ʒ���޹�˾',N'�����ҵ��Ϣ�����裬��ƴ���ϵͳ��',N'��ʱ��������ʱ���',N'<P>�����ҵ��Ϣ�����裬��ƴ���ϵͳ��</P>��ʱ��������ʱ���',N'2012/3/1 0:00:00',N'2013/3/1 0:00:00',N'2012/3/1 0:00:00',N'2013-1-15',N'2013-1-23',N'2012/3/2 11:56:02',N'admin',N'��ɲɹ�',70000,123,N'�ѽ���',69877)
INSERT [ERPContract] ([ID],[HeTongName],[HeTongSerils],[HeTongLeiXing],[HeTongMiaoShu],[HeTongTiaoKuan],[HeTongContent],[ShengXiaoDate],[ZhongZhiDate],[TiXingDate],[QianYueRenBuy],[QianYueRenSell],[CreateTime],[CreateUser],[BackInfo],[NowState],[SFJF]) VALUES ( 3,N'test',N'YL-201212-X-0001',N'��Ҫ��ͬ�Ե�',N'sdf',N'sdf',N'sdfsdf',N'2012/12/4 0:00:00',N'2012/12/19 0:00:00',N'2012/12/19 0:00:00',N'2013-1-22',N'2013-1-31',N'2012/12/27 10:31:10',N'admin',N'�������',N'ͨ�����[�ȴ��ɹ�]',N'δ����')
INSERT [ERPContract] ([ID],[HeTongName],[HeTongSerils],[HeTongLeiXing],[HeTongMiaoShu],[HeTongTiaoKuan],[HeTongContent],[ShengXiaoDate],[ZhongZhiDate],[TiXingDate],[QianYueRenBuy],[QianYueRenSell],[CreateTime],[CreateUser],[NowState],[SFJF]) VALUES ( 4,N'ˮ����Ե�',N'YL-201212-X-0002',N'��Ҫ��ͬ',N'ˮ���',N'ˮ���',N'ˮ���',N'2012/12/13 0:00:00',N'2012/12/20 0:00:00',N'2012/12/20 0:00:00',N'2013-1-23',N'2013-1-29',N'2012/12/28 10:30:56',N'admin',N'ͨ�����[�ȴ��ɹ�]',N'δ����')
INSERT [ERPContract] ([ID],[HeTongName],[HeTongSerils],[ShengXiaoDate],[ZhongZhiDate],[TiXingDate],[CreateTime],[CreateUser],[NowState],[SFJF]) VALUES ( 6,N'��˹��',N'YL-201301-X-0001',N'2013/1/8 0:00:00',N'2013/1/15 0:00:00',N'2013/1/21 0:00:00',N'2013/1/7 13:56:46',N'admin',N'���ڲɹ�',N'δ����')
INSERT [ERPContract] ([ID],[HeTongName],[HeTongSerils],[HeTongLeiXing],[HeTongMiaoShu],[HeTongTiaoKuan],[HeTongContent],[ShengXiaoDate],[ZhongZhiDate],[TiXingDate],[QianYueRenBuy],[QianYueRenSell],[CreateTime],[CreateUser],[NowState],[SFJF]) VALUES ( 7,N'l;',N'YL-201311-X-0001',N';''',N'''',N';',N'<p>;;;;;;l</p>',N'2010/1/1 0:00:00',N'2010/1/1 0:00:00',N'2010/1/1 0:00:00',N'2010-1-1',N'2010-101',N'2013/11/11 9:24:40',N'liyiyang',N'�ȴ����',N'δ����')
INSERT [ERPContract] ([ID],[HeTongName],[HeTongSerils],[HeTongLeiXing],[QianYueKeHu],[ShengXiaoDate],[ZhongZhiDate],[TiXingDate],[QianYueRenBuy],[QianYueRenSell],[CreateTime],[CreateUser],[NowState],[SFJF]) VALUES ( 8,N'ˮ����Ե�1',N'RWCC-201403-X-0001',N'��Ҫ��ͬ',N'����������Ź�ҵ��Ʒ���޹�˾',N'2014/3/11 0:00:00',N'2014/3/11 0:00:00',N'2014/3/11 0:00:00',N'2014-3-11',N'2014-3-11',N'2014/3/11 14:46:33',N'admin',N'�ȴ����',N'δ����')
INSERT [ERPContract] ([ID],[HeTongName],[HeTongSerils],[HeTongLeiXing],[ShengXiaoDate],[ZhongZhiDate],[TiXingDate],[QianYueRenBuy],[QianYueRenSell],[CreateTime],[CreateUser],[NowState],[SFJF]) VALUES ( 9,N'ˮ����Ե�2',N'RWCC-201403-X-0002',N'��Ҫ��ͬ',N'2014/3/11 0:00:00',N'2014/3/11 0:00:00',N'2014/3/11 0:00:00',N'2014-3-11',N'2014-3-11',N'2014/3/11 14:51:00',N'admin',N'�ȴ����',N'δ����')

SET IDENTITY_INSERT [ERPContract] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPContractChanPin]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPContractChanPin]

CREATE TABLE [ERPContractChanPin] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[HeTongName] [varchar]  (50) NULL,
[ChanPinName] [varchar]  (50) NULL,
[DanJia] [numeric]  (18,2) NULL,
[ShuLiang] [numeric]  (18,2) NULL,
[ZongJia] [numeric]  (18,2) NULL,
[YiFuKuan] [numeric]  (18,2) NULL,
[QianKuanShu] [numeric]  (18,2) NULL,
[IFJiaoFu] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL,
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPContractChanPin] WITH NOCHECK ADD  CONSTRAINT [PK_ERPContractChanPin] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPContractChanPin] ON

INSERT [ERPContractChanPin] ([ID],[HeTongName],[ChanPinName],[DanJia],[ShuLiang],[ZongJia],[YiFuKuan],[QianKuanShu],[IFJiaoFu],[UserName],[TimeStr]) VALUES ( 6,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'OA�칫ϵͳV7.2.1-��ҵͨ�ð�',35000.00,1.00,35000.00,35000.00,0.00,N'�ѽ���',N'admin',N'2012/3/2 11:56:45')
INSERT [ERPContractChanPin] ([ID],[HeTongName],[ChanPinName],[DanJia],[ShuLiang],[ZongJia],[YiFuKuan],[QianKuanShu],[IFJiaoFu],[UserName],[TimeStr]) VALUES ( 7,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'����������',35000.00,1.00,35000.00,35000.00,0.00,N'�ѽ���',N'admin',N'2012/3/2 11:57:07')

SET IDENTITY_INSERT [ERPContractChanPin] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCrmSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCrmSetting]

CREATE TABLE [ERPCrmSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TableName] [varchar]  (100) NULL,
[LieName] [varchar]  (100) NULL,
[CanShuName] [varchar]  (100) NULL)

ALTER TABLE [ERPCrmSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCrmSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCrmSetting] ON

INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 1,N'ERPCustomInfo',N'XingZhi',N'˽Ӫ��ҵ')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 2,N'ERPCustomInfo',N'XingZhi',N'��Ӫ��ҵ')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 3,N'ERPCustomInfo',N'XingZhi',N'������λ')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 4,N'ERPCustomInfo',N'LaiYuan',N'��������')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 5,N'ERPCustomInfo',N'LaiYuan',N'��������')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 6,N'ERPCustomInfo',N'BackInfoA',N'��')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 7,N'ERPCustomInfo',N'BackInfoA',N'һ��')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 8,N'ERPCustomInfo',N'BackInfoA',N'��')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 9,N'ERPCustomInfo',N'XingZhi',N'������ҵ')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 13,N'ERPLinkLog',N'LinkResult',N'�ܺ�')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 14,N'ERPLinkLog',N'LinkResult',N'����')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 15,N'ERPLinkLog',N'LinkResult',N'һ��')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 16,N'ERPCustomFuWu',N'FuWuResult',N'�ܺ�')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 17,N'ERPCustomInfo',N'ZhuangTai',N'����ͻ�')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 18,N'ERPCustomInfo',N'DingDanCount',N'�ܺ�')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 19,N'ERPCustomInfo',N'CusBakE',N'����')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 20,N'ERPCustomInfo',N'QuYu',N'��ɿ�')
INSERT [ERPCrmSetting] ([ID],[TableName],[LieName],[CanShuName]) VALUES ( 21,N'ERPCustomInfo',N'LaiYuan',N'������Դ')

SET IDENTITY_INSERT [ERPCrmSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCustomFuWu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCustomFuWu]

CREATE TABLE [ERPCustomFuWu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CustomName] [varchar]  (100) NULL,
[FuWuTitle] [varchar]  (500) NULL,
[FuWuType] [varchar]  (500) NULL,
[FuWuResult] [varchar]  (5000) NULL,
[FuWuTime] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[IFShare] [varchar]  (5000) NULL,
[CusBakA] [varchar]  (8000) NULL,
[CusBakB] [varchar]  (8000) NULL,
[CusBakC] [varchar]  (8000) NULL,
[CusBakD] [varchar]  (8000) NULL,
[CusBakE] [varchar]  (8000) NULL)

ALTER TABLE [ERPCustomFuWu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCustomFuWu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCustomFuWu] ON

INSERT [ERPCustomFuWu] ([ID],[CustomName],[FuWuTitle],[FuWuType],[FuWuResult],[FuWuTime],[UserName],[TimeStr]) VALUES ( 4,N'����������Ź�ҵ��Ʒ���޹�˾',N'ʵʩ��װ����ѵ',N'�ۺ����',N'���',N'2012-3-1',N'admin',N'2012/3/2 11:46:54')

SET IDENTITY_INSERT [ERPCustomFuWu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCustomHuiFang]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCustomHuiFang]

CREATE TABLE [ERPCustomHuiFang] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CustomName] [varchar]  (100) NULL,
[HuiFangTitle] [varchar]  (500) NULL,
[HuiFangType] [varchar]  (500) NULL,
[HuiFangResult] [varchar]  (5000) NULL,
[HuiFangTime] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[IFShare] [varchar]  (5000) NULL,
[CusBakA] [varchar]  (8000) NULL,
[CusBakB] [varchar]  (8000) NULL,
[CusBakC] [varchar]  (8000) NULL,
[CusBakD] [varchar]  (8000) NULL,
[CusBakE] [varchar]  (8000) NULL)

ALTER TABLE [ERPCustomHuiFang] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCustomHuiFang] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCustomHuiFang] ON

INSERT [ERPCustomHuiFang] ([ID],[CustomName],[HuiFangTitle],[HuiFangType],[HuiFangResult],[HuiFangTime],[UserName],[TimeStr]) VALUES ( 4,N'����������Ź�ҵ��Ʒ���޹�˾',N'�ۺ�ά����ط�ʹ�����',N'�����ط�',N'�ͻ���ӳ����',N'2012-3-5',N'admin',N'2012/3/2 11:47:38')
INSERT [ERPCustomHuiFang] ([ID],[CustomName],[HuiFangTitle],[HuiFangType],[HuiFangResult],[HuiFangTime],[UserName],[TimeStr],[IFShare]) VALUES ( 5,N'����������Ź�ҵ��Ʒ���޹�˾',N'dfgdf',N'fgsg',N'gsdf',N'g',N'admin',N'2014/3/11 20:25:11',N'fgsdf')

SET IDENTITY_INSERT [ERPCustomHuiFang] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCustomInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCustomInfo]

CREATE TABLE [ERPCustomInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CustomName] [varchar]  (200) NULL,
[CustomSerils] [varchar]  (100) NULL,
[ChargeMan] [varchar]  (100) NULL,
[Address] [varchar]  (500) NULL,
[UrlLink] [varchar]  (200) NULL,
[YouBian] [varchar]  (50) NULL,
[TelStr] [varchar]  (100) NULL,
[XingZhi] [varchar]  (50) NULL,
[LaiYuan] [varchar]  (50) NULL,
[QuYu] [varchar]  (50) NULL,
[ZhuangTai] [varchar]  (50) NULL,
[RenShu] [varchar]  (50) NULL,
[BanGongMianJi] [varchar]  (50) NULL,
[LeiBie] [varchar]  (50) NULL,
[JiBie] [varchar]  (50) NULL,
[YeWuFanWei] [varchar]  (200) NULL,
[HangYe] [varchar]  (100) NULL,
[MuQianWenTi] [varchar]  (500) NULL,
[YuJiDingDanDate] [varchar]  (100) NULL,
[BackInfoA] [varchar]  (8000) NULL,
[BackInfoB] [varchar]  (8000) NULL,
[BackInfoC] [varchar]  (8000) NULL,
[BackInfoD] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[DingDanCount] [varchar]  (50) NULL,
[YuJiTiXing] [varchar]  (50) NULL,
[IFShare] [varchar]  (5000) NULL,
[CusBakA] [varchar]  (8000) NULL,
[CusBakB] [varchar]  (8000) NULL,
[CusBakC] [varchar]  (8000) NULL,
[CusBakD] [varchar]  (8000) NULL,
[CusBakE] [varchar]  (8000) NULL,
[NameEng] [varchar]  (50) NULL,
[FaRenDaiMa] [varchar]  (50) NULL,
[YingYeZhiZhao] [varchar]  (50) NULL,
[ZiBenE] [varchar]  (50) NULL,
[ZuZhiXingZhi] [varchar]  (50) NULL,
[YingYeChangSuo] [varchar]  (50) NULL,
[JingJi] [varchar]  (50) NULL,
[SheHuiGuanXi] [varchar]  (100) NULL,
[BenGongSiGuanXi] [varchar]  (50) NULL,
[JieShaoRen] [varchar]  (50) NULL,
[BaoZhengRen] [varchar]  (50) NULL,
[ShuiPiaoName] [varchar]  (50) NULL,
[DiZhiDianHua] [varchar]  (500) NULL,
[NaShuiDengJiHao] [varchar]  (50) NULL,
[KaiHuHangZhangHao] [varchar]  (200) NULL,
[JiaoYiFangShi] [varchar]  (50) NULL,
[ZhangQi] [varchar]  (50) NULL,
[FuKuanFangShi] [varchar]  (50) NULL,
[YunFeiChengDan] [varchar]  (50) NULL,
[CuXiaoFei] [varchar]  (50) NULL,
[GuangGaoFei] [varchar]  (50) NULL,
[YouDaiZheKou] [varchar]  (50) NULL,
[FuKuanTaiDu] [varchar]  (50) NULL,
[ShiFouDuiZhang] [varchar]  (50) NULL,
[DuiZhangShiJian] [varchar]  (50) NULL,
[ZuiJiaPaiFangShiJian] [varchar]  (50) NULL,
[ZuiJiaShouKuanShiJian] [varchar]  (50) NULL,
[QiTaGongYing] [varchar]  (500) NULL,
[ChangYongNaJia] [varchar]  (5000) NULL,
[GongSiYiJian] [varchar]  (500) NULL,
[ZiXin] [varchar]  (50) NULL,
[ZongJieLun] [varchar]  (50) NULL)

ALTER TABLE [ERPCustomInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCustomInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCustomInfo] ON

INSERT [ERPCustomInfo] ([ID],[CustomName],[CustomSerils],[ChargeMan],[Address],[UrlLink],[YouBian],[TelStr],[XingZhi],[LaiYuan],[QuYu],[ZhuangTai],[RenShu],[BanGongMianJi],[LeiBie],[JiBie],[YeWuFanWei],[HangYe],[MuQianWenTi],[YuJiDingDanDate],[BackInfoA],[BackInfoB],[BackInfoC],[TimeStr],[UserName],[DingDanCount],[YuJiTiXing],[IFShare],[CusBakD],[CusBakE]) VALUES ( 8,N'����������Ź�ҵ��Ʒ���޹�˾',N'BD-001',N'������',N'�����а������㶴��ҵ԰',N'����',N'400000',N'023-67466469',N'˽Ӫ��ҵ',N'��������',N'������',N'����֤',N'200',N'5000',N'�ص�ͻ�',N'A���ͻ�',N'��ҵ��Ʒ',N'��е�ӹ�',N'��Ҫ��Ϣ���칫',N'2012-3-1',N'һ��',N'һ��',N'����',N'2012/3/2 11:39:50',N'admin',N'����',N'2012-3-1',N'admin,��ȫʤ,��Ϊ��',N'����',N'100')
INSERT [ERPCustomInfo] ([ID],[CustomName],[TimeStr],[UserName]) VALUES ( 9,N'op',N'2013/11/11 9:23:04',N'liyiyang')

SET IDENTITY_INSERT [ERPCustomInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCustomNeed]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCustomNeed]

CREATE TABLE [ERPCustomNeed] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CustomName] [varchar]  (100) NULL,
[NeedContent] [varchar]  (8000) NULL,
[NeedNow] [varchar]  (5000) NULL,
[NeedProduct] [varchar]  (5000) NULL,
[NeedTime] [varchar]  (500) NULL,
[NeedLike] [varchar]  (500) NULL,
[JingZhengDuiShou] [varchar]  (500) NULL,
[HeZuoYiYuan] [varchar]  (500) NULL,
[HeZuoJiLv] [varchar]  (500) NULL,
[NeedZhangAi] [varchar]  (5000) NULL,
[BackInfo] [varchar]  (8000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[IFShare] [varchar]  (5000) NULL,
[CusBakA] [varchar]  (8000) NULL,
[CusBakB] [varchar]  (8000) NULL,
[CusBakC] [varchar]  (8000) NULL,
[CusBakD] [varchar]  (8000) NULL,
[CusBakE] [varchar]  (8000) NULL)

ALTER TABLE [ERPCustomNeed] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCustomNeed] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCustomNeed] ON

INSERT [ERPCustomNeed] ([ID],[CustomName],[NeedContent],[NeedNow],[NeedProduct],[NeedTime],[NeedLike],[JingZhengDuiShou],[HeZuoYiYuan],[HeZuoJiLv],[NeedZhangAi],[UserName],[TimeStr]) VALUES ( 3,N'����������Ź�ҵ��Ʒ���޹�˾',N'OA�칫�Զ���ϵͳ',N'����ѡ��',N'OA�칫ϵͳ',N'2012-3-1',N'��',N'��������',N'�ܴ�',N'�ܴ�',N'��',N'admin',N'2012/3/2 11:45:32')

SET IDENTITY_INSERT [ERPCustomNeed] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPCYDIC]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPCYDIC]

CREATE TABLE [ERPCYDIC] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[DicName] [varchar]  (50) NULL,
[Backinfo] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL)

ALTER TABLE [ERPCYDIC] WITH NOCHECK ADD  CONSTRAINT [PK_ERPCYDIC] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPCYDIC] ON

INSERT [ERPCYDIC] ([ID],[DicName],[Backinfo],[UserName],[TimeStr]) VALUES ( 5,N'��������',N'�����Է����ĵ��ļ�',N'admin',N'2012/2/29 16:28:04')
INSERT [ERPCYDIC] ([ID],[DicName],[Backinfo],[UserName],[TimeStr]) VALUES ( 6,N'���´���',N'���¼���λ���߸��˴���',N'admin',N'2012/2/29 16:28:34')
INSERT [ERPCYDIC] ([ID],[DicName],[Backinfo],[UserName],[TimeStr]) VALUES ( 7,N'���ϴ���',N'���ϼ���λ���߸��˴����ļ�',N'admin',N'2012/2/29 16:28:51')

SET IDENTITY_INSERT [ERPCYDIC] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPDangAn]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPDangAn]

CREATE TABLE [ERPDangAn] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileName] [varchar]  (50) NULL,
[JuanKuName] [varchar]  (50) NULL,
[FileSerils] [varchar]  (50) NULL,
[FileTitle] [varchar]  (50) NULL,
[FaWenDanWei] [varchar]  (50) NULL,
[FaWenDate] [varchar]  (50) NULL,
[MiJi] [varchar]  (50) NULL,
[JingJi] [varchar]  (50) NULL,
[TypeStr] [varchar]  (50) NULL,
[GongWenType] [varchar]  (50) NULL,
[FilePage] [varchar]  (50) NULL,
[FuJianList] [varchar]  (5000) NULL,
[BackInfo] [varchar]  (5000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[IFDel] [varchar]  (50) NULL DEFAULT ('��'))

ALTER TABLE [ERPDangAn] WITH NOCHECK ADD  CONSTRAINT [PK_ERPDangAn] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPDangAn] ON

INSERT [ERPDangAn] ([ID],[FileName],[JuanKuName],[FileSerils],[FileTitle],[FaWenDanWei],[FaWenDate],[MiJi],[JingJi],[TypeStr],[GongWenType],[FilePage],[FuJianList],[BackInfo],[UserName],[TimeStr],[IFDel]) VALUES ( 4,N'�ڲ���Ҫ��Ŀ�ļ�����',N'��Ŀ�ļ�',N'BD-DN-FL-001',N'��λ�ڲ���Ҫ��Ŀ�ļ�',N'�۶��Ƽ�',N'2012-3-1',N'����',N'����',N'��Ҫ�ļ�',N'��λ����',N'20',N'634662816264218750.doc',N'��',N'admin',N'2012/3/2 10:40:33',N'��')
INSERT [ERPDangAn] ([ID],[FileName],[JuanKuName],[FileSerils],[FileTitle],[FaWenDanWei],[FaWenDate],[MiJi],[JingJi],[TypeStr],[GongWenType],[FilePage],[FuJianList],[BackInfo],[UserName],[TimeStr],[IFDel]) VALUES ( 5,N'�ͷ�ʹ��ָ������ѯ',N'�ͷ��ļ�',N'BD-DN-FL-002',N'�ͷ�ʹ��ָ������ѯ',N'�۶��Ƽ�',N'2012-3-1',N'����',N'��ͨ',N'һ���ļ�',N'��ͨ����',N'18',N'634662817294843750.ppt',N'��',N'admin',N'2012/3/2 10:42:13',N'��')
INSERT [ERPDangAn] ([ID],[FileName],[JuanKuName],[FileSerils],[FileTitle],[FaWenDanWei],[FaWenDate],[MiJi],[JingJi],[TypeStr],[GongWenType],[FilePage],[FuJianList],[BackInfo],[UserName],[TimeStr],[IFDel]) VALUES ( 6,N'�۶�OA��Ҫ�ļ�˵���ĵ�',N'��Ҫ�ļ�',N'BD-DN-FL-003',N'��λ�ڲ���Ҫ�ļ����',N'�۶��Ƽ�',N'2012-3-1',N'����',N'����',N'��Ҫ�ļ�',N'��λ����',N'40',N'634662818168125000.doc|634662818220625000.xls',N'��',N'admin',N'2012/3/2 10:43:46',N'��')

SET IDENTITY_INSERT [ERPDangAn] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPDanWeiInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPDanWeiInfo]

CREATE TABLE [ERPDanWeiInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[DanWeiName] [varchar]  (100) NULL,
[Tel] [varchar]  (100) NULL,
[Fax] [varchar]  (100) NULL,
[YouBian] [varchar]  (50) NULL,
[Address] [varchar]  (500) NULL,
[WebUrl] [varchar]  (200) NULL,
[Email] [varchar]  (100) NULL,
[KaiHuHang] [varchar]  (100) NULL,
[ZhangHao] [varchar]  (100) NULL)

ALTER TABLE [ERPDanWeiInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPDanWeiInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPDanWeiInfo] ON

INSERT [ERPDanWeiInfo] ([ID],[DanWeiName],[Tel],[Fax],[YouBian],[Address],[WebUrl],[Email],[KaiHuHang],[ZhangHao]) VALUES ( 1,N'�Ƽ����޹�˾',N'13888888888',N'023-67466469',N'400000',N'�������山��',N'http://www.baidu.com',N'9618195@qq.com',N'��������',N'00000000000000000')

SET IDENTITY_INSERT [ERPDanWeiInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPFileList]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPFileList]

CREATE TABLE [ERPFileList] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileName] [varchar]  (500) NULL,
[BianHao] [varchar]  (50) NULL,
[BackInfo] [text]  NULL,
[DaXiao] [int]  NULL,
[FileType] [varchar]  (50) NULL,
[DirID] [int]  NULL,
[ShangChuanTime] [datetime]  NULL DEFAULT (getdate()),
[FilePath] [varchar]  (200) NULL,
[UserName] [varchar]  (50) NULL,
[IFDel] [varchar]  (50) NULL,
[TypeName] [varchar]  (50) NULL,
[IfShare] [varchar]  (50) NULL,
[DirOrFile] [int]  NULL DEFAULT (0),
[CanAdd] [varchar]  (5000) NULL,
[CanMod] [varchar]  (5000) NULL,
[CanDel] [varchar]  (5000) NULL,
[CanView] [varchar]  (5000) NULL)

ALTER TABLE [ERPFileList] WITH NOCHECK ADD  CONSTRAINT [PK_ERPFileList] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPFileList] ON

INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 1,N'��Ŀ����',N'001',0,N'dir',0,N'2012/2/29 16:50:24',N'admin',N'��',N'�����ļ�',N'��',1,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 2,N'��������',N'002',0,N'dir',0,N'2012/2/29 17:06:49',N'admin',N'��',N'�����ļ�',N'��',1,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 3,N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc',N'003',N'�۶��Ƽ���ϵ��ʽ',21,N'doc',0,N'2012/2/29 16:51:11',N'634661310711250000.doc',N'admin',N'��',N'�����ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 4,N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc',N'004',N'�۶��Ƽ����޹�˾��ϵ��ʽ',21,N'doc',2,N'2012/2/29 16:52:05',N'634661311256875000.doc',N'admin',N'��',N'�����ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 5,N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc',N'005',N'�۶��Ƽ����޹�˾��ϵ��ʽ',21,N'doc',1,N'2012/2/29 16:52:36',N'634661311563437500.doc',N'admin',N'��',N'�����ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 6,N'��Ҫ����',N'008',0,N'dir',1,N'2012/2/29 17:06:38',N'admin',N'��',N'�����ļ�',N'��',1,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 7,N'��ʱ����',N'009',0,N'dir',2,N'2012/2/29 16:53:25',N'admin',N'��',N'�����ļ�',N'��',1,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 8,N'�½� Microsoft Excel ������.xls',N'010',14,N'xls',0,N'2012/2/29 17:02:52',N'634661317728906250.xls',N'admin',N'��',N'�����ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 9,N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt',N'012',12,N'ppt',0,N'2012/2/29 17:03:07',N'634661317877031250.ppt',N'admin',N'��',N'�����ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 10,N'�½� Microsoft Excel ������.xls',N'001',14,N'xls',0,N'2012/2/29 17:08:27',N'634661321079687500.xls',N'admin',N'��',N'��λ�ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 11,N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt',N'002',12,N'ppt',0,N'2012/2/29 17:08:43',N'634661321234531250.ppt',N'admin',N'��',N'��λ�ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 12,N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc',N'003',21,N'doc',0,N'2012/2/29 17:08:57',N'634661321370312500.doc',N'admin',N'��',N'��λ�ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 13,N'�����ļ���',N'008',0,N'dir',0,N'2012/2/29 17:09:17',N'admin',N'��',N'��λ�ļ�',N'��',1,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 14,N'�½� Microsoft Excel ������.xls',N'001',14,N'xls',13,N'2012/2/29 17:09:34',N'634661321743593750.xls',N'admin',N'��',N'��λ�ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 15,N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt',N'002',12,N'ppt',13,N'2012/2/29 17:09:45',N'634661321857031250.ppt',N'admin',N'��',N'��λ�ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 16,N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc',N'003',21,N'doc',13,N'2012/2/29 17:09:57',N'634661321979687500.doc',N'admin',N'��',N'��λ�ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 17,N'�½� Microsoft Excel ������.xls',N'001',14,N'xls',2,N'2012/2/29 17:10:21',N'634661322213906250.xls',N'admin',N'��',N'�����ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 18,N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt',N'002',12,N'ppt',2,N'2012/2/29 17:10:33',N'634661322334062500.ppt',N'admin',N'��',N'�����ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 19,N'�½� Microsoft Excel ������.xls',N'001',14,N'xls',0,N'2012/2/29 17:11:03',N'634661322632968750.xls',N'admin',N'��',N'��Ŀ�ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 20,N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt',N'002',12,N'ppt',0,N'2012/2/29 17:11:15',N'634661322755781250.ppt',N'admin',N'��',N'��Ŀ�ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 21,N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc',N'003',21,N'doc',0,N'2012/2/29 17:12:22',N'634661323421562500.doc',N'admin',N'��',N'��Ŀ�ļ�',N'��',0,N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ',N'admin,��ȫʤ')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 22,N'bug��¼HUQIBIN.docx',N'0002',N'<p>006</p>',105,N'docx',0,N'2013/11/9 10:37:00',N'635195902207907237.docx',N'admin',N'��',N'��Ŀ�ļ�',N'��',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanView]) VALUES ( 23,N'ol.',N'll;;',0,N'dir',0,N'2013/11/11 9:14:21',N'liyiyang',N'��',N'�����ļ�',N'��',1,N'[')
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile],[CanAdd],[CanMod],[CanDel],[CanView]) VALUES ( 24,N'Snap12.png',N'fsdf',N'<p>sdfdsfssfsdf</p>',109,N'png',23,N'2013/11/11 9:15:16',N'635197581168330000.png',N'liyiyang',N'��',N'�����ļ�',N'��',0,N'sdf',N'sdf',N'sdf',N'sdf')

SET IDENTITY_INSERT [ERPFileList] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPFKJH]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPFKJH]

CREATE TABLE [ERPFKJH] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[HeTongName] [varchar]  (200) NULL,
[GYS] [varchar]  (200) NULL,
[DaoKuanDate] [datetime]  NULL,
[TiXingDate] [datetime]  NULL,
[CreateTime] [datetime]  NULL DEFAULT (getdate()),
[CreateUser] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[NowState] [varchar]  (50) NULL)

ALTER TABLE [ERPFKJH] WITH NOCHECK ADD  CONSTRAINT [PK_ERPFKJH] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPFKJH] ON


SET IDENTITY_INSERT [ERPFKJH] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPGongGao]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPGongGao]

CREATE TABLE [ERPGongGao] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[UserBuMen] [varchar]  (5000) NULL,
[FuJian] [varchar]  (2000) NULL,
[ContentStr] [text]  NULL,
[TypeStr] [varchar]  (50) NULL)

ALTER TABLE [ERPGongGao] WITH NOCHECK ADD  CONSTRAINT [PK_ERPGongGao] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPGongGao] ON

INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[UserBuMen],[ContentStr],[TypeStr]) VALUES ( 8,N'���°�OA��������칫ϵͳ��ʽ�Ƴ�',N'2012/2/29 15:44:46',N'admin',N'���в���',N'<p>��λʹ���ߣ����ã�<br />��ӭʹ�á���ҵ�ۺϹ���ƽ̨---�������ܰ칫ϵͳ������ϵͳ���й���ȫ��ʵ�á���ȫ���ȶ��Ըߡ��ײ���������ά���򵥵��ص㣬���ö����������ͼ�����web�����������ݿ��ϵͳ���������ð�װ���û����ڰ�Сʱ�����а�װ��ϣ�����רҵ��Ա��������ά����B/S�ṹ��������Intranet/InternetӦ�ã��ͻ���ֻ�������������Ӱ칫ϵͳ�����۳������У����ǾӼҰ칫���������ܵ���Ӧ�֣�ʵ���޵������Ƶ�ȫ��칫��������Ϣ����ҵ������ļ��������ܹ������ȹ��ܡ�</p><p style="text-align:right;"><br /></p>',N'��λ')
INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[UserBuMen],[ContentStr],[TypeStr]) VALUES ( 9,N'���ϵͳ������ռ��취',N'2012/2/29 15:46:14',N'admin',N'���в���',N'<P>���ж�ʹ���ϲ���������߶�������ܲ���ȷ���û�����ֱ����ϵ���ǡ�</P><P>023-67466469&nbsp; 13696432490&nbsp;&nbsp; QQ��9618195</P>',N'��λ')
INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[ContentStr],[TypeStr]) VALUES ( 10,N'������Ϣ',N'2014/2/22 16:44:40',N'admin',N'���Թ�����Ϣ 2014-2-21',N'��λ')
INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[FuJian],[ContentStr],[TypeStr]) VALUES ( 11,N'������Ϣ2',N'2014/2/22 16:45:32',N'admin',N'635286843248159656.ppt',N'������Ϣ2 1645',N'��λ')
INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[FuJian],[ContentStr],[TypeStr]) VALUES ( 12,N'������Ϣ3',N'2014/2/22 16:57:30',N'admin',N'635286850419929656.xlsx',N'<p>��������㷢��������������˹�ٷ�</p>',N'��λ')
INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[FuJian],[ContentStr],[TypeStr]) VALUES ( 13,N'�������л����֪ͨ',N'2014/3/28 21:35:12',N'admin',N'635316392215240000.ppt',N'���ջ��顣',N'��λ')

SET IDENTITY_INSERT [ERPGongGao] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPGuDing]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPGuDing]

CREATE TABLE [ERPGuDing] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[GDName] [varchar]  (50) NULL,
[GDSerils] [varchar]  (50) NULL,
[GDType] [varchar]  (50) NULL,
[SuoShuBuMen] [varchar]  (50) NULL,
[GDAllCount] [varchar]  (50) NULL,
[NowCount] [varchar]  (50) NULL,
[NianXian] [varchar]  (50) NULL,
[GDXingZhi] [varchar]  (50) NULL,
[QiYongDate] [varchar]  (50) NULL,
[BaoGuanUser] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [text]  NULL)

ALTER TABLE [ERPGuDing] WITH NOCHECK ADD  CONSTRAINT [PK_ERPGuDing] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPGuDing] ON

INSERT [ERPGuDing] ([ID],[GDName],[GDSerils],[GDType],[SuoShuBuMen],[GDAllCount],[NowCount],[NianXian],[GDXingZhi],[QiYongDate],[BaoGuanUser],[UserName],[TimeStr],[BackInfo]) VALUES ( 3,N'��������������',N'FL-001',N'�̶��ʲ�',N'������',N'100000',N'80000',N'10',N'�����׺�',N'2010-1-1',N'������',N'admin',N'2012/3/2 9:50:33',N'�����׺�Ʒ����Ϊ��������������������;��')
INSERT [ERPGuDing] ([ID],[GDName],[GDSerils],[GDType],[SuoShuBuMen],[GDAllCount],[NowCount],[NianXian],[GDXingZhi],[QiYongDate],[BaoGuanUser],[UserName],[TimeStr],[BackInfo]) VALUES ( 4,N'��λ��������',N'ZF-002',N'�̶��ʲ�',N'������',N'200000',N'100000',N'5',N'����ά��',N'2010-1-1',N'������',N'admin',N'2012/3/2 9:52:04',N'����������ע���ر𱣹ܡ�')

SET IDENTITY_INSERT [ERPGuDing] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPGuDingJiLu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPGuDingJiLu]

CREATE TABLE [ERPGuDingJiLu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[GDName] [varchar]  (50) NULL,
[ZJType] [varchar]  (50) NULL,
[ZJDate] [varchar]  (50) NULL,
[ZJJinE] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPGuDingJiLu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPGuDingJiLu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPGuDingJiLu] ON

INSERT [ERPGuDingJiLu] ([ID],[GDName],[ZJType],[ZJDate],[ZJJinE],[UserName],[TimeStr],[BackInfo]) VALUES ( 5,N'��λ��������',N'ʹ���۾�',N'2012-1-1',N'100000',N'admin',N'2012/3/2 9:52:46',N'ʹ��ʱ�����۾�')
INSERT [ERPGuDingJiLu] ([ID],[GDName],[ZJType],[ZJDate],[ZJJinE],[UserName],[TimeStr],[BackInfo]) VALUES ( 6,N'��������������',N'ʹ���۾�',N'2012-1-1',N'20000',N'admin',N'2012/3/2 9:53:13',N'����ʹ���۾�')

SET IDENTITY_INSERT [ERPGuDingJiLu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPHuiBao]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPHuiBao]

CREATE TABLE [ERPHuiBao] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[ContentStr] [text]  NULL,
[FuJianStr] [varchar]  (2000) NULL,
[UserName] [varchar]  (100) NULL,
[CanLookUser] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL)

ALTER TABLE [ERPHuiBao] WITH NOCHECK ADD  CONSTRAINT [PK_ERPHuiBao] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPHuiBao] ON

INSERT [ERPHuiBao] ([ID],[TitleStr],[ContentStr],[UserName],[CanLookUser],[TimeStr]) VALUES ( 3,N'�Ը��˽��ڹ����ش����쵼�㱨',N'����һֱ�����ֳ�ʵʩ����ѵ����Ŀ�Ѿ���ɣ��ͻ�����ͨ�����뼼���������죬ϣ���쵼���ָ����������',N'admin',N'����,������,admin,��ȫʤ',N'2012/2/29 16:39:58')
INSERT [ERPHuiBao] ([ID],[TitleStr],[ContentStr],[UserName],[CanLookUser],[TimeStr]) VALUES ( 4,N'th',N'<p>fhf</p>',N'liyiyang',N'hfghfg',N'2013/11/11 9:12:17')

SET IDENTITY_INSERT [ERPHuiBao] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPHuiYuan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPHuiYuan]

CREATE TABLE [ERPHuiYuan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[NameStr] [varchar]  (50) NULL,
[RuHuiDate] [varchar]  (50) NULL,
[JieShaoRen] [varchar]  (50) NULL,
[SexStr] [varchar]  (50) NULL,
[JiGuan] [varchar]  (50) NULL,
[JingJi] [varchar]  (50) NULL,
[ChuShengDate] [varchar]  (50) NULL,
[XueLi] [varchar]  (50) NULL,
[ZiLi] [varchar]  (50) NULL,
[GeXing] [varchar]  (50) NULL,
[AiHao] [varchar]  (50) NULL,
[Address] [varchar]  (200) NULL,
[Tel] [varchar]  (50) NULL,
[MobTel] [varchar]  (50) NULL,
[ZuiJiaTime] [varchar]  (50) NULL,
[ChangYong] [varchar]  (50) NULL,
[ZiXin] [varchar]  (200) NULL,
[JieLun] [varchar]  (50) NULL,
[BackInfo] [text]  NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPHuiYuan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPHuiYuan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPHuiYuan] ON

INSERT [ERPHuiYuan] ([ID],[NameStr],[RuHuiDate],[JieShaoRen],[SexStr],[JiGuan],[JingJi],[ChuShengDate],[XueLi],[ZiLi],[GeXing],[AiHao],[Address],[Tel],[MobTel],[ZuiJiaTime],[ChangYong],[ZiXin],[JieLun],[BackInfo],[UserName],[TimeStr]) VALUES ( 2,N'�ź�',N'2012-3-1',N'��',N'��',N'�����山',N'����',N'2000-3-1',N'��ѧ',N'�߼�',N'���',N'�㷺',N'�������山�����˹�ҵ԰',N'023-67466469',N'13696432490',N'����8��',N'�˺͡���',N'����',N'����',N'<P>�ܺã�������ϵ��</P>',N'admin',N'2012/3/2 11:35:43')
INSERT [ERPHuiYuan] ([ID],[NameStr],[RuHuiDate],[UserName],[TimeStr]) VALUES ( 3,N'vcb',N'113-11-11',N'liyiyang',N'2013/11/11 9:22:40')

SET IDENTITY_INSERT [ERPHuiYuan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJiangCheng]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJiangCheng]

CREATE TABLE [ERPJiangCheng] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[JCUser] [varchar]  (50) NULL,
[JiangChengQuFen] [varchar]  (50) NULL,
[JiangChengType] [varchar]  (50) NULL,
[ShouYuDanWei] [varchar]  (50) NULL,
[JiangChengDate] [varchar]  (50) NULL,
[JiangChengMingMu] [varchar]  (5000) NULL,
[JiangChengYuanYin] [varchar]  (5000) NULL,
[BackInfo] [varchar]  (5000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPJiangCheng] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJiangCheng] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJiangCheng] ON

INSERT [ERPJiangCheng] ([ID],[JCUser],[JiangChengQuFen],[JiangChengType],[ShouYuDanWei],[JiangChengDate],[JiangChengMingMu],[JiangChengYuanYin],[UserName],[TimeStr]) VALUES ( 3,N'��Ϊ��',N'����',N'����200Ԫ',N'�۶��Ƽ�',N'2012-3-1',N'���⽱��',N'��ɺܺã��ͻ�Ҫ��',N'admin',N'2012/3/2 12:17:14')
INSERT [ERPJiangCheng] ([ID],[JCUser],[JiangChengQuFen],[JiangChengType],[ShouYuDanWei],[JiangChengDate],[JiangChengMingMu],[JiangChengYuanYin],[UserName],[TimeStr]) VALUES ( 4,N'������',N'�ͷ�',N'����300Ԫ',N'�۶��Ƽ�',N'2012-3-1',N'�ٵ����',N'�����ٵ�һ��',N'admin',N'2012/3/2 12:18:01')

SET IDENTITY_INSERT [ERPJiangCheng] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJiangChengZhiDu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJiangChengZhiDu]

CREATE TABLE [ERPJiangChengZhiDu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (200) NULL,
[JianJie] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[FuJianStr] [varchar]  (500) NULL,
[ConTentStr] [text]  NULL)

ALTER TABLE [ERPJiangChengZhiDu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJiangChengZhiDu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJiangChengZhiDu] ON

INSERT [ERPJiangChengZhiDu] ([ID],[TitleStr],[JianJie],[UserName],[TimeStr],[ConTentStr]) VALUES ( 2,N'vds',N'wegwreg',N'liyiyang',N'2013/11/11 9:29:59',N'<p>ygnhgggggggggggggggggggggggggggggggg</p>')

SET IDENTITY_INSERT [ERPJiangChengZhiDu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJianLi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJianLi]

CREATE TABLE [ERPJianLi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[YPName] [varchar]  (50) NULL,
[YPDate] [varchar]  (50) NULL,
[YPSex] [varchar]  (50) NULL,
[YPAge] [varchar]  (50) NULL,
[XueLi] [varchar]  (50) NULL,
[ZhuanYe] [varchar]  (50) NULL,
[YPZhiWei] [varchar]  (50) NULL,
[YPJieGuo] [varchar]  (100) NULL,
[BackInfo] [varchar]  (5000) NULL,
[FuJianStr] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPJianLi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJianLi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJianLi] ON


SET IDENTITY_INSERT [ERPJianLi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJiaoSe]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJiaoSe]

CREATE TABLE [ERPJiaoSe] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[JiaoSeName] [varchar]  (50) NULL,
[BackInfo] [varchar]  (1000) NULL,
[QuanXian] [varchar]  (8000) NULL)

ALTER TABLE [ERPJiaoSe] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJiaoSe] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJiaoSe] ON

INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[BackInfo],[QuanXian]) VALUES ( 3,N'��������Ա',N'��������Ա��ɫ',N'|126||||||||||||||||001||001A||001D||001E||||||||||002||002A||002M||002D||002E||||||||003||003A||003M||003D||003E||||||||098||098D||098E||||||||||||127||||||||||||||||092||092N||092A||092D||092E||||||||093||093A||093M||093D||093E||||||||094||094D||094E||||||||||||095||095A||095M||095D||095E||||||||004||004A||004M||004D||004E||||||||005||005A||005M||005D||005E||||||||097||097A||097M||097D||097E||||||||006||006A||006M||006D||006E||||||||007||007A||007M||007D||007E||||||||008||008A||008M||008D||008E||||||||009||009E||||||||||||||010||010A||010M||010D||010E||||||||011||011M||||||||||||||012||012M||||||||||||||096||096M||||||||||||||013||013A||013M||013D||013E||||||||014||||||||||||||||015||015D||015E||||||||||||016||016M||016E||||||||||||017||017M||017E||||||||||||018||018E||||||||||||||019||019M||019D||019E||||||||||020||020D||020E||||||||||||021||021M||||||||||||||022||022N||022A||022M||022D||022E||||||023||023N||023A||023M||023D||023E||||||024||024A||024M||024D||024E||||||||025||025A||025M||025D||025E||||||||026||026A||026M||026D||026E||||||||027||027D||027E||||||||||||028||028D||028E||||||||||||109||109A||109M||109D||109E||||||||110||110E||||||||||||||111||111A||111M||111D||111E||||||||112||112E||||||||||||||132||132N||132E||||||||||||133||133N||133A||133M||133D||133E||||||134||134D||134E||||||||||||135||135D||135E||||||||||||136||136D||136E||||||||||||137||137D||137E||||||||||||138||138D||138E||||||||||||139||139D||139E||||||||||||101||101E||||||||||||||102||102A||102D||102E||||||||||103||103A||103M||103D||103E||||||||104||104A||104M||104D||104E||||||||029||029N||029A||029M||029D||029E||||||030||030N||030A||030M||030D||030E||||||031||031N||031A||031M||031D||031E||||||032||032N||032A||032M||032D||032E||||||033||033N||033A||033M||033D||033E||||||034||034N||034A||034M||034D||034E||||||035||035N||035A||035M||035D||035E||||||036||036N||036A||036M||036D||036E||||||037||037D||037E||||||||||||038||038M||038D||038E||||||||||090||090A||090M||090D||090E||||||||039||039A||039M||039D||039E||||||||040||040A||040M||040D||040E||||||||125||125A||125M||125D||125E||||||||041||041A||041M||041D||041E||||||||042||042A||042M||042D||042E||||||||043||043A||043M||043D||043E||||||||062||062E||||||||||||||063||063A||063M||063D||063E||||||||064||064D||064E||||||||||||065||065E||||||||||||||066||066A||066M||066D||066E||||||||068||068A||068M||068D||068E||||||||069||069A||069M||069D||069E||||||||070||070A||070M||070D||070E||||||||071||071A||071M||071D||071E||||||||072||072A||072M||072D||072E||||||||073||073A||073M||073D||073E||||||||074||074A||074M||074D||074E||||||||120||120A||120M||120D||120E||||||||121||121A||121M||121D||121E||||||||122||122A||122M||122D||122E||||||||123||123A||123M||123D||123E||||||||124||124M||124D||124E||||||||||044||044A||044M||044D||044E||||||||045||045N||045A||045M||045D||045E||||||046||046A||046D||046E||||||||||047||047N||047D||047E||||||||||128||128A||128M||128D||128E||||||||048||048A||048M||048D||048E||||||||049||049A||049M||049D||049E||||||||050||050M||050E||||||||||||A080||||||||HY001||HY001A||HY001M||HY001D||HY001E||||||||HY002||HY002A||HY002M||HY002D||HY002E||||||||C001||C001A||C001M||C001D||C001E||||||||C002||C002A||C002M||C002D||C002E||||||||C003||C003A||C003M||C003D||C003E||||||||C004||C004A||C004M||C004D||C004E||||||||C005||C005A||C005M||C005D||C005E||||||||C006||C006A||C006M||C006D||C006E||||||||C007||C007A||C007M||C007D||C007E||||||||C008||C008A||C008M||C008D||C008E||||||||C018||C018A||C018M||C018D||C018E||||||||C009||C009M||C009D||C009E||||||||||C010||C010D||C010E||||||||||||C011||C011D||C011E||||||||||||C012||C012D||C012E||||||||||||C013||C013D||C013E||||||||||||C014||C014D||C014E||||||||||||C015||C015D||C015E||||||||||||C016||C016D||C016E||||||||||||C019||C019M||C019D||C019E||||||||||C017||C017M||C017E||||||||||||C020||||||||||||||||C021||||||||||||||||A009||A009A||A009M||A009D||A009E||||||||A010||A010A||A010M||A010D||A010E||||||||A011||A011A||A011M||A011D||A011E||||||||A012||A012A||A012M||A012D||A012E||||||||A030||A030A||A030M||A030D||A030E||||||||A015||A015A||A015M||A015D||A015E||||||||A016||A016A||A016M||A016D||A016E||||||||A017||A017A||A017M||A017D||A017E||||||||A040||A040A||A040M||A040D||A040E||||||||A013||A013A||A013M||A013D||A013E||||||||A014||A014A||A014M||A014D||A014E||||||||X001||X001A||X001M||X001D||X001E||||||||X002||X002A||X002M||X002D||X002E||||||||X003||X003A||X003M||X003D||X003E||||||||X004||X004A||X004M||X004D||X004E||||||||X005||X005A||X005M||X005D||X005E||||||||X006||X006A||X006D||X006E||||||||||X007||X007A||X007D||X007E||||||||||X008||X008A||X008M||X008D||X008E||||||||X009||||||||||||||||A050||A050A||A050M||A050D||A050E||||||||A060||A060A||A060M||A060D||A060E||||||||A070||A070A||A070M||A070D||A070E||||||||105||||||||||||||||106||106M||||||||||||||107||107E||||||||||||||108||108E||||||||||||||051||051M||051E||||||||||||052||052A||052M||052D||052E||||||||053||053A||053M||053D||053E||||||||054||054A||054M||054D||054E||||||||056||056A||056M||056D||056E||||||||057||057A||057M||057D||057E||||||||058||058A||058M||058D||058E||||||||059||059A||059M||059D||059E||||||||060||060A||060M||060D||060E||||||||061||061A||061M||061D||061E||||||||130||130A||130M||130D||130E||||||||131||131A||131M||131D||131E||||||||116||||||||||||||||117||117A||117M||117D||117E||||||||118||118D||||||||||||||119||119M||||||||||||||113||||||||||||||||114||||||||||||||||115||||||||||||||||075||||||||||||||||076||||||||||||||||077||||||||||||||||078||||||||||||||||079||||||||||||||||080||||||||||||||||081||||||||||||||||082||||||||||||||||083||||||||||||||||084||084M||||||||||||||085||085A||085M||085D||085E||||||||086||086C||086A||086M||086D||086E||||||087||087N||087A||087M||087D||087E||||||091||091A||091M||091D||091E||||||||088||088D||088E||||||||||||089||089M||||||||||||||099||099A||099M||099D||099E||||||||100|||||||||||||||')
INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[BackInfo],[QuanXian]) VALUES ( 17,N'��λ�쵼',N'�쵼��Աʹ�ý�ɫ',N'|126||001||001A||001D||001E||002||002A||002M||002D||002E||003||003A||003M||003D||003E||098||098D||098E||127||092||092N||092A||092D||092E||093||093A||093M||093D||093E||094||094D||094E||095||095A||095M||095D||095E||004||004A||004M||004D||004E||005||005A||005M||005D||005E||097||097A||097M||097D||097E||006||006A||006M||006D||006E||007||007A||007M||007D||007E||008||008A||008M||008D||008E||009||009E||010||010A||010M||010D||010E||011||011M||012||096||013||013A||013M||013D||013E||014||015||015D||015E||016||016M||016E||017||017M||017E||018||018E||019||019M||019D||019E||020||020D||020E||021||021M||022||022N||022A||022M||022D||022E||023||023N||023A||023M||023D||023E||024||024A||024M||024D||024E||025||025A||025M||025D||025E||026||026A||026M||026D||026E||027||027D||027E||028||028D||028E||109||109A||109M||109D||109E||110||110E||111||111A||111M||111D||111E||112||112E||132||132N||132E||133||133N||133A||133M||133D||133E||134||134D||134E||135||135D||135E||136||136D||136E||137||137D||137E||138||138D||138E||139||139D||139E||101||101E||102||102A||102D||102E||103||103A||103M||103D||103E||104||104A||104M||104D||104E||029||029N||029A||029M||029D||029E||030||030N||030A||030M||030D||030E||031||031N||031A||031M||031D||031E||032||032N||032A||032M||032D||032E||033||033N||033A||033M||033D||033E||034||034N||034A||034M||034D||034E||035||035N||035A||035M||035D||035E||036||036N||036A||036M||036D||036E||037||037D||037E||038||038M||038D||038E||090||090A||090M||090D||090E||039||039A||039M||039D||039E||040||040A||040M||040D||040E||125||125A||125M||125D||125E||041||041A||041M||041D||041E||042||042A||042M||042D||042E||043||043A||043M||043D||043E||062||062E||063||063A||063M||063D||063E||064||064D||064E||065||065E||066||066A||066M||066D||066E||068||068A||068M||068D||068E||069||069A||069M||069D||069E||070||070A||070M||070D||070E||071||071A||071M||071D||071E||072||072A||072M||072D||072E||073||073A||073M||073D||073E||074||074A||074M||074D||074E||120||120A||120M||120D||120E||121||121A||121M||121D||121E||122||122A||122M||122D||122E||123||123A||123M||123D||123E||124||124M||124D||124E||044||044A||044M||044D||044E||045||045N||045A||045M||045D||045E||046||046A||046D||046E||047||047N||047D||047E||128||128A||128M||128D||128E||048||048A||048M||048D||048E||049||049A||049M||049D||049E||050||050M||050E||HY001||HY001A||HY001M||HY001D||HY001E||HY002||HY002A||HY002M||HY002D||HY002E||C001||C001A||C001M||C001D||C001E||C002||C002A||C002M||C002D||C002E||C003||C003A||C003M||C003D||C003E||C004||C004A||C004M||C004D||C004E||C005||C005A||C005M||C005D||C005E||C006||C006A||C006M||C006D||C006E||C007||C007A||C007M||C007D||C007E||C008||C008A||C008M||C008D||C008E||C018||C018A||C018M||C018D||C018E||C009||C009M||C009D||C009E||C010||C010D||C010E||C011||C011D||C011E||C012||C012D||C012E||C013||C013D||C013E||C014||C014D||C014E||C015||C015D||C015E||C016||C016D||C016E||C019||C019M||C019D||C019E||C017||C017M||C017E||C020||C021||A009||A009A||A009M||A009D||A009E||A010||A010A||A010M||A010D||A010E||A011||A011A||A011M||A011D||A011E||A012||A012A||A012M||A012D||A012E||A015||A015A||A015M||A015D||A015E||A016||A016A||A016M||A016D||A016E||A017||A017A||A017M||A017D||A017E||A013||A013A||A013M||A013D||A013E||A014||A014A||A014M||A014D||A014E||X001||X001A||X001M||X001D||X001E||X002||X002A||X002M||X002D||X002E||X003||X003A||X003M||X003D||X003E||X004||X004A||X004M||X004D||X004E||X005||X005A||X005M||X005D||X005E||X006||X006A||X006D||X006E||X007||X007A||X007D||X007E||X008||X008A||X008M||X008D||X008E||X009||105||106||106M||107||107E||108||108E||051||051M||051E||052||052A||052M||052D||052E||053||053A||053M||053D||053E||054||054A||054M||054D||054E||056||056A||056M||056D||056E||057||057A||057M||057D||057E||058||058A||058M||058D||058E||059||059A||059M||059D||059E||060||060A||060M||060D||060E||061||061A||061M||061D||061E||130||130A||130M||130D||130E||131||131A||131M||131D||131E||116||117||117A||117M||117D||117E||118||118D||119||119M||113||114||115||075||076||077||078||079||080||081||082||083||084||085||085E||086||086C||086E||087||087E||091||091E||088||088E||089||099||099E|')
INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[BackInfo],[QuanXian]) VALUES ( 18,N'һ��Ա��',N'һ��Ա��ʹ�ô˽�ɫ',N'|||||||||||||||001A||001D||001E||||||||||002A||002M||002D||002E||||||||003A||003M||003D||003E||||||||098D||098E||||||||||||||||||||||||||092N||092A||092D||092E||||||||093A||093M||093D||093E||||||||094D||094E||||||||||||095A||095M||095D||095E||||||||004||004E||||||||005||005E||||||||097||097A||097M||097D||097E||||||||006||006A||006M||006D||006E||||||||007||007A||007M||007D||007E||||||||008||008E||||||||009||009E||||||||||||||010||010A||010M||010D||010E||||||||011M||||||||||||||012M||||||||||||||096M||||||||||||||013A||013M||013D||013E||||||||014||||||||||||||||015||015D||015E||||||||||||016||016M||016E||||||||||||017||017M||017E||||||||||||018||018E||||||||||||||019||019M||019D||019E||||||||||020||020D||020E||||||||||||021||021M||||||||||||||022E||||||023E||||||024E||||||||025E||||||||026A||026M||026D||026E||||||||027D||027E||||||||||||028D||028E||||||||||||109A||109M||109D||109E||||||||110E||||||||||||||111A||111M||111D||111E||||||||112E||||||||||||||132N||132E||||||||||||133N||133A||133M||133D||133E||||||134D||134E||||||||||||135D||135E||||||||||||136D||136E||||||||||||137D||137E||||||||||||138D||138E||||||||||||139D||139E||||||||||||101E||||||||||||||102A||102D||102E||||||||||103A||103M||103D||103E||||||||104A||104M||104D||104E||||||||029N||029A||029M||029D||029E||||||030E||||||031E||||||032E||||||033E||||||034E||||||035E||||||036E||||||037E||||||||||||||||||||090A||090M||090D||090E||||||||039A||039M||039D||039E||||||||040A||040M||040D||040E||||||||125A||125M||125D||125E||||||||041A||041M||041D||041E||||||||042A||042M||042D||042E||||||||043A||043M||043D||043E||||||||062E||||||||||||||063A||063M||063D||063E||||||||064D||064E||||||||||||065E||||||||||||||066A||066M||066D||066E||||||||068A||068M||068D||068E||||||||069A||069M||069D||069E||||||||070A||070M||070D||070E||||||||071A||071M||071D||071E||||||||072A||072M||072D||072E||||||||073A||073M||073D||073E||||||||074A||074M||074D||074E||||||||120A||120M||120D||120E||||||||121A||121M||121D||121E||||||||122A||122M||122D||122E||||||||123A||123M||123D||123E||||||||124M||124D||124E||||||||||||||||||||046A||046D||046E||||||||||||||||||||||||||||||049A||049M||049D||049E||||||||||||||||||||||||HY001A||HY001M||HY001D||HY001E||||||||||||||C001A||C001M||C001D||C001E||||||||C002A||C002M||C002D||C002E||||||||C003A||C003M||C003D||C003E||||||||C004A||C004M||C004D||C004E||||||||C005A||C005M||C005D||C005E||||||||C006A||C006M||C006D||C006E||||||||C007A||C007M||C007D||C007E||||||||C008A||C008M||C008D||C008E||||||||C018A||C018M||C018D||C018E||||||||C009M||C009D||C009E||||||||||C010D||C010E||||||||||||C011D||C011E||||||||||||C012D||C012E||||||||||||C013D||C013E||||||||||||C014D||C014E||||||||||||C015D||C015E||||||||||||C016D||C016E||||||||||||C019M||C019D||C019E||||||||||C017M||C017E||||||||||||||||||||||||||||||||||||||||A009A||A009M||A009D||A009E||||||||A010A||A010M||A010D||A010E||||||||A011A||A011M||A011D||A011E||||||||A012A||A012M||A012D||A012E||||||||A030A||A030M||A030D||A030E||||||||A015A||A015M||A015D||A015E||||||||A016A||A016M||A016D||A016E||||||||A017A||A017M||A017D||A017E||||||||A040A||A040M||A040D||A040E||||||||A013A||A013M||A013D||A013E||||||||A014A||A014M||A014D||A014E||||||||X001A||X001M||X001D||X001E||||||||X002A||X002M||X002D||X002E||||||||X003A||X003M||X003D||X003E||||||||X004A||X004M||X004D||X004E||||||||X005A||X005M||X005D||X005E||||||||X006A||X006D||X006E||||||||||X007A||X007D||X007E||||||||||X008A||X008M||X008D||X008E||||||||||||||||||||||A050A||A050M||A050D||||||||A060A||A060M||A060D||||||||A070A||A070M||A070D||||||||||||||||||||||106M||||||||||||||107E||||||||||||||108E||||||||||||||051M||051E||||||||||||052A||052M||052D||052E||||||||053A||053M||053D||053E||||||||054A||054M||054D||054E||||||||056A||056M||056D||056E||||||||057A||057M||057D||057E||||||||058A||058M||058D||058E||||||||059A||059M||059D||059E||||||||060A||060M||060D||060E||||||||061A||061M||061D||061E||||||||130A||130M||130D||130E|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||')
INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[QuanXian]) VALUES ( 19,N'��Ŀ����',N'|126||||||||||||||||001||001A||001D||001E||||||||||002||002A||002M||002D||002E||||||||003||003A||003M||003D||003E||||||||098||098D||098E||||||||||||127||||||||||||||||092||092N||092A||092D||092E||||||||093||093A||093M||093D||093E||||||||094||094D||094E||||||||||||095||095A||095M||095D||095E||||||||004||004A||004M||004D||004E||||||||005||005A||005M||005D||005E||||||||097||097A||097M||097D||097E||||||||006||006A||006M||006D||006E||||||||007||007A||007M||007D||007E||||||||008||008A||008M||008D||008E||||||||009||009E||||||||||||||010||010A||010M||010D||010E||||||||011||011M||||||||||||||012||012M||||||||||||||096||096M||||||||||||||013||013A||013M||013D||013E||||||||014||||||||||||||||015||015D||015E||||||||||||016||016M||016E||||||||||||017||017M||017E||||||||||||018||018E||||||||||||||019||019M||019D||019E||||||||||020||020D||020E||||||||||||021||021M||||||||||||||022||022N||022A||022M||022D||022E||||||023||023N||023A||023M||023D||023E||||||024||024A||024M||024D||024E||||||||025||025A||025M||025D||025E||||||||026||026A||026M||026D||026E||||||||027||027D||027E||||||||||||028||028D||028E||||||||||||109||109A||109M||109D||109E||||||||110||110E||||||||||||||111||111A||111M||111D||111E||||||||112||112E||||||||||||||132||132N||132E||||||||||||133||133N||133A||133M||133D||133E||||||134||134D||134E||||||||||||135||135D||135E||||||||||||136||136D||136E||||||||||||137||137D||137E||||||||||||138||138D||138E||||||||||||139||139D||139E||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||041||041A||041M||041D||041E||||||||042||042A||042M||042D||042E||||||||043||043A||043M||043D||043E||||||||062||062E||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||122||122A||122M||122D||122E||||||||123||123A||123M||123D||||||||124||124M||124D||124E||||||||||044||044A||044M||044D||044E||||||||045||045N||045A||045M||045D||045E||||||046||046A||046D||046E||||||||||047||047N||047D||047E||||||||||128||128A||128M||128D||128E||||||||048||048A||048M||048D||048E||||||||049||049A||049M||049D||049E||||||||050||050M||050E||||||||||||A080||A080A||A080M||A080D||A080E||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||A015M||||||||A016M||||||||A017M||||||||A040M||||||||A013M||A013D||||||||A014M||A014D||A014E||||||||X001||X001A||X001M||X001D||X001E||||||||X002||X002A||X002M||X002D||X002E||||||||X003||X003A||X003M||X003D||X003E||||||||X004||X004A||X004M||X004D||X004E||||||||X005||X005A||X005M||X005D||X005E||||||||X006||X006A||X006D||X006E||||||||||X007||X007A||X007D||X007E||||||||||X008||X008A||X008M||X008D||X008E||||||||X009||||||||||||||||A050||A050A||A050M||A050D||A050E||||||||A060||A060A||A060M||A060D||A060E||||||||A070||A070A||A070M||A070D||A070E||||||||105||||||||||||||||106||106M||||||||||||||107||107E||||||||||||||108||108E||||||||||||||051||051M||051E||||||||||||052||052A||052M||052D||052E||||||||053||053A||053M||053D||053E||||||||054||054A||054M||054D||054E||||||||056||056A||056M||056D||056E||||||||057||057A||057M||057D||057E||||||||058||058A||058M||058D||058E||||||||059||059A||059M||059D||059E||||||||060||060A||060M||060D||060E||||||||061||061A||061M||061D||061E||||||||130||130A||130M||130D||130E||||||||131||131A||131M||131D||131E||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||084||084M||||||||||||||085||085A||085M||085D||085E||||||||086||086C||086A||086M||086D||086E||||||087||087N||087A||087M||087D||087E||||||091||091A||091M||091D||091E||||||||088||088D||088E||||||||||||089||089M||||||||||||||099||099A||099M||099D||099E||||||||100|||||||||||||||')

SET IDENTITY_INSERT [ERPJiaoSe] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJinDu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJinDu]

CREATE TABLE [ERPJinDu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProjectName] [varchar]  (200) NULL,
[ProjectSerils] [varchar]  (50) NULL,
[JieDuanName] [varchar]  (100) NULL,
[StartTime] [datetime]  NULL,
[EndTime] [datetime]  NULL,
[WanChengDu] [varchar]  (50) NULL,
[FuZeRen] [varchar]  (50) NULL,
[ContentStr] [text]  NULL,
[FuJianList] [varchar]  (1000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPJinDu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJinDu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJinDu] ON

INSERT [ERPJinDu] ([ID],[ProjectName],[ProjectSerils],[JieDuanName],[StartTime],[EndTime],[WanChengDu],[UserName],[TimeStr]) VALUES ( 11,N'XXXչ',N'XM001',N'����',N'2013/4/8 0:00:00',N'2013/4/16 0:00:00',N'10%',N'admin',N'2013/4/15 23:26:12')

SET IDENTITY_INSERT [ERPJinDu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJiXiao]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJiXiao]

CREATE TABLE [ERPJiXiao] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[JXName] [varchar]  (50) NULL,
[JianJie] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPJiXiao] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJiXiao] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJiXiao] ON

INSERT [ERPJiXiao] ([ID],[JXName],[JianJie],[UserName],[TimeStr]) VALUES ( 3,N'�۶��Ƽ�Ա��3�·ݼ�Ч���˻���',N'�����������',N'admin',N'2012/3/2 12:24:14')

SET IDENTITY_INSERT [ERPJiXiao] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJiXiaoCanShu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJiXiaoCanShu]

CREATE TABLE [ERPJiXiaoCanShu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ItemName] [varchar]  (50) NULL,
[BackInfo] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPJiXiaoCanShu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJiXiaoCanShu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJiXiaoCanShu] ON

INSERT [ERPJiXiaoCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 8,N'����������',N'A',N'admin',N'2012/3/2 12:19:45')
INSERT [ERPJiXiaoCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 9,N'��Ŀ��ɶ�',N'B',N'admin',N'2012/3/2 12:19:54')
INSERT [ERPJiXiaoCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 10,N'ʱЧ�����',N'C',N'admin',N'2012/3/2 12:20:04')
INSERT [ERPJiXiaoCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 11,N'���Ŵ��',N'D',N'admin',N'2012/3/2 12:20:32')
INSERT [ERPJiXiaoCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 12,N'����',N'E',N'admin',N'2012/3/2 12:20:48')

SET IDENTITY_INSERT [ERPJiXiaoCanShu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJSDIC]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJSDIC]

CREATE TABLE [ERPJSDIC] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[DicName] [varchar]  (50) NULL,
[Backinfo] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL)

ALTER TABLE [ERPJSDIC] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJSDIC] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJSDIC] ON

INSERT [ERPJSDIC] ([ID],[DicName],[Backinfo],[UserName],[TimeStr]) VALUES ( 4,N'��ͨ�ļ�',N'��ͨ�࣬�����ر���Ҫ',N'admin',N'2012/2/29 16:26:58')
INSERT [ERPJSDIC] ([ID],[DicName],[Backinfo],[UserName],[TimeStr]) VALUES ( 5,N'��Ҫ�ļ�',N'��Ҫ�ļ�����Ҫ�ص��ע',N'admin',N'2012/2/29 16:27:24')
INSERT [ERPJSDIC] ([ID],[DicName],[Backinfo],[UserName],[TimeStr]) VALUES ( 6,N'�������',N'����������ļ�',N'admin',N'2012/2/29 16:27:41')
INSERT [ERPJSDIC] ([ID],[DicName],[Backinfo],[UserName],[TimeStr]) VALUES ( 7,N'as',N'ss',N'liyiyang',N'2013/11/11 9:08:14')

SET IDENTITY_INSERT [ERPJSDIC] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJuanKu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJuanKu]

CREATE TABLE [ERPJuanKu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[JuanKuName] [varchar]  (50) NULL,
[JuanKuSerils] [varchar]  (50) NULL,
[SuoShuBuMen] [varchar]  (50) NULL,
[BackInfo] [varchar]  (5000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL,
[CanViewUserList] [varchar]  (8000) NULL)

ALTER TABLE [ERPJuanKu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJuanKu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJuanKu] ON

INSERT [ERPJuanKu] ([ID],[JuanKuName],[JuanKuSerils],[SuoShuBuMen],[BackInfo],[UserName],[TimeStr],[CanViewUserList]) VALUES ( 5,N'��Ҫ�ļ�',N'BD-FL-001',N'����۶��Ƽ��������ι�˾',N'��',N'admin',N'2012/3/2 10:37:13',N'����,������,admin,��ȫʤ,������,������,��Ϊ��,�Ź���,������,�ܱ�,������')
INSERT [ERPJuanKu] ([ID],[JuanKuName],[JuanKuSerils],[SuoShuBuMen],[UserName],[TimeStr],[CanViewUserList]) VALUES ( 6,N'��Ŀ�ļ�',N'BD-FL-002',N'����۶��Ƽ��������ι�˾',N'admin',N'2012/3/2 10:37:31',N'����,������,admin,��ȫʤ,������,������,��Ϊ��,�Ź���,������,�ܱ�,������')
INSERT [ERPJuanKu] ([ID],[JuanKuName],[JuanKuSerils],[SuoShuBuMen],[UserName],[TimeStr],[CanViewUserList]) VALUES ( 7,N'�ͷ��ļ�',N'BD-FL-003',N'�ͷ���',N'admin',N'2012/3/2 10:38:00',N'����,������')

SET IDENTITY_INSERT [ERPJuanKu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJXDetails]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJXDetails]

CREATE TABLE [ERPJXDetails] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[JXID] [int]  NULL,
[ItemsID] [int]  NULL,
[UserName] [varchar]  (50) NULL,
[NumStr] [varchar]  (50) NULL)

ALTER TABLE [ERPJXDetails] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJXDetails] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJXDetails] ON

INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 238,3,8,N'admin',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 239,3,9,N'admin',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 240,3,10,N'admin',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 241,3,11,N'admin',N'17')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 242,3,12,N'admin',N'16')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 243,3,8,N'������',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 244,3,9,N'������',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 245,3,10,N'������',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 246,3,11,N'������',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 247,3,12,N'������',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 248,3,8,N'������',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 249,3,9,N'������',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 250,3,10,N'������',N'15')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 251,3,11,N'������',N'15')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 252,3,12,N'������',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 253,3,8,N'����',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 254,3,9,N'����',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 255,3,10,N'����',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 256,3,11,N'����',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 257,3,12,N'����',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 258,3,8,N'��ȫʤ',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 259,3,9,N'��ȫʤ',N'16')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 260,3,10,N'��ȫʤ',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 261,3,11,N'��ȫʤ',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 262,3,12,N'��ȫʤ',N'10')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 263,3,8,N'������',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 264,3,9,N'������',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 265,3,10,N'������',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 266,3,11,N'������',N'13')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 267,3,12,N'������',N'15')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 268,3,8,N'������',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 269,3,9,N'������',N'17')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 270,3,10,N'������',N'17')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 271,3,11,N'������',N'17')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 272,3,12,N'������',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 273,3,8,N'������',N'16')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 274,3,9,N'������',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 275,3,10,N'������',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 276,3,11,N'������',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 277,3,12,N'������',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 278,3,8,N'�Ź���',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 279,3,9,N'�Ź���',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 280,3,10,N'�Ź���',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 281,3,11,N'�Ź���',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 282,3,12,N'�Ź���',N'17')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 283,3,8,N'��Ϊ��',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 284,3,9,N'��Ϊ��',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 285,3,10,N'��Ϊ��',N'18')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 286,3,11,N'��Ϊ��',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 287,3,12,N'��Ϊ��',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 288,3,8,N'�ܱ�',N'19')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 289,3,9,N'�ܱ�',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 290,3,10,N'�ܱ�',N'20')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 291,3,11,N'�ܱ�',N'17')
INSERT [ERPJXDetails] ([ID],[JXID],[ItemsID],[UserName],[NumStr]) VALUES ( 292,3,12,N'�ܱ�',N'16')

SET IDENTITY_INSERT [ERPJXDetails] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPKaoQin]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPKaoQin]

CREATE TABLE [ERPKaoQin] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[GuiDingTime1] [datetime]  NULL,
[DengJiTime1] [datetime]  NULL,
[GuiDingTime2] [datetime]  NULL,
[DengJiTime2] [datetime]  NULL,
[GuiDingTime3] [datetime]  NULL,
[DengJiTime3] [datetime]  NULL,
[GuiDingTime4] [datetime]  NULL,
[DengJiTime4] [datetime]  NULL,
[GuiDingTime5] [datetime]  NULL,
[DengJiTime5] [datetime]  NULL,
[GuiDingTime6] [datetime]  NULL,
[DengJiTime6] [datetime]  NULL,
[KaoQinRiQi] [datetime]  NULL)

ALTER TABLE [ERPKaoQin] WITH NOCHECK ADD  CONSTRAINT [PK_ERPKaoQin] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPKaoQin] ON

INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 17,N'admin',N'2012/2/26 9:10:00',N'2012/2/26 11:50:00',N'2012/2/26 13:10:00',N'2012/2/26 17:20:00',N'2012/2/26 15:46:50')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 18,N'admin',N'2012/3/2 9:10:00',N'2012/3/2 11:50:00',N'2012/3/2 13:10:00',N'2012/3/2 17:20:00',N'2012/3/2 12:14:13')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 19,N'admin',N'2013/1/4 9:10:00',N'2013/1/4 11:08:59',N'2013/1/4 11:50:00',N'2013/1/4 13:10:00',N'2013/1/4 17:20:00',N'2013/1/4 11:08:30')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[DengJiTime4],[KaoQinRiQi]) VALUES ( 20,N'admin',N'2013/1/5 9:10:00',N'2013/1/5 11:50:00',N'2013/1/5 13:10:00',N'2013/1/5 17:20:00',N'2013/1/5 17:34:55',N'2013/1/5 17:34:52')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 21,N'admin',N'2013/11/9 9:10:00',N'2013/11/9 11:50:00',N'2013/11/9 13:10:00',N'2013/11/9 17:20:00',N'2013/11/9 11:08:40')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[KaoQinRiQi]) VALUES ( 22,N'admin',N'2013/11/11 8:30:00',N'2013/11/11 8:48:08',N'2013/11/11 17:30:00',N'2013/11/11 8:48:05')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[DengJiTime2],[KaoQinRiQi]) VALUES ( 23,N'liyiyang',N'2013/11/11 8:30:00',N'2013/11/11 9:28:51',N'2013/11/11 17:30:00',N'2013/11/11 9:29:16',N'2013/11/11 9:28:39')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[KaoQinRiQi]) VALUES ( 24,N'admin',N'2014/2/11 8:30:00',N'2014/2/11 17:30:00',N'2014/2/11 10:11:35')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[KaoQinRiQi]) VALUES ( 25,N'admin',N'2014/3/6 8:30:00',N'2014/3/6 17:30:00',N'2014/3/6 10:34:09')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[KaoQinRiQi]) VALUES ( 26,N'admin',N'2014/3/18 8:30:00',N'2014/3/18 17:30:00',N'2014/3/18 11:46:34')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[KaoQinRiQi]) VALUES ( 27,N'admin',N'2014/3/28 8:30:00',N'2014/3/28 17:30:00',N'2014/3/28 9:15:16')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[KaoQinRiQi]) VALUES ( 28,N'admin',N'2014/4/5 8:30:00',N'2014/4/5 14:13:39',N'2014/4/5 17:30:00',N'2014/4/5 14:13:37')

SET IDENTITY_INSERT [ERPKaoQin] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPKaoQinSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPKaoQinSetting]

CREATE TABLE [ERPKaoQinSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[GuiDingTime1] [varchar]  (50) NULL,
[GuiDingTime2] [varchar]  (50) NULL,
[GuiDingTime3] [varchar]  (50) NULL,
[GuiDingTime4] [varchar]  (50) NULL,
[GuiDingTime5] [varchar]  (50) NULL,
[GuiDingTime6] [varchar]  (50) NULL)

ALTER TABLE [ERPKaoQinSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPKaoQinSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPKaoQinSetting] ON

INSERT [ERPKaoQinSetting] ([ID],[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[GuiDingTime5],[GuiDingTime6]) VALUES ( 1,N'08:30:00',N'17:30:00',N'δ����:δ����:00',N'δ����:δ����:00',N'δ����:δ����:00',N'δ����:δ����:00')

SET IDENTITY_INSERT [ERPKaoQinSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPLanEmail]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPLanEmail]

CREATE TABLE [ERPLanEmail] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[EmailTitle] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[EmailContent] [text]  NULL,
[FuJian] [varchar]  (2000) NULL,
[FromUser] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[EmailState] [varchar]  (50) NULL DEFAULT ('δ��'),
[IFDel] [varchar]  (50) NULL)

ALTER TABLE [ERPLanEmail] WITH NOCHECK ADD  CONSTRAINT [PK_ERPLanEmail] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPLanEmail] ON

INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 402,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 403,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 404,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 405,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 406,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 407,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 408,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'��Ϊ��',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 409,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'�Ź���',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 410,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 411,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'�ܱ�',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 412,N'��λͬ�ʣ�����λOAϵͳ���°棬��ʽ���ã�',N'2012/2/29 14:55:50',N'<P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P>',N'634661239977500000.doc',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 413,N'�����µ��ļ���Ҫ���գ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'2012/2/29 16:30:47',N'�����µ��ļ���Ҫ���գ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 414,N'�����µ��ļ���Ҫ���գ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'2012/2/29 16:30:47',N'�����µ��ļ���Ҫ���գ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 415,N'�����µ��ļ���Ҫ���գ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'2012/2/29 16:30:47',N'�����µ��ļ���Ҫ���գ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 416,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 417,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 418,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 419,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 420,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 421,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 422,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'��Ϊ��',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 423,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'�Ź���',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 424,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 425,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'�ܱ�',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 426,N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'2012/2/29 16:35:04',N'�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 427,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2012/2/29 16:42:33',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 428,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2012/2/29 16:42:33',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 429,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2012/2/29 16:42:33',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 430,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2012/2/29 16:42:33',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 431,N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'2012/3/2 10:11:25',N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 432,N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'2012/3/2 10:11:25',N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 433,N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'2012/3/2 10:11:25',N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 434,N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'2012/3/2 10:11:25',N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 435,N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'2012/3/2 10:11:25',N'�����µĻ�����Ҫ�μӣ�(��λ����������ܽ���)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 436,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012-03-2))',N'2012/3/2 14:39:11',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 437,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012-03-2))',N'2012/3/2 14:41:22',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 438,N'�����µĹ�����Ҫ����(admin--�ɹ���������(2012-03-2))',N'2012/3/2 14:42:18',N'�����µĹ�����Ҫ����(admin--�ɹ���������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 439,N'�����µĹ�����Ҫ����(admin--���ñ�������(2012-03-2))',N'2012/3/2 14:43:26',N'�����µĹ�����Ҫ����(admin--���ñ�������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 440,N'�����µĹ�����Ҫ����(admin--������������(2012-03-2))',N'2012/3/2 14:44:51',N'�����µĹ�����Ҫ����(admin--������������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 441,N'�����µĹ�����Ҫ����(admin--�칫��Ʒ��������(2012-03-2))',N'2012/3/2 14:45:51',N'�����µĹ�����Ҫ����(admin--�칫��Ʒ��������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 442,N'�����µĹ�����Ҫ����(admin--Ա���������(2012-03-2))',N'2012/3/2 14:46:45',N'�����µĹ�����Ҫ����(admin--Ա���������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 443,N'�����µĹ�����Ҫ����(admin--��ְ��������(2012-03-2))',N'2012/3/2 14:47:33',N'�����µĹ�����Ҫ����(admin--��ְ��������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 444,N'�����µĹ�����Ҫ����(admin--��Դ��������(2012-03-2))',N'2012/3/2 14:49:10',N'�����µĹ�����Ҫ����(admin--��Դ��������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 445,N'�����µĹ�����Ҫ����(admin--������������(2012-03-2))',N'2012/3/2 14:50:01',N'�����µĹ�����Ҫ����(admin--������������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 446,N'�����µĻ�����Ҫ�μӣ�(�����������ڲ����ֻ�)',N'2012/3/2 14:52:33',N'�����µĻ�����Ҫ�μӣ�(�����������ڲ����ֻ�)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 447,N'�����µĻ�����Ҫ�μӣ�(�����������ڲ����ֻ�)',N'2012/3/2 14:52:33',N'�����µĻ�����Ҫ�μӣ�(�����������ڲ����ֻ�)',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 448,N'�����µĻ�����Ҫ�μӣ�(�����������ڲ����ֻ�)',N'2012/3/2 14:52:33',N'�����µĻ�����Ҫ�μӣ�(�����������ڲ����ֻ�)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 449,N'�����µĻ�����Ҫ�μӣ�(�����������ڲ����ֻ�)',N'2012/3/2 14:52:33',N'�����µĻ�����Ҫ�μӣ�(�����������ڲ����ֻ�)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 450,N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'2012/3/2 14:53:47',N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 451,N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'2012/3/2 14:53:47',N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 452,N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'2012/3/2 14:53:47',N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 453,N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'2012/3/2 14:53:47',N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 454,N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'2012/3/2 14:53:47',N'�����µĻ�����Ҫ�μӣ�(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'ϵͳ��Ϣ',N'��Ϊ��',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 455,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012-03-2))',N'2012/3/2 14:54:30',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 456,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012-03-2))',N'2012/3/2 14:54:56',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 457,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012-03-2))',N'2012/3/2 14:55:32',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 458,N'�����µĹ�����Ҫ����(admin--������������(2012-03-2))',N'2012/3/2 14:56:43',N'�����µĹ�����Ҫ����(admin--������������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 459,N'���Ĺ����Ѿ�����������(admin--������������(2012-03-2))',N'2012/3/2 14:56:59',N'���Ĺ����Ѿ�����������(admin--������������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 460,N'�����µĹ�����Ҫ����(admin--Ա���������(2012-03-2))',N'2012/3/2 14:57:48',N'�����µĹ�����Ҫ����(admin--Ա���������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 461,N'�����µĹ�����Ҫ����(admin--Ա���������(2012-03-2))',N'2012/3/2 14:59:54',N'�����µĹ�����Ҫ����(admin--Ա���������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 462,N'�����µĹ�����Ҫ����(admin--���ñ�������(2012-03-2))',N'2012/3/2 15:02:14',N'�����µĹ�����Ҫ����(admin--���ñ�������(2012-03-2))',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 463,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--���ĵǼ�����(2012-03-2)-������ˮ�ţ�31)',N'2012/5/13 15:48:31',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--���ĵǼ�����(2012-03-2)-������ˮ�ţ�31)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 464,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--�ɹ���������(2012-03-2)-������ˮ�ţ�33)',N'2012/5/13 15:48:31',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--�ɹ���������(2012-03-2)-������ˮ�ţ�33)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 465,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--������������(2012-03-2)-������ˮ�ţ�35)',N'2012/5/13 15:48:31',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--������������(2012-03-2)-������ˮ�ţ�35)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 466,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--�칫��Ʒ��������(2012-03-2)-������ˮ�ţ�36)',N'2012/5/13 15:48:31',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--�칫��Ʒ��������(2012-03-2)-������ˮ�ţ�36)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 467,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--Ա���������(2012-03-2)-������ˮ�ţ�37)',N'2012/5/13 15:48:31',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--Ա���������(2012-03-2)-������ˮ�ţ�37)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 468,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--��ְ��������(2012-03-2)-������ˮ�ţ�38)',N'2012/5/13 15:48:31',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--��ְ��������(2012-03-2)-������ˮ�ţ�38)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 469,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--��Դ��������(2012-03-2)-������ˮ�ţ�39)',N'2012/5/13 15:48:31',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--��Դ��������(2012-03-2)-������ˮ�ţ�39)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 470,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 471,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 472,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 473,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 474,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 475,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 476,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'��Ϊ��',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 477,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'�Ź���',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 478,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 479,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'�ܱ�',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 480,N'test',N'2012/9/26 10:43:47',N'tet',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 481,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:40:47',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 482,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:42:09',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 483,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:42:59',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 484,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:44:05',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 485,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:50:21',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 486,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:52:25',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 487,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:53:48',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 488,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:54:13',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 489,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:56:00',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 490,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 10:57:20',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 491,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 11:31:51',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 492,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 11:34:45',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 493,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 11:35:08',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 494,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 12:46:17',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 495,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:01:09',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 496,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:07:30',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 497,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:09:36',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 498,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:10:05',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 499,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:11:21',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 500,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:12:20',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 501,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:14:28',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 502,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:14:54',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 503,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:15:57',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 504,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:15:57',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 505,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:17:18',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 506,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:17:37',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 507,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:17:56',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 508,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:18:52',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 509,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:19:40',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 510,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:21:17',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 511,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:21:39',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 512,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'2012/10/7 13:21:51',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7))',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 513,N'tree',N'2013/1/5 10:50:19',N'ˮ����Ե�',N'634929798131431979.zip',N'admin',N'admin',N'ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 514,N'tree',N'2013/1/5 10:50:19',N'ˮ����Ե�',N'634929798131431979.zip',N'admin',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 515,N'ˮ���',N'2013/1/5 10:51:46',N'ˮ���',N'634929799017802677.doc',N'admin',N'admin',N'ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 516,N'ˮ���',N'2013/1/5 10:51:46',N'ˮ���',N'634929799017802677.doc',N'admin',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 517,N'�����µĹ�����Ҫ����(admin--�ɹ���������(2013/1/7))',N'2013/1/7 11:11:49',N'�����µĹ�����Ҫ����(admin--�ɹ���������(2013/1/7))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 518,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--�ɹ���������(2013/1/7)-������ˮ�ţ�62)',N'2013/1/10 11:12:17',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--�ɹ���������(2013/1/7)-������ˮ�ţ�62)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 519,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2013/1/14 23:23:53',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 520,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2013/1/14 23:23:53',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 521,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2013/1/14 23:23:53',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 522,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2013/1/14 23:23:53',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 523,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2013/1/17 13:51:09',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 524,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2013/1/17 13:51:09',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 525,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2013/1/17 13:51:09',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 526,N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2013/1/17 13:51:09',N'�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 527,N'�����µ�������Ҫִ�У�(ssdf)',N'2013/1/17 14:39:38',N'�����µ�������Ҫִ�У�(ssdf)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 528,N'�����µ�������Ҫִ�У�(dfg)',N'2013/4/14 22:36:11',N'�����µ�������Ҫִ�У�(dfg)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 529,N'�����µ�������Ҫִ�У�(dfg)',N'2013/4/14 22:36:11',N'�����µ�������Ҫִ�У�(dfg)',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 530,N'�����µ�������Ҫִ�У�(dfg)',N'2013/4/14 22:36:11',N'�����µ�������Ҫִ�У�(dfg)',N'ϵͳ��Ϣ',N'majh',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 531,N'�û���admin �Ѿ�������Ϊ���Ĺ���ί����',N'2013/11/9 10:48:34',N'�û���admin �Ѿ�������Ϊ���Ĺ���ί���ˣ��ڸ��û���������ί����֮ǰ�����д��칤����ת���������а���',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 532,N'�����ƶ����ճ̰�������ʱ�䵽��(test1)',N'2013/11/11 8:39:35',N'�����ƶ����ճ̰�������ʱ�䵽��(test1)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 533,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2013/11/13))',N'2013/11/13 10:57:40',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2013/11/13))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 534,N'�����µ��ļ���Ҫ���գ�(����ѧϰ����)',N'2013/11/14 16:51:06',N'�����µ��ļ���Ҫ���գ�(����ѧϰ����)',N'ϵͳ��Ϣ',N'zhoujun',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 535,N'�����µ��ļ���Ҫ���գ�(����ѧϰ�ƻ�)',N'2013/11/14 16:51:52',N'�����µ��ļ���Ҫ���գ�(����ѧϰ�ƻ�)',N'ϵͳ��Ϣ',N'zhoujun',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 536,N'�����ƶ����ճ̰�������ʱ�䵽��(test2)',N'2013/11/19 9:59:59',N'�����ƶ����ճ̰�������ʱ�䵽��(test2)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 537,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'2014/1/4 9:17:13',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 538,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'2014/1/4 9:17:16',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'ϵͳ��Ϣ',N'�Ź���',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 539,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'2014/1/4 17:00:17',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 540,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'2014/1/4 17:00:17',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'ϵͳ��Ϣ',N'�Ź���',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 541,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'2014/1/4 17:06:28',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 542,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'2014/1/4 17:06:31',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'ϵͳ��Ϣ',N'�Ź���',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 543,N'�����µĹ�����Ҫ����(admin--�ɹ���������(2014/1/4))',N'2014/1/4 17:11:18',N'�����µĹ�����Ҫ����(admin--�ɹ���������(2014/1/4))',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 544,N'xxzxzx',N'2014/1/16 10:54:08',N'admin',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 545,N'������ϵ',N'2014/1/16 10:55:57',N'���������˰',N'635254665496377549.txt',N'admin',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 546,N'112222',N'2014/1/16 11:49:48',N'ewerdfasddsfsdfsdfsdf',N'635254697854407549.gif',N'admin',N'admin',N'ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 547,N'���Ĺ����Ѿ�����������(admin--Ա���������(2012-03-2))',N'2014/2/19 9:47:21',N'���Ĺ����Ѿ�����������(admin--Ա���������(2012-03-2))',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 548,N'Re�������µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'2014/2/20 21:24:06',N'admin',N'ϵͳ��Ϣ',N'�ݸ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 549,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 550,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 551,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 552,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'��ȫʤ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 553,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'majh',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 554,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'liyiyang',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 555,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 556,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 557,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 558,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'��Ϊ��',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 559,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'�Ź���',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 560,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 561,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'�ܱ�',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 562,N'�����µ��ļ���Ҫ���գ�(����)',N'2014/3/3 10:49:45',N'�����µ��ļ���Ҫ���գ�(����)',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 563,N'aaaaa',N'2014/3/5 11:54:14',N'<p>dfdfdfd</p>',N'admin',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 564,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/6))',N'2014/3/6 10:13:53',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/6))',N'ϵͳ��Ϣ',N'������',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 565,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/6))',N'2014/3/6 11:26:45',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/6))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 566,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'2014/3/20 15:25:34',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 567,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'2014/3/20 17:17:57',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 568,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'2014/3/20 17:17:57',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 569,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--���ĵǼ�����(2014/3/6)-������ˮ�ţ�74)',N'2014/3/20 17:19:23',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--���ĵǼ�����(2014/3/6)-������ˮ�ţ�74)',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 570,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'2014/3/20 17:24:28',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 571,N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2014/3/20))',N'2014/3/20 17:26:48',N'���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 572,N'���Ĺ����Ѿ������أ�(admin--���ĵǼ�����(2014/3/20))',N'2014/3/20 17:39:31',N'���Ĺ����Ѿ������أ�(admin--���ĵǼ�����(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 573,N'���Ĺ����Ѿ������أ�(admin--���ĵǼ�����(2014/3/6))',N'2014/3/20 17:39:47',N'���Ĺ����Ѿ������أ�(admin--���ĵǼ�����(2014/3/6))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 574,N'���Ĺ����Ѿ������أ�(admin--���ĵǼ�����(2014/3/6))',N'2014/3/20 17:39:55',N'���Ĺ����Ѿ������أ�(admin--���ĵǼ�����(2014/3/6))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 575,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'2014/3/20 17:42:48',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 576,N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'2014/3/20 17:46:14',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/3/20))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 577,N'�����µĹ�����Ҫ����(admin--test(2014/3/20))',N'2014/3/20 17:53:11',N'�����µĹ�����Ҫ����(admin--test(2014/3/20))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 578,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 18:32:36',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 579,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 18:34:40',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 580,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 18:35:24',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'����',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 581,N'���Ĺ����Ѿ�����������(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 18:35:48',N'���Ĺ����Ѿ�����������(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 582,N'�û���admin �Ѿ�������Ϊ���Ĺ���ί����',N'2014/3/20 18:36:17',N'�û���admin �Ѿ�������Ϊ���Ĺ���ί���ˣ��ڸ��û���������ί����֮ǰ�����д��칤����ת���������а���',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 583,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 18:46:39',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 584,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 18:46:39',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 585,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 18:51:11',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 586,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 18:52:07',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 587,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 19:54:08',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 588,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 19:54:08',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 589,N'���Ĺ����Ѿ������أ�(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 19:58:27',N'���Ĺ����Ѿ������أ�(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 590,N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'2014/3/20 19:59:57',N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 591,N'���Ĺ����Ѿ������أ�(test--ʹʹʹ(2014/3/20))',N'2014/3/20 20:02:38',N'���Ĺ����Ѿ������أ�(test--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 592,N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'2014/3/20 20:03:23',N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 593,N'���Ĺ����Ѿ������أ�(test--ʹʹʹ(2014/3/20))',N'2014/3/20 20:05:39',N'���Ĺ����Ѿ������أ�(test--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 594,N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'2014/3/20 20:17:09',N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 595,N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'2014/3/20 20:18:09',N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 596,N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'2014/3/20 20:18:09',N'�����µĹ�����Ҫ����(test--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 597,N'���Ĺ����Ѿ������أ�(test--ʹʹʹ(2014/3/20))',N'2014/3/20 20:24:49',N'���Ĺ����Ѿ������أ�(test--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 598,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:25:29',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 599,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:26:20',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 600,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:26:20',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 601,N'���Ĺ����Ѿ������أ�(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:26:29',N'���Ĺ����Ѿ������أ�(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 602,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:27:09',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 603,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:27:22',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 604,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:27:22',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'liyiyang',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 605,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:27:22',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 606,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:31:16',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'majh',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 607,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:31:16',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'liyiyang',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 608,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:33:20',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 609,N'���Ĺ����Ѿ�����������(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:34:13',N'���Ĺ����Ѿ�����������(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 610,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:53:06',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 611,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:53:41',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 612,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:53:41',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'liyiyang',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 613,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:53:41',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'test',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 614,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:56:14',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'majh',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 615,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:56:14',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'liyiyang',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 616,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 20:59:19',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 617,N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'2014/3/20 21:53:58',N'�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20))',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 618,N'�����ƶ����ճ̰�������ʱ�䵽��(kkk)',N'2014/3/22 10:54:12',N'�����ƶ����ճ̰�������ʱ�䵽��(kkk)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 619,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--ʹʹʹ(2014/3/20)-������ˮ�ţ�87)',N'2014/3/24 11:47:15',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--ʹʹʹ(2014/3/20)-������ˮ�ţ�87)',N'ϵͳ��Ϣ',N'admin',N'δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 620,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--ʹʹʹ(2014/3/20)-������ˮ�ţ�88)',N'2014/3/24 11:47:15',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--ʹʹʹ(2014/3/20)-������ˮ�ţ�88)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 621,N'�����µĹ�����Ҫ����(admin--������������(2014/3/27))',N'2014/3/27 22:36:51',N'�����µĹ�����Ҫ����(admin--������������(2014/3/27))',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 622,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--������������(2014/3/27)-������ˮ�ţ�89)',N'2014/3/30 22:37:29',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--������������(2014/3/27)-������ˮ�ţ�89)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 623,N'tfd',N'2014/4/1 11:54:45',N'sfsdfsdfsdf',N'admin',N'cc',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 624,N'heh',N'2014/4/1 11:54:54',N'12312313',N'635319500149170000.jpg||',N'cc',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 625,N'Re��heh',N'2014/4/1 12:00:03',N'���������ɹ滮��',N'admin',N'cc',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 626,N'�����µĹ�����Ҫ����(admin--�ɹ���������(2014/4/5))',N'2014/4/5 21:16:51',N'�����µĹ�����Ҫ����(admin--�ɹ���������(2014/4/5))',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 627,N'�����µĳ��͹�����(admin--�ɹ���������(2014/4/5))',N'2014/4/5 21:16:51',N'�����µĳ��͹�����(admin--�ɹ���������(2014/4/5))',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 628,N'���д��칤��δ����ʱ���ѳ�ʱ��(admin--�ɹ���������(2014/4/5)-������ˮ�ţ�90)',N'2014/6/4 20:26:17',N'���д��칤��δ����ʱ���ѳ�ʱ����(admin--�ɹ���������(2014/4/5)-������ˮ�ţ�90)',N'ϵͳ��Ϣ',N'admin',N'�Ѷ�')

SET IDENTITY_INSERT [ERPLanEmail] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPLinkLog]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPLinkLog]

CREATE TABLE [ERPLinkLog] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CustomName] [varchar]  (100) NULL,
[LinkTitle] [varchar]  (500) NULL,
[LinkType] [varchar]  (500) NULL,
[LinkResult] [varchar]  (5000) NULL,
[LinkTime] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[IFShare] [varchar]  (5000) NULL,
[CusBakA] [varchar]  (8000) NULL,
[CusBakB] [varchar]  (8000) NULL,
[CusBakC] [varchar]  (8000) NULL,
[CusBakD] [varchar]  (8000) NULL,
[CusBakE] [varchar]  (8000) NULL)

ALTER TABLE [ERPLinkLog] WITH NOCHECK ADD  CONSTRAINT [PK_ERPLinkLog] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPLinkLog] ON

INSERT [ERPLinkLog] ([ID],[CustomName],[LinkTitle],[LinkType],[LinkResult],[LinkTime],[UserName],[TimeStr],[CusBakE]) VALUES ( 4,N'����������Ź�ҵ��Ʒ���޹�˾',N'ȷ���ͻ�����',N'�绰��ͨ',N'�ͻ������Ѿ�ȷ��',N'2012-3-1',N'admin',N'2012/3/2 11:44:33',N'2012-3-1')

SET IDENTITY_INSERT [ERPLinkLog] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPLinkMan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPLinkMan]

CREATE TABLE [ERPLinkMan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CustomName] [varchar]  (100) NULL,
[NameStr] [varchar]  (50) NULL,
[Sex] [varchar]  (50) NULL,
[BirthDay] [varchar]  (50) NULL,
[SuoChuJiaoSe] [varchar]  (50) NULL,
[ZhiWu] [varchar]  (50) NULL,
[PeiOu] [varchar]  (500) NULL,
[ZiNv] [varchar]  (500) NULL,
[DanWieDianHua] [varchar]  (50) NULL,
[DanWeiChuanZhen] [varchar]  (50) NULL,
[JiaTingZhuZhi] [varchar]  (500) NULL,
[JiaTingYouBian] [varchar]  (50) NULL,
[JiaTingDianHua] [varchar]  (50) NULL,
[ShouJi] [varchar]  (50) NULL,
[XiaoLingTong] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[QQ] [varchar]  (50) NULL,
[Msn] [varchar]  (50) NULL,
[BackInfo] [text]  NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[IFShare] [varchar]  (5000) NULL,
[CusBakA] [varchar]  (8000) NULL,
[CusBakB] [varchar]  (8000) NULL,
[CusBakC] [varchar]  (8000) NULL,
[CusBakD] [varchar]  (8000) NULL,
[CusBakE] [varchar]  (8000) NULL)

ALTER TABLE [ERPLinkMan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPLinkMan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPLinkMan] ON

INSERT [ERPLinkMan] ([ID],[CustomName],[NameStr],[Sex],[BirthDay],[SuoChuJiaoSe],[ZhiWu],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingDianHua],[ShouJi],[QQ],[UserName],[TimeStr]) VALUES ( 6,N'����������Ź�ҵ��Ʒ���޹�˾',N'������',N'��',N'2012-3-1',N'������',N'����������',N'023-67466469',N'023-67466469',N'023-67466469',N'13696432490',N'9618195',N'admin',N'2012/3/2 11:43:49')

SET IDENTITY_INSERT [ERPLinkMan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPLiRun]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPLiRun]

CREATE TABLE [ERPLiRun] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProjectName] [varchar]  (200) NULL,
[ProjectSerils] [varchar]  (50) NULL,
[SumJinE] [varchar]  (50) NULL,
[FeiYong] [varchar]  (50) NULL,
[ChengBen] [varchar]  (50) NULL,
[FangZu] [varchar]  (50) NULL,
[ShuiE] [varchar]  (50) NULL,
[GongZi] [varchar]  (50) NULL,
[TiCheng] [varchar]  (50) NULL,
[QiTa] [varchar]  (50) NULL,
[ShiJi] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPLiRun] WITH NOCHECK ADD  CONSTRAINT [PK_ERPLiRun] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPLiRun] ON


SET IDENTITY_INSERT [ERPLiRun] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPLX]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPLX]

CREATE TABLE [ERPLX] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProjectName] [varchar]  (200) NULL,
[ZHRQ] [datetime]  NULL,
[XMBH] [varchar]  (50) NULL,
[JZJCRQ] [datetime]  NULL,
[JZJDRQ] [datetime]  NULL,
[JHDD] [varchar]  (200) NULL,
[GSBJ] [varchar]  (100) NULL,
[XiangMuCB] [varchar]  (200) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[FuJian] [varchar]  (5000) NULL,
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPLX] WITH NOCHECK ADD  CONSTRAINT [PK_ERPLX] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPLX] ON

INSERT [ERPLX] ([ID],[ProjectName],[ZHRQ],[XMBH],[JZJCRQ],[JZJDRQ],[JHDD],[GSBJ],[XiangMuCB],[UserName],[TimeStr],[FuJian],[BackInfo]) VALUES ( 1,N'XXXչ',N'2013/4/9 0:00:00',N'XM001',N'2013/4/17 0:00:00',N'2013/4/26 0:00:00',N'�������˿�Ļʽ',N'52545',N'10115',N'admin',N'2013/4/15 22:43:18',N'635016624592612711.doc|635016625962862223.docx',N'�ն���')

SET IDENTITY_INSERT [ERPLX] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPMeeting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPMeeting]

CREATE TABLE [ERPMeeting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[MeetingTitle] [varchar]  (500) NULL,
[MeetingZhuTi] [varchar]  (5000) NULL,
[MiaoShu] [varchar]  (5000) NULL,
[ChuXiRen] [varchar]  (8000) NULL,
[WangLuoHuiYiShiIP] [varchar]  (50) NULL,
[HuiYiZhuChi] [varchar]  (50) NULL,
[KaiShiTime] [datetime]  NULL DEFAULT (getdate()),
[JieShuTime] [datetime]  NULL DEFAULT (getdate()),
[HuiYiJiYao] [text]  NULL,
[ZhuanXieRen] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[CurentOnline] [varchar]  (8000) NULL,
[NowState] [varchar]  (50) NULL DEFAULT ('�ȴ�����'))

ALTER TABLE [ERPMeeting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPMeeting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPMeeting] ON

INSERT [ERPMeeting] ([ID],[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[HuiYiJiYao],[ZhuanXieRen],[TimeStr],[NowState]) VALUES ( 9,N'��λ����������ܽ���',N'�ܽ���Ⱦ��顢�㱨����',N'�Ը������Ҫ�㱨',N'����,������,admin,��ȫʤ,������',N'192.168.1.1',N'��Ϊ��',N'2012/3/1 9:00:00',N'2018/3/1 18:00:00',N'<P>���鿪ʼ����λ�쵼�´ǡ�</P><P>�����Ż㱨��������������������ɵĺܺá�</P><P>��Ӫ���ܼ��Ҫ���ܹ������飬���ӻԾ���ԡ�</P><P>��ϵͳ��ѵ�Լ���Ҫ���ܡ�</P><P>�����Ļ��Բ��������</P>',N'admin',N'2012/3/2 10:11:25',N'�ȴ�����')
INSERT [ERPMeeting] ([ID],[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[HuiYiJiYao],[ZhuanXieRen],[TimeStr],[NowState]) VALUES ( 10,N'�����������ڲ����ֻ�',N'�������������ʧ���',N'�ڲ����ϣ��뼰ʱ�μ�',N'admin,��ȫʤ,������,������',N'192.168.1.1',N'��ȫʤ',N'2012/3/1 9:00:00',N'2012/3/2 10:00:00',N'�����¼��δ�ϴ����ȴ�������ϴ���',N'admin',N'2012/3/2 14:52:32',N'�ȴ�����')
INSERT [ERPMeeting] ([ID],[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[HuiYiJiYao],[ZhuanXieRen],[TimeStr],[NowState]) VALUES ( 11,N'�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ',N'�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ',N'�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ',N'admin,��ȫʤ,������,������,��Ϊ��',N'192.168.1.1',N'��Ϊ��',N'2013/3/1 11:00:00',N'2013/3/1 12:00:00',N'�����¼��δ�ϴ���������ϴ���',N'admin',N'2012/3/2 14:53:47',N'�ȴ�����')

SET IDENTITY_INSERT [ERPMeeting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPMianShi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPMianShi]

CREATE TABLE [ERPMianShi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[MSName] [varchar]  (50) NULL,
[MSDate] [varchar]  (50) NULL,
[MSSex] [varchar]  (50) NULL,
[MSAge] [varchar]  (50) NULL,
[XueLi] [varchar]  (50) NULL,
[ZhuanYe] [varchar]  (50) NULL,
[MSZhiWei] [varchar]  (50) NULL,
[MSJieGuo] [varchar]  (100) NULL,
[BackInfo] [varchar]  (5000) NULL,
[FuJianStr] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPMianShi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPMianShi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPMianShi] ON


SET IDENTITY_INSERT [ERPMianShi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPMobile]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPMobile]

CREATE TABLE [ERPMobile] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FaSongUser] [varchar]  (50) NULL,
[ToUserList] [varchar]  (8000) NULL,
[ContentStr] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPMobile] WITH NOCHECK ADD  CONSTRAINT [PK_ERPMobile] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPMobile] ON

INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 27,N'NoLogin',N'�ڲ���Ա��admin,������,��Ϊ��',N'111',N'2012/1/11 10:39:35')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 29,N'admin',N'�ڲ���Ա��admin,��ȫʤ,��Ϊ��',N'��������4:00ǰ���ͻ��ֳ�������Ӧ�����⣡',N'2012/2/29 15:53:24')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 30,N'admin',N'�ⲿ��Ա��13696432490',N'����2����п������ڲ����飬��׼ʱ�μӣ�',N'2012/2/29 15:54:14')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 31,N'admin',N'�ڲ���Ա����ȫʤ,������,��Ϊ��',N'�뼰ʱ������Ŀʵʩ�пͻ�����Ĵ������⡣',N'2012/2/29 15:55:14')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 32,N'admin',N'�ⲿ��Ա��18705103692',N'ˮ���',N'2013/1/17 9:54:19')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 33,N'admin',N'�ⲿ��Ա��18705103692',N'ˮ���',N'2013/1/17 11:43:03')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 34,N'liyiyang',N'�ڲ���Ա��df',N'sdf',N'2013/11/11 10:34:48')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 35,N'NoLogin',N'�ⲿ��Ա��18996271618',N'����һ���������˺ŷ��͵Ķ��š�',N'2013/12/12 18:16:35')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 36,N'admin',N'�ⲿ��Ա��18996271618',N'zheshi���˺Ŷ��Ų��ԡ�',N'2013/12/12 18:19:41')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 37,N'admin',N'�ⲿ��Ա��18996271618',N'���˺Ŷ��Ų���0843��',N'2013/12/13 8:43:35')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 38,N'admin',N'�ⲿ��Ա��18996271618',N'�������˺ŷ��Ͷ��Ų��ԡ�',N'2013/12/13 17:00:42')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 39,N'admin',N'�ⲿ��Ա��18996271618',N'�������˺ŷ��Ͷ��Ų��ԡ�1703',N'2013/12/13 17:03:45')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 40,N'admin',N'�ⲿ��Ա��18996271618',N'���˺�tp01���Ͷ��Ų���.',N'2013/12/13 17:14:33')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 41,N'admin',N'�ⲿ��Ա��18996271618',N'���˺ŷ��Ͷ����ٲ��ԡ�1718',N'2013/12/13 17:18:56')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 42,N'admin',N'�ⲿ��Ա��18996271618',N'���˺ŷ��Ͷ��Ų��ԡ�1721',N'2013/12/13 17:21:26')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 43,N'admin',N'�ⲿ��Ա��18996271618',N'�����˺ŷ��Ͷ��Ų��ԡ�',N'2013/12/13 17:30:30')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 44,N'admin',N'�ⲿ��Ա��18996271618',N'�����˺ŷ��Ͷ��Ų��ԡ�',N'2013/12/13 17:31:54')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 45,N'admin',N'�ⲿ��Ա��18996271618',N'����һ��OA֪ͨ���ԵĶ��š�',N'2014/1/2 16:34:41')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 46,N'admin',N'������',N'����һ��OA֪ͨ���ԵĶ��š�1701�䡾Эͬ�칫��',N'2014/1/4 17:01:32')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 47,N'admin',N'�ڲ���Ա��������',N'����һ��OA֪ͨ���ԵĶ��š�1701��',N'2014/1/4 17:01:32')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 48,N'admin',N'������,�Ź���',N'�����µĹ�����Ҫ����(admin--���ĵǼ�����(2014/1/4))',N'2014/1/4 17:06:22')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 49,N'admin',N'������',N'�����µĹ�����Ҫ����(admin--�ɹ���������(2014/1/4))',N'2014/1/4 17:11:18')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 50,N'admin',N'�ⲿ��Ա��13921513993',N'����һ��OA�ⲿ���ŷ��Ͳ��ԣ������̡�',N'2014/1/6 9:20:18')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 51,N'admin',N'�ⲿ��Ա��13921513993',N'����OAϵͳʹ����ͨ���緢�͵Ĳ��Զ��š�1106',N'2014/1/6 11:07:01')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 52,N'admin',N'�ⲿ��Ա��13103514271',N'�����ֻ����Ź��ܣ�',N'2014/2/19 9:26:44')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 53,N'admin',N'�ڲ���Ա��test',N'aaaaa',N'2014/3/5 11:45:38')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 54,N'admin',N'�ڲ���Ա��test',N'aaaaa',N'2014/3/5 11:45:44')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 55,N'admin',N'admin',N'aaaaa',N'2014/3/5 11:46:02')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 56,N'admin',N'�ڲ���Ա��admin',N'aaaaa',N'2014/3/5 11:46:02')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 57,N'admin',N'�ڲ���Ա��test',N'abcd',N'2014/3/5 11:46:20')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 58,N'admin',N'�ڲ���Ա��������',N'abcd',N'2014/3/5 11:46:28')
INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 59,N'admin',N'�ڲ���Ա��test',N'dfdfd',N'2014/3/5 11:52:42')

SET IDENTITY_INSERT [ERPMobile] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNetEmail]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNetEmail]

CREATE TABLE [ERPNetEmail] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[EmailTitle] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[EmailContent] [text]  NULL,
[FuJian] [varchar]  (2000) NULL,
[FromUser] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[EmailState] [varchar]  (50) NULL DEFAULT ('δ��'))

ALTER TABLE [ERPNetEmail] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNetEmail] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNetEmail] ON

INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 143,N'����qq.com������',N'2012/9/12 16:30:21',N'-',N'MailAttachments/634856324041150537mail.eml',N'PostMaster��PostMaster@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 144,N'��תվ�ļ���������',N'2012/9/14 9:34:52',N'QQ�������Ա��10000@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 145,N'�ظ�:��ĿGPSϵͳ-������-������ ��',N'2012/9/15 10:18:20',N'����Ҫcs�氡��c#�ġ������ҿ�����˵����java�ġ�
------ ԭʼ�ʼ� ------
������:"���"<1527562807@qq.com>;
����ʱ��:2012��9��15��(������) ����8:40
�ռ���:"43577178"<43577178@qq.com>;
����:��ĿGPSϵͳ-������-��������',N'Leo��43577178@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 146,N'��תվ�ļ���������',N'2012/9/19 9:36:44',N'QQ�������Ա��10000@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 147,N'�ظ�����ĿGPSϵͳ-������-���� ����',N'2012/9/19 18:32:33',N'������������û�����ݿⲿ�֡��漰�����ݿ�Ķ���ɾ���ˡ�ԭʼ�ľ���������



------------------ ԭʼ�ʼ� ------------------
������: "1527562807"<1527562807@qq.com>; 
����ʱ��: 2012��9��15��(������) ����8:40
�ռ���: "43577178"<43577178@qq.com>; 
����: ��ĿGPSϵͳ-������-��������',N'Leo��43577178@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 148,N'�ظ������°칫oaϵͳ2007����� ��',N'2012/9/20 8:44:51',N'ѹ�����������ز�����������´������������Ҫ©���ؼ������ݿ�
 лл

 

 ------------------ ԭʼ�ʼ� ------------------
  ������: "���"<1527562807@qq.com>;
 ����ʱ��: 2012��9��19��(������) ����10:15
 �ռ���: "380289482"<380289482@QQ.COM>; 
 
 ����: ���°칫oaϵͳ2007����԰�',N'clier��380289482@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 149,N'�ظ������°칫oaϵͳ2007����� ��',N'2012/9/20 9:32:47',N'������ѹ����ѹΪRAR��ʽ�������Ȼ���ܽ�ѹ���Թ����ѹ�����
  

 

 ------------------ ԭʼ�ʼ� ------------------
  ������: "���"<1527562807@qq.com>;
 ����ʱ��: 2012��9��20��(������) ����9:15
 �ռ���: "380289482"<380289482@qq.com>; 
 
 ����: �ظ������°칫oaϵͳ2007����԰�

 

  
  

 

 ------------------ ԭʼ�ʼ� ------------------
  ������: "380289482"<380289482@qq.com>;
 ����ʱ��: 2012��9��20��(������) ����8:44
 �ռ���: "���"<1527562807@qq.com>; 
 
 ����: �ظ������°칫oaϵͳ2007����԰�

 

  
  ѹ�����������ز�����������´������������Ҫ©���ؼ������ݿ�
 лл

 

 ------------------ ԭʼ�ʼ� ------------------
  ������: "���"<1527562807@qq.com>;
 ����ʱ��: 2012��9��19��(������) ����10:15
 �ռ���: "380289482"<380289482@QQ.COM>; 
 
 ����: ���°칫oaϵͳ2007����԰�',N'clier��380289482@qq.com��',N'admin',N'�Ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 150,N'��תվ�ļ���������',N'2012/9/21 9:38:10',N'QQ�������Ա��10000@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 151,N'��תվ�ļ���������',N'2012/9/24 9:37:48',N'QQ�������Ա��10000@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 152,N'��תվ�ļ���������',N'2012/9/25 9:34:12',N'QQ�������Ա��10000@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 153,N'��תվ�ļ���������',N'2012/9/27 9:38:32',N'QQ�������Ա��10000@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 154,N'��תվ�ļ���������',N'2012/10/1 9:34:31',N'QQ�������Ա��10000@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 155,N'��תվ�ļ���������',N'2012/10/2 9:30:47',N'QQ�������Ա��10000@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 156,N'��תվ�ļ���������',N'2012/10/3 9:37:54',N'QQ�������Ա��10000@qq.com��',N'admin',N'�Ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 157,N'��תվ�ļ���������',N'2012/10/10 9:33:14',N'QQ�������Ա��10000@qq.com��',N'admin',N'δ��')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FromUser],[ToUser],[EmailState]) VALUES ( 158,N'��תվ�ļ���������',N'2012/10/12 9:40:20',N'QQ�������Ա��10000@qq.com��',N'admin',N'�Ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 159,N'test',N'2012/10/12 9:46:48',N'<P>ers</P>2012/10/12 9:46:48',N'1527562807@qq.com��1527562807@qq.com��',N'admin',N'�Ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 160,N'dg',N'2013/11/11 10:30:15',N'<p>gd</p>',N'liyiyang',N'dg',N'�ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 161,N'reg',N'2013/11/11 10:30:44',N'<p>rgeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>',N'liyiyang',N'503682734@qq.com',N'�ѷ�')

SET IDENTITY_INSERT [ERPNetEmail] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNForm]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNForm]

CREATE TABLE [ERPNForm] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FormName] [varchar]  (50) NULL,
[TypeID] [int]  NULL,
[UserListOK] [varchar]  (8000) NULL,
[DepListOK] [varchar]  (8000) NULL,
[JiaoSeListOK] [varchar]  (8000) NULL,
[PaiXuStr] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL,
[ContentStr] [text]  NULL,
[ItemsList] [varchar]  (8000) NULL,
[IFOK] [varchar]  (50) NULL,
[FormDataName] [nvarchar]  (50) NULL,
[ItemList] [nvarchar]  (100) NULL)

ALTER TABLE [ERPNForm] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNForm] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNForm] ON

INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 14,N'���ĵǼ�',1,N'ȫ��',N'A',N'admin',N'2012/3/2 13:02:13',N'<p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px"></span></strong></p><p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px">�Ƽ����޹�˾���ĵǼǵ�</span></strong></p><div align="center"><table border="1" cellspacing="0" bordercolorlight="#ff0000" bordercolordark="#ffffff" cellpadding="6" width="730" bgcolor="#ffffff" align="center"><tbody><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">�������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text1352202012" name="Text1352202012" alt="�������" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">�ļ����&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text29660449" name="Text29660449" alt="�ļ����" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">���ܵȼ�&nbsp;</span></td><td><select id="Drop410977366" name="Drop410977366" alt="���ܵȼ�"><option selected="selected" value="����">����</option><option value="����">����</option><option value="һ��">һ��</option></select></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">��������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Date1885273127" onclick="setday(this)" name="Date1885273127" alt="��������" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">���ķ���&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;ime-mode:disabled;border-top:0px;border-right:0px" ondragenter="return false" id="Num1563388397" onkeypress="var k=event.keyCode; return (k&gt;=48&amp;&amp;k&lt;=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(&#39;text&#39;))" name="Num1563388397" alt="���ķ���" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">�����̶�&nbsp;</span></td><td><select id="Drop60196270" name="Drop60196270" alt="�����̶�"><option selected="selected" value="����">����</option><option value="�Ӽ�">�Ӽ�</option><option value="��ͨ">��ͨ</option></select></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">�����ֺ�&nbsp;</span></td><td><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text943000702" name="Text943000702" alt="�����ֺ�" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">���ĵ�λ&nbsp;</span></td><td colspan="3"><input style="border-bottom:#000000 1px solid;border-left:0px;width:298px;height:15px;border-top:0px;border-right:0px" id="Text597267604" name="Text597267604" alt="���ĵ�λ" size="8" /></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">��&nbsp;��&nbsp;��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5"><input style="border-bottom:#000000 1px solid;border-left:0px;width:582px;height:15px;border-top:0px;border-right:0px" id="Text1182782016" name="Text1182782016" alt="�����" size="27" /></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">�ļ�����&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5"><input style="border-bottom:#000000 1px solid;border-left:0px;width:582px;height:15px;border-top:0px;border-right:0px" id="Text1015936882" name="Text1015936882" alt="�ļ�����" size="52" /></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">��&nbsp;&nbsp;&nbsp;&nbsp;ע&nbsp;</span></td><td colspan="5"><img id="img1060552938" class="HerCss" onclick="selectShouXie(img1060552938);" name="img1060552938" alt="��дǩ��" src="../images/Button/InsertQianMing.gif" /></td></tr></tbody></table></div>',N'|Text1352202012_�������|Text29660449_�ļ����|Drop410977366_���ܵȼ�|Date1885273127_��������|Num1563388397_���ķ���|Text943000702_�����ֺ�|Text597267604_���ĵ�λ|Text1182782016_�����|Text1015936882_�ļ�����|Drop60196270_�����̶�|img1060552938_��дǩ��',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 15,N'���ĵǼ�',1,N'ȫ��',N'B',N'admin',N'2012/3/2 13:02:25',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text388145984 alt=������� name=Text388145984></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1969560392 alt=�ļ���� name=Text1969560392></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT id=Drop1813921118 name=Drop1813921118 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1967604968 onclick=setday(this) alt=�������� name=Date1967604968></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num120404421 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" alt=���ķ��� name=Num120404421></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT id=Drop1958732006 name=Drop1958732006 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1091031034 alt=�����ֺ� name=Text1091031034></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 316px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text373621994 alt=���ĵ�λ size=15 name=Text373621994></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1546743769 alt=����� size=35 name=Text1546743769></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text512489834 alt=�ļ����� size=17 name=Text512489834></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 598px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 62px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1453717419 cols=36 name=TextArea1453717419 alt="��ע˵��"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'||Text388145984_�������|Text1969560392_�ļ����|Drop1813921118_���ܵȼ�|Date1967604968_��������|Num120404421_���ķ���|Drop1958732006_�����̶�|Text1091031034_�����ֺ�|Text373621994_���ĵ�λ|Text1546743769_�����|Text512489834_�ļ�����|TextArea1453717419_��ע˵��',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 16,N'���ñ�����',3,N'ȫ��',N'A',N'admin',N'2012/3/2 13:30:09',N'<p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px"></span></strong></p><p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px">�Ƽ����޹�˾���ñ�����</span></strong></p><div align="center"><table border="1" cellspacing="0" bordercolorlight="#ff0000" bordercolordark="#ffffff" cellpadding="6" width="730" bgcolor="#ffffff" align="center"><tbody><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">��&nbsp;��&nbsp;��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;width:96px;height:15px;border-top:0px;border-right:0px" id="Text1346806626" name="Text1346806626" readonly="readonly" alt="������" value="��ؼ�-�û�����" size="5" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="80"><span style="color:#ff0000">��������</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;width:100px;height:15px;border-top:0px;border-right:0px" id="Text1150185447" name="Text1150185447" readonly="readonly" alt="��������" value="��ؼ�-��ǰ����" size="8" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">�������&nbsp;</span></td><td><input style="border-bottom:#000000 1px solid;border-left:0px;width:54px;ime-mode:disabled;height:15px;border-top:0px;border-right:0px" ondragenter="return false" id="Num1701505068" onkeypress="var k=event.keyCode; return (k&gt;=48&amp;&amp;k&lt;=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(&#39;text&#39;))" name="Num1701505068" alt="�������" size="1" />Ԫ</td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" class=" selectTdClass" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text601117428" name="Text601117428" readonly="readonly" alt="7676" value="��ؼ�-�û�����" /></span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" class=" selectTdClass" colspan="5">&#8203;</td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" class=" selectTdClass">&#8203;</td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" class=" selectTdClass">&#8203;</td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" class=" selectTdClass">&#8203;</td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" class=" selectTdClass">&#8203;</td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" class=" selectTdClass">&#8203;</td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" class=" selectTdClass">&#8203;</td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">�������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" class=" selectTdClass" colspan="5"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:608px;scrollbar-darkshadow-color:#d8d8d8;height:88px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea963891607" cols="1" rows="1" name="TextArea963891607" alt="����������"></textarea></p><p>ǩ�֣����£���<img id="img1649848264" class="HerCss" onclick="selectyinzhang(img1649848264);" name="img1649848264" alt="����ǩ�ָ���" src="../images/Button/InsertYinZhang.gif" /></p></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">��λ���&nbsp;</span></td><td colspan="5"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:609px;scrollbar-darkshadow-color:#d8d8d8;height:99px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea1422472289" cols="9" rows="1" name="TextArea1422472289" alt="��λ������"></textarea></p><p>ǩ�֣����£���<img id="img844636636" class="HerCss" onclick="selectyinzhang(img844636636);" name="img844636636" alt="��λǩ�ָ���" src="../images/Button/InsertYinZhang.gif" /></p></td></tr><tr><td>asdfasdf</td><td><input style="width:0px;display:none" type="hidden" /><textarea id="TextArea1001741331" name="TextArea1001741331" alt="asdf"></textarea></td><td>asdf</td><td><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text1943011321" name="Text1943011321" readonly="readonly" alt="7676" value="��ؼ�-�û�����" /></td><td>&#8203;</td><td>&#8203;</td></tr></tbody></table></div>',N'|Text1346806626_������|Text1150185447_��������|Num1701505068_�������|TextArea963891607_����������|img1649848264_����ǩ�ָ���|TextArea1422472289_��λ������|img844636636_��λǩ�ָ���|TextArea1001741331_asdf|Text601117428_7676|Text1943011321_7676',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 19,N'�������뵥',3,N'ȫ��',N'C',N'admin',N'2012/3/2 13:30:53',N'<p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px"></span></strong></p><p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px">�Ƽ����޹�˾�������뵥</span></strong></p><div align="center"><table border="1" cellspacing="0" bordercolorlight="#ff0000" bordercolordark="#ffffff" cellpadding="6" width="730" bgcolor="#ffffff" align="center"><tbody><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">��&nbsp;��&nbsp;��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text911753825" name="Text911753825" readonly="readonly" alt="������" value="��ؼ�-�û�����" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">��������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Date1915540870" onclick="setday(this)" name="Date1915540870" alt="��������" /></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">��������&nbsp;</span></td><td colspan="3"><input style="border-bottom:#000000 1px solid;border-left:0px;width:614px;height:15px;border-top:0px;border-right:0px" id="Text1267204109" name="Text1267204109" alt="��������" size="30" /></td></tr><tr><td><span style="color:#ff0000">���������&nbsp;</span></td><td colspan="3"><input style="border-bottom:#000000 1px solid;border-left:0px;width:614px;height:15px;border-top:0px;border-right:0px" id="Text380913647" onclick="selectUser(Text380913647);" name="Text380913647" readonly="readonly" alt="���������" value="���ѡ���û�" size="17" /></td></tr><tr><td><span style="color:#ff0000">����ԭ��</span></td><td colspan="3">&#8203;</td></tr><tr><td><span style="color:#ff0000">�������</span></td><td colspan="3"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:616px;scrollbar-darkshadow-color:#d8d8d8;height:58px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea1672896422" cols="47" name="TextArea1672896422" alt="�������"></textarea></p><p>ǩ�֣����£���<img id="img1943727878" class="HerCss" onclick="selectyinzhang(img1943727878);" name="img1943727878" alt="����ǩ��" src="../images/Button/InsertYinZhang.gif" /></p></td></tr><tr><td><span style="color:#ff0000">��λ���</span></td><td colspan="3"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:616px;scrollbar-darkshadow-color:#d8d8d8;height:65px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea810238167" cols="13" name="TextArea810238167" alt="��λ���"></textarea></p><p>ǩ�֣����£���<img id="img1735933367" class="HerCss" onclick="selectyinzhang(img1735933367);" name="img1735933367" alt="��λǩ��" src="../images/Button/InsertYinZhang.gif" /></p></td></tr></tbody></table></div>',N'|Text911753825_������|Date1915540870_��������|Text1267204109_��������|Text380913647_���������|TextArea1672896422_�������|img1943727878_����ǩ��|TextArea810238167_��λ���|img1735933367_��λǩ��',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 20,N'�칫��Ʒ���뵥',3,N'ȫ��',N'D',N'admin',N'2012/3/2 13:31:10',N'<p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px"></span></strong></p><p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px">�Ƽ����޹�˾�칫��Ʒ���뵥</span></strong></p><div align="center"><table border="1" cellspacing="0" bordercolorlight="#ff0000" bordercolordark="#ffffff" cellpadding="6" width="730" bgcolor="#ffffff" align="center"><tbody><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">��&nbsp;��&nbsp;��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text1933853913" name="Text1933853913" readonly="readonly" alt="������" value="��ؼ�-�û�����" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">��������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165" colspan="3"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text592464421" name="Text592464421" readonly="readonly" alt="��������" value="��ؼ�-��ǰ����" /></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">������Ʒ&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text1772508615" name="Text1772508615" alt="������Ʒ" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">��������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165" colspan="3"><input style="border-bottom:#000000 1px solid;border-left:0px;ime-mode:disabled;border-top:0px;border-right:0px" ondragenter="return false" id="Num467469505" onkeypress="var k=event.keyCode; return (k&gt;=48&amp;&amp;k&lt;=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(&#39;text&#39;))" name="Num467469505" alt="��������" /></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">����ԭ��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5">&#8203;</td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">�������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:572px;scrollbar-darkshadow-color:#d8d8d8;height:92px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea825435841" cols="36" name="TextArea825435841" alt="�������"></textarea></p><p>ǩ�֣����£���<img id="img1988775929" class="HerCss" onclick="selectyinzhang(img1988775929);" name="img1988775929" alt="����ǩ��" src="../images/Button/InsertYinZhang.gif" /></p></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">��&nbsp;&nbsp;&nbsp;&nbsp;ע&nbsp;</span></td><td colspan="5">&#8203;</td></tr></tbody></table></div>',N'|Text1933853913_������|Text592464421_��������|Text1772508615_������Ʒ|Num467469505_��������|TextArea825435841_�������|img1988775929_����ǩ��',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 22,N'��Դ���뵥',4,N'ȫ��',N'A',N'admin',N'2012/3/2 13:32:05',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾��Դ���뵥</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1949684091 value=��ؼ�-�û����� readOnly alt=������ name=Text1949684091></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>����ʱ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165 colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 310px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1293928654 alt=����ʱ�� size=4 name=Text1293928654></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>��Ҫ������Դ&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 600px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text512074191 alt=������Դ size=19 name=Text512074191></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>����ԭ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 602px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 75px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1181336905 cols=17 name=TextArea1181336905 alt="����ԭ��"></TEXTAREA></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�������&nbsp;</FONT></TD><TD colSpan=5><P><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 604px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 53px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea278331366 cols=22 name=TextArea278331366 alt="�������"></TEXTAREA>&nbsp;</P><P>ǩ�֣����£���<IMG id=img351451891 class=HerCss onclick=selectyinzhang(img351451891); name=img351451891 alt=����ǩ�� src="../images/Button/InsertYinZhang.gif"></P></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 604px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 56px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea137976353 rows=1 cols=38 name=TextArea137976353 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'||Text1949684091_������|Text1293928654_����ʱ��|Text512074191_������Դ|TextArea1181336905_����ԭ��|TextArea278331366_�������|img351451891_����ǩ��|TextArea137976353_��ע',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 23,N'��ְ���뵥',2,N'ȫ��',N'A',N'admin',N'2012/3/2 13:32:23',N'<p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px"></span></strong></p><p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px">�۶��Ƽ����޹�˾��ְ���뵥</span></strong></p><div align="center"><table border="1" cellspacing="0" bordercolorlight="#ff0000" bordercolordark="#ffffff" cellpadding="6" width="730" bgcolor="#ffffff" align="center"><tbody><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">��&nbsp;��&nbsp;��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text1218528221" value="��ؼ�-�û�����" readonly="readonly" alt="������" name="Text1218528221" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">��ְ����&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;width:112px;height:15px;border-top:0px;border-right:0px" id="Date1718492787" onclick="setday(this)" alt="��ְ����" size="11" name="Date1718492787" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">���ڲ���&nbsp;</span></td><td><input style="border-bottom:#000000 1px solid;border-left:0px;width:102px;height:15px;border-top:0px;border-right:0px" id="Text27336682" value="��ؼ�-�û�����" readonly="readonly" alt="���ڲ���" size="10" name="Text27336682" /></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">��ְԭ��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5"><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:167px;scrollbar-darkshadow-color:#d8d8d8;height:94px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea155156173" rows="1" cols="9" name="TextArea155156173" alt="��ְԭ��"></textarea><img id="img1664759222" class="HerCss" onclick="selectShouXie(img1664759222);" name="img1664759222" alt="��дǩ��" src="../images/Button/InsertQianMing.gif" /></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">�������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:604px;scrollbar-darkshadow-color:#d8d8d8;height:48px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea1243264396" cols="33" name="TextArea1243264396" alt="�������"></textarea></p><p>ǩ�֣����£���<img id="img795306572" class="HerCss" onclick="selectyinzhang(img795306572);" name="img795306572" alt="����ǩ��" src="../images/Button/InsertYinZhang.gif" /></p></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">��λ���&nbsp;</span></td><td colspan="5"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:604px;scrollbar-darkshadow-color:#d8d8d8;height:51px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea1280755720" rows="1" cols="21" name="TextArea1280755720" alt="��λ���"></textarea></p><p>ǩ�֣����£���<img id="img1395120620" class="HerCss" onclick="selectyinzhang(img1395120620);" name="img1395120620" alt="��λǩ��" src="../images/Button/InsertYinZhang.gif" /></p></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">�������&nbsp;</span></td><td colspan="5"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:604px;scrollbar-darkshadow-color:#d8d8d8;height:59px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea177808024" cols="41" name="TextArea177808024" alt="�������"></textarea></p><p>ǩ�֣����£���<img id="img1158162307" class="HerCss" onclick="selectyinzhang(img1158162307);" name="img1158162307" alt="����ǩ��" src="../images/Button/InsertYinZhang.gif" /></p></td></tr></tbody></table></div>',N'|Text1218528221_������|Date1718492787_��ְ����|Text27336682_���ڲ���|TextArea155156173_��ְԭ��|TextArea1243264396_�������|img795306572_����ǩ��|TextArea1280755720_��λ���|img1395120620_��λǩ��|TextArea177808024_�������|img1158162307_����ǩ��|img1664759222_��дǩ��',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 24,N'�������뵥',4,N'ȫ��',N'B',N'admin',N'2012/3/2 13:33:08',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾�������뵥</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1152799531 value=��ؼ�-�û����� readOnly alt=������ name=Text1152799531></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>ʹ��ʱ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165 colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 308px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text772937767 alt=ʹ��ʱ�� size=6 name=Text772937767></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>����ԭ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 564px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 100px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea891124515 cols=11 name=TextArea891124515 alt="����ԭ��"></TEXTAREA></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><P><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 564px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 91px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea409873814 rows=1 cols=51 name=TextArea409873814 alt="�������"></TEXTAREA>&nbsp;</P><P>ǩ�֣����£���<IMG id=img770351501 class=HerCss onclick=selectyinzhang(img770351501); name=img770351501 alt=����ǩ�� src="../images/Button/InsertYinZhang.gif"></P></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 566px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 65px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea769408804 rows=1 cols=54 name=TextArea769408804 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'||Text1152799531_������|Text772937767_ʹ��ʱ��|TextArea891124515_����ԭ��|TextArea409873814_�������|img770351501_����ǩ��|TextArea769408804_��ע',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 25,N'�ɹ����뵥',3,N'ȫ��',N'A',N'admin',N'2012/3/2 13:30:09',N'<p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px"></span></strong></p><p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px">�Ƽ����޹�˾�ɹ����뵥</span></strong></p><div align="center"><table border="1" cellspacing="0" bordercolorlight="#ff0000" bordercolordark="#ffffff" cellpadding="6" width="730" bgcolor="#ffffff" align="center"><tbody><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">��&nbsp;��&nbsp;��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;width:96px;height:15px;border-top:0px;border-right:0px" id="Text1346806626" name="Text1346806626" readonly="readonly" alt="������" value="��ؼ�-�û�����" size="5" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="80"><span style="color:#ff0000">��������</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom:#000000 1px solid;border-left:0px;width:100px;height:15px;border-top:0px;border-right:0px" id="Text1150185447" name="Text1150185447" readonly="readonly" alt="��������" value="��ؼ�-��ǰ����" size="8" /></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">�ɹ����&nbsp;</span></td><td><input style="border-bottom:#000000 1px solid;border-left:0px;width:62px;ime-mode:disabled;height:15px;border-top:0px;border-right:0px" ondragenter="return false" id="Num817904409" onkeypress="var k=event.keyCode; return (k&gt;=48&amp;&amp;k&lt;=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(&#39;text&#39;))" name="Num817904409" alt="�ɹ����" size="1" />Ԫ</td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">����ԭ��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5">&#8203;</td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">�������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:608px;scrollbar-darkshadow-color:#d8d8d8;height:88px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea963891607" cols="1" rows="1" name="TextArea963891607" alt="����������"></textarea></p><p>ǩ�֣����£���<img id="img1649848264" class="HerCss" onclick="selectyinzhang(img1649848264);" name="img1649848264" alt="����ǩ�ָ���" src="../images/Button/InsertYinZhang.gif" /></p></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">��λ���&nbsp;</span></td><td colspan="5"><p><textarea style="scrollbar-arrow-color:#d8d8d8;border-bottom:#000000 1px solid;border-left:0px;scrollbar-face-color:#aaaaaa;width:609px;scrollbar-darkshadow-color:#d8d8d8;height:99px;scrollbar-highlight-color:#d8d8d8;scrollbar-shadow-color:#d8d8d8;border-top:0px;scrollbar-track-color:#d8d8d8;border-right:0px;scrollbar-3dlight-color:#d8d8d8" id="TextArea1422472289" cols="9" rows="1" name="TextArea1422472289" alt="��λ������"></textarea></p><p>ǩ�֣����£���<img id="img844636636" class="HerCss" onclick="selectyinzhang(img844636636);" name="img844636636" alt="��λǩ�ָ���" src="../images/Button/InsertYinZhang.gif" /></p></td></tr></tbody></table></div>',N'|Text1346806626_������|Text1150185447_��������|TextArea963891607_����������|img1649848264_����ǩ�ָ���|TextArea1422472289_��λ������|img844636636_��λǩ�ָ���|Num817904409_�ɹ����',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 26,N'Ա����ٵ�',2,N'ȫ��',N'A',N'admin',N'2012/3/2 13:32:23',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾������뵥</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1218528221 value=��ؼ�-�û����� readOnly alt=������ name=Text1218528221></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ʱ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165 colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 262px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1585953744 alt=���ʱ�� size=12 name=Text1585953744></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>���ԭ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 604px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 57px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea244731855 rows=1 cols=39 name=TextArea244731855 alt="���ԭ��"></TEXTAREA></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><P><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 604px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 48px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1243264396 cols=33 name=TextArea1243264396 alt="�������"></TEXTAREA>&nbsp;</P><P>ǩ�֣����£���<IMG id=img795306572 class=HerCss onclick=selectyinzhang(img795306572); name=img795306572 alt=����ǩ�� src="../images/Button/InsertYinZhang.gif"></P></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��λ���&nbsp;</FONT></TD><TD colSpan=5><P><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 604px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 51px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1280755720 rows=1 cols=21 name=TextArea1280755720 alt="��λ���"></TEXTAREA>&nbsp;</P><P>ǩ�֣����£���<IMG id=img1395120620 class=HerCss onclick=selectyinzhang(img1395120620); name=img1395120620 alt=��λǩ�� src="../images/Button/InsertYinZhang.gif"></P></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�������&nbsp;</FONT></TD><TD colSpan=5><P><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 604px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 59px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea177808024 cols=41 name=TextArea177808024 alt="�������"></TEXTAREA>&nbsp;</P><P>ǩ�֣����£���<IMG id=img1158162307 class=HerCss onclick=selectyinzhang(img1158162307); name=img1158162307 alt=����ǩ�� src="../images/Button/InsertYinZhang.gif"></P></TD></TR></TBODY></TABLE></DIV>',N'|||Text1218528221_������|TextArea1243264396_�������|img795306572_����ǩ��|TextArea1280755720_��λ���|img1395120620_��λǩ��|TextArea177808024_�������|img1158162307_����ǩ��|Text1585953744_���ʱ��|TextArea244731855_���ԭ��',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 27,N'���ĵǼ�-����',1,N'ȫ��',N'B',N'admin',N'2012/3/2 13:02:25',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text388145984 name=Text388145984 alt=�������></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1969560392 name=Text1969560392 alt=�ļ����></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT id=Drop1813921118 name=Drop1813921118 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1967604968 onclick=setday(this) name=Date1967604968 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num120404421 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num120404421 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT id=Drop1958732006 name=Drop1958732006 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1091031034 name=Text1091031034 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 316px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text373621994 name=Text373621994 alt=���ĵ�λ size=15></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1546743769 name=Text1546743769 alt=����� size=35></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text512489834 name=Text512489834 alt=�ļ����� size=17><IMG style="CURSOR: hand" id=List1961961965 class=LIST_VIEW title=ˮ��� border=0 align=absMiddle src="http://localhost:4339/Web/images/listview.gif" LV_SIZE="10`10`10`" LV_TITLE="�Ե�`�Ե�`�Ե�`"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 598px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 62px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1453717419 cols=36 name=TextArea1453717419 alt="��ע˵��"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'|||||||||Text388145984_�������|Text1969560392_�ļ����|Drop1813921118_���ܵȼ�|Date1967604968_��������|Num120404421_���ķ���|Drop1958732006_�����̶�|Text1091031034_�����ֺ�|Text373621994_���ĵ�λ|Text1546743769_�����|Text512489834_�ļ�����|TextArea1453717419_��ע˵��|List1961961965_ˮ���',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK],[FormDataName],[ItemList]) VALUES ( 28,N'���ĵǼ�-����',1,N'ȫ��',N'A',N'admin',N'2012/3/2 13:02:13',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT id=Drop410977366 name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT id=Drop60196270 name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 name=Text1015936882 alt=�ļ����� size=52><IMG id=img1627787205 class=HerCss onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'||||Text1352202012_�������|Text29660449_�ļ����|Drop410977366_���ܵȼ�|Date1885273127_��������|Num1563388397_���ķ���|Text943000702_�����ֺ�|Text597267604_���ĵ�λ|Text1182782016_�����|Text1015936882_�ļ�����|TextArea1938017440_��ע|Drop60196270_�����̶�|img1627787205_res|Text1527697453_�����Ϣ|Text219451277_�����Ϣ',N'��',N'SWDJFB',N'||Text1527697453_LBXX_nvarchar(100)|Text219451277_BHXX_nvarchar(100)')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[DepListOK],[JiaoSeListOK],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK],[FormDataName],[ItemList]) VALUES ( 29,N'������־',4,N'ȫ��',N'ȫ��',N'ȫ��',N'admin',N'2012/10/27 12:53:46',N'<TABLE style="BORDER-COLLAPSE: collapse" border=1 cellSpacing=2 borderColor=#000000 cellPadding=3 width="100%" bgColor=#ffffff><TBODY><TR><TD>&nbsp;bt</TD><TD>&nbsp;<INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1624732643 class=nvarchar(100) name=Text1624732643 alt=bt></TD></TR><TR><TD>&nbsp;nr</TD><TD>&nbsp;<TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1110275669 class=nvarchar(3999) name=TextArea1110275669 alt="nr"></TEXTAREA></TD></TR></TBODY></TABLE>',N'||Text1624732643_bt|TextArea1110275669_nr',N'��',N'GZRZ',N'||Text1624732643_Subject_nvarchar(100)|TextArea1110275669_Contents_nvarchar(3999)')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[DepListOK],[JiaoSeListOK],[UserName],[TimeStr],[IFOK],[FormDataName]) VALUES ( 30,N'��������',4,N'ȫ��',N'ȫ��',N'ȫ��',N'admin',N'2012/11/8 17:07:23',N'��',N'QJSQB')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[DepListOK],[JiaoSeListOK],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 31,N'�ճ��칫����',1,N'ȫ��',N'ȫ��',N'ȫ��',N'admin',N'2013/11/9 11:01:48',N'<p><img id="img488770729" class="HerCss" onclick="selectyinzhang(img488770729);" name="img488770729" alt="ӡ��" src="../images/Button/InsertYinZhang.gif" /><img id="img603713647" class="HerCss" onclick="selectShouXie(img603713647);" name="img603713647" alt="ǩ��" src="../images/Button/InsertQianMing.gif" />��ǰ���ڣ�<input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text521709049" value="��ؼ�-��ǰ����" readonly="readonly" alt="��ǰ����" name="Text521709049" /></p>',N'|img488770729_ӡ��|img603713647_ǩ��|Text521709049_��ǰ����',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[DepListOK],[JiaoSeListOK],[PaiXuStr],[UserName],[TimeStr],[IFOK]) VALUES ( 32,N'aaa',2,N'aa',N'aa',N'a',N'aaa',N'admin',N'2014/2/27 13:35:49',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[DepListOK],[JiaoSeListOK],[PaiXuStr],[UserName],[TimeStr],[IFOK]) VALUES ( 33,N'����',4,N'ȫ��',N'ȫ��',N'ȫ��',N'A',N'admin',N'2014/3/3 10:57:41',N'��')
INSERT [ERPNForm] ([ID],[FormName],[TypeID],[UserListOK],[DepListOK],[JiaoSeListOK],[PaiXuStr],[UserName],[TimeStr],[ContentStr],[ItemsList],[IFOK]) VALUES ( 34,N'�칫��Ʒ���뵥',4,N'ȫ��',N'ȫ��',N'ȫ��',N'A',N'admin',N'2014/3/3 10:58:13',N'<table border="3" width="972"><tbody><tr><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text1950103874" alt="����" name="Text1950103874" /></td><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text420852021" alt="����" name="Text420852021" /></td><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text204357601" alt="����" name="Text204357601" /></td><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text112736062" alt="����" name="Text112736062" /></td><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text1367866168" alt="����" name="Text1367866168" /></td></tr><tr><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text27129964" alt="����" name="Text27129964" /></td><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text120936541" alt="����" name="Text120936541" /></td><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text1333360643" alt="����" name="Text1333360643" /></td><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text1747451047" alt="����" name="Text1747451047" /></td><td valign="top" width="191"><input style="border-bottom:#000000 1px solid;border-left:0px;border-top:0px;border-right:0px" id="Text58897778" alt="����" name="Text58897778" /></td></tr></tbody></table>',N'|Text1950103874_����|Text420852021_����|Text204357601_����|Text112736062_����|Text1367866168_����|Text27129964_����|Text120936541_����|Text1333360643_����|Text1747451047_����|Text58897778_����',N'��')

SET IDENTITY_INSERT [ERPNForm] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNFormType]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNFormType]

CREATE TABLE [ERPNFormType] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TypeName] [varchar]  (50) NULL,
[PaiXuStr] [varchar]  (50) NULL,
[BackInfo] [varchar]  (2000) NULL)

ALTER TABLE [ERPNFormType] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNFormType] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNFormType] ON

INSERT [ERPNFormType] ([ID],[TypeName],[PaiXuStr],[BackInfo]) VALUES ( 1,N'����',N'A',N'������Ŀ�ļ���ϵͳ���Ĵ�Ŵ���')
INSERT [ERPNFormType] ([ID],[TypeName],[PaiXuStr],[BackInfo]) VALUES ( 2,N'����',N'C',N'������Ϣ���������')
INSERT [ERPNFormType] ([ID],[TypeName],[PaiXuStr],[BackInfo]) VALUES ( 3,N'����',N'B',N'�������ļ��Լ������ڴ���')
INSERT [ERPNFormType] ([ID],[TypeName],[PaiXuStr],[BackInfo]) VALUES ( 4,N'����',N'D',N'ϵͳ���漰������������������ڴ���')

SET IDENTITY_INSERT [ERPNFormType] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNWorkDetails]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNWorkDetails]

CREATE TABLE [ERPNWorkDetails] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkID] [int]  NULL,
[ItemsNameCN] [varchar]  (50) NULL,
[ItemsNameEn] [varchar]  (50) NULL,
[ItemsValue] [varchar]  (8000) NULL)

ALTER TABLE [ERPNWorkDetails] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNWorkDetails] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNWorkDetails] ON

INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 80,32,N'�������',N'Text388145984',N'�ϼ�����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 81,32,N'�ļ����',N'Text1969560392',N'BD-XJ-091')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 82,32,N'���ܵȼ�',N'Drop1813921118',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 83,32,N'��������',N'Date1967604968',N'2012-03-03')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 84,32,N'���ķ���',N'Num120404421',N'2')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 85,32,N'�����̶�',N'Drop1958732006',N'�Ӽ�')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 86,32,N'�����ֺ�',N'Text1091031034',N'�۶�BD-FL')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 87,32,N'���ĵ�λ',N'Text373621994',N'����۶��Ƽ����޹�˾')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 88,32,N'�����',N'Text1546743769',N'�ϼ����Ĺ淶���ڲ����µ�ͳһ�Ա�׼')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 89,32,N'�ļ�����',N'Text512489834',N'�۶����¹淶�����ı�׼���Լ��ڲ�����ִ��ϸ��')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 90,32,N'��ע˵��',N'TextArea1453717419',N'�Ѿ���ȷҪ���λԱ������ִ�С�')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 91,40,N'������',N'Text1152799531',N'admin')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 92,40,N'ʹ��ʱ��',N'Text772937767',N'9��---10��')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 93,40,N'����ԭ��',N'TextArea891124515',N'ȥ������Ŀ�ͻ��ֳ�������������⣬ϣ���ɳ����ء�')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 94,40,N'�������',N'TextArea409873814',N'���ž������ۺ�ͬ��ô����룬�´�����д��ϸԭ��')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 95,40,N'��ע',N'TextArea769408804',N'�븽��˾����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 96,52,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 97,52,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 98,52,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 99,52,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 100,52,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 101,52,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 102,52,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 103,52,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 104,52,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 105,52,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 106,52,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 107,52,N'�����Ϣ',N'Text1527697453',N'tsdf��˾���')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 108,52,N'�����Ϣ',N'Text219451277',N'tsdf')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 109,54,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 110,54,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 111,54,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 112,54,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 113,54,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 114,54,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 115,54,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 116,54,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 117,54,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 118,54,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 119,54,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 120,54,N'�����Ϣ',N'Text1527697453',N'��˾����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 121,54,N'�����Ϣ',N'Text219451277',N'sdf2323')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 122,55,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 123,55,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 124,55,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 125,55,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 126,55,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 127,55,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 128,55,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 129,55,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 130,55,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 131,55,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 132,55,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 133,55,N'�����Ϣ',N'Text1527697453',N'tess��˾')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 134,55,N'�����Ϣ',N'Text219451277',N'3423')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 135,56,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 136,56,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 137,56,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 138,56,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 139,56,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 140,56,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 141,56,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 142,56,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 143,56,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 144,56,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 145,56,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 146,56,N'�����Ϣ',N'Text1527697453',N'sdf����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 147,56,N'�����Ϣ',N'Text219451277',N'sdf��˾')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 148,57,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 149,57,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 150,57,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 151,57,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 152,57,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 153,57,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 154,57,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 155,57,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 156,57,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 157,57,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 158,57,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 159,57,N'�����Ϣ',N'Text1527697453',N'�Ե�ss')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 160,57,N'�����Ϣ',N'Text219451277',N'ˮ���se232')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 161,58,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 162,58,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 163,58,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 164,58,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 165,58,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 166,58,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 167,58,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 168,58,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 169,58,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 170,58,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 171,58,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 172,58,N'�����Ϣ',N'Text1527697453',N'sdft343')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 173,58,N'�����Ϣ',N'Text219451277',N's33')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 174,59,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 175,59,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 176,59,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 177,59,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 178,59,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 179,59,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 180,59,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 181,59,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 182,59,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 183,59,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 184,59,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 185,59,N'�����Ϣ',N'Text1527697453',N'sd��˾')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 186,59,N'�����Ϣ',N'Text219451277',N'sd2323')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 187,60,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 188,60,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 189,60,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 190,60,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 191,60,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 192,60,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 193,60,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 194,60,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 195,60,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 196,60,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 197,60,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 198,60,N'�����Ϣ',N'Text1527697453',N'sdf23')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 199,60,N'�����Ϣ',N'Text219451277',N'sdfr3')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 200,53,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 201,53,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 202,53,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 203,53,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 204,53,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 205,53,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 206,53,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 207,53,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 208,53,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 209,53,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 210,53,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 211,53,N'�����Ϣ',N'Text1527697453',N'tesr')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 212,53,N'�����Ϣ',N'Text219451277',N'sr')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 213,61,N'�������',N'Text1352202012')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 214,61,N'�ļ����',N'Text29660449')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 215,61,N'���ܵȼ�',N'Drop410977366',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 216,61,N'��������',N'Date1885273127')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 217,61,N'���ķ���',N'Num1563388397')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 218,61,N'�����ֺ�',N'Text943000702')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 219,61,N'���ĵ�λ',N'Text597267604')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 220,61,N'�����',N'Text1182782016')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 221,61,N'�ļ�����',N'Text1015936882')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 222,61,N'��ע',N'TextArea1938017440')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 223,61,N'�����̶�',N'Drop60196270',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 224,61,N'�����Ϣ',N'Text1527697453',N'sd1')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 225,61,N'�����Ϣ',N'Text219451277',N'sd1')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 226,76,N'�������',N'Text388145984')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 227,76,N'�ļ����',N'Text1969560392')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 228,76,N'���ܵȼ�',N'Drop1813921118',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 229,76,N'��������',N'Date1967604968')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 230,76,N'���ķ���',N'Num120404421')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn],[ItemsValue]) VALUES ( 231,76,N'�����̶�',N'Drop1958732006',N'����')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 232,76,N'�����ֺ�',N'Text1091031034')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 233,76,N'���ĵ�λ',N'Text373621994')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 234,76,N'�����',N'Text1546743769')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 235,76,N'�ļ�����',N'Text512489834')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 236,76,N'��ע˵��',N'TextArea1453717419')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 237,79,N'δȫ��',N'Text486064399')
INSERT [ERPNWorkDetails] ([ID],[WorkID],[ItemsNameCN],[ItemsNameEn]) VALUES ( 238,79,N'212',N'TextArea1588031637')

SET IDENTITY_INSERT [ERPNWorkDetails] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNWorkFlow]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNWorkFlow]

CREATE TABLE [ERPNWorkFlow] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkFlowName] [varchar]  (200) NULL,
[FormID] [int]  NULL,
[UserListOK] [varchar]  (8000) NULL,
[DepListOK] [varchar]  (8000) NULL,
[JiaoSeListOK] [varchar]  (8000) NULL,
[PaiXuStr] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL,
[BackInfo] [varchar]  (2000) NULL,
[IFOK] [varchar]  (50) NULL)

ALTER TABLE [ERPNWorkFlow] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNWorkFlow] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNWorkFlow] ON

INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[IFOK]) VALUES ( 9,N'���ĵǼ�����',14,N'ȫ��',N'A',N'admin',N'2012/3/2 14:13:49',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[IFOK]) VALUES ( 10,N'���ĵǼ�����',15,N'ȫ��',N'A',N'admin',N'2012/3/2 14:14:04',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 11,N'�ɹ���������',25,N'ȫ��',N'admin',N'2012/3/2 14:14:17',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 12,N'���ñ�������',16,N'ȫ��',N'admin',N'2012/3/2 14:14:35',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 13,N'������������',19,N'ȫ��',N'admin',N'2012/3/2 14:14:46',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 14,N'�칫��Ʒ��������',20,N'ȫ��',N'admin',N'2012/3/2 14:15:03',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 15,N'Ա���������',26,N'ȫ��',N'admin',N'2012/3/2 14:15:16',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 16,N'��ְ��������',23,N'ȫ��',N'admin',N'2012/3/2 14:15:28',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 17,N'��Դ��������',22,N'ȫ��',N'admin',N'2012/3/2 14:15:38',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 18,N'������������',24,N'ȫ��',N'admin',N'2012/3/2 14:15:58',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[DepListOK],[JiaoSeListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 19,N'���ĵǼ�����',28,N'ȫ��',N'ȫ��',N'ȫ��',N'admin',N'2012/10/7 10:31:24',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[DepListOK],[JiaoSeListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 20,N'������־',29,N'ȫ��',N'ȫ��',N'ȫ��',N'admin',N'2012/11/1 15:06:01',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[DepListOK],[JiaoSeListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 21,N'�����������',30,N'ȫ��',N'ȫ��',N'ȫ��',N'admin',N'2012/11/8 17:09:44',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[DepListOK],[JiaoSeListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 22,N'test',27,N'ȫ��',N'ȫ��',N'ȫ��',N'admin',N'2012/12/15 10:50:19',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[DepListOK],[JiaoSeListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 24,N'11',19,N'ȫ��',N'ȫ��',N'ȫ��',N'admin',N'2014/2/19 11:54:36',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[DepListOK],[JiaoSeListOK],[PaiXuStr],[UserName],[TimeStr],[BackInfo],[IFOK]) VALUES ( 25,N'������־',28,N'ȫ��',N'ȫ��',N'ȫ��',N'A',N'admin',N'2014/3/3 11:55:22',N'jjj',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[IFOK]) VALUES ( 26,N'���ĵǼ�����-����',14,N'ȫ��',N'A',N'admin',N'2012/3/2 14:13:49',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[PaiXuStr],[UserName],[TimeStr],[IFOK]) VALUES ( 27,N'���ĵǼ�����-����-����',14,N'ȫ��',N'A',N'admin',N'2012/3/2 14:13:49',N'��')
INSERT [ERPNWorkFlow] ([ID],[WorkFlowName],[FormID],[UserListOK],[UserName],[TimeStr],[IFOK]) VALUES ( 28,N'����',32,N'����',N'admin',N'2014/3/4 18:17:11',N'��')

SET IDENTITY_INSERT [ERPNWorkFlow] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNWorkFlowNode]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNWorkFlowNode]

CREATE TABLE [ERPNWorkFlowNode] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkFlowID] [int]  NULL,
[NodeSerils] [varchar]  (50) NULL,
[NodeName] [varchar]  (50) NULL,
[NodeAddr] [varchar]  (50) NULL,
[NextNode] [varchar]  (50) NULL,
[IFCanJump] [varchar]  (50) NULL,
[IFCanView] [varchar]  (50) NULL,
[IFCanEdit] [varchar]  (50) NULL,
[IFCanDel] [varchar]  (50) NULL,
[JieShuHours] [int]  NULL,
[PSType] [varchar]  (50) NULL,
[SPType] [varchar]  (50) NULL,
[SPDefaultList] [varchar]  (8000) NULL,
[CanWriteSet] [varchar]  (8000) NULL,
[SecretSet] [varchar]  (8000) NULL,
[ConditionSet] [varchar]  (8000) NULL,
[NodeLeft] [varchar]  (50) NULL,
[NodeTop] [varchar]  (50) NULL)

ALTER TABLE [ERPNWorkFlowNode] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNWorkFlowNode] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNWorkFlowNode] ON

INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 30,9,N'1',N'�������',N'��ʼ',N'2,3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|Text1352202012_�������|Text29660449_�ļ����|Drop410977366_���ܵȼ�|Date1885273127_��������|Num1563388397_���ķ���|Text943000702_�����ֺ�|Text597267604_���ĵ�λ|Text1182782016_�����|Text1015936882_�ļ�����|TextArea1938017440_��ע|Drop60196270_�����̶�',N'104',N'61')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[NodeLeft],[NodeTop]) VALUES ( 31,9,N'2',N'�쵼���',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'ȫ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin,test',N'272',N'250')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[NodeLeft],[NodeTop]) VALUES ( 32,9,N'3',N'���Ĺ鵵',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'559',N'146')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 33,10,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|Text388145984_�������|Text1969560392_�ļ����|Drop1813921118_���ܵȼ�|Date1967604968_��������|Num120404421_���ķ���|Drop1958732006_�����̶�|Text1091031034_�����ֺ�|Text373621994_���ĵ�λ|Text1546743769_�����|Text512489834_�ļ�����|TextArea1453717419_��ע˵��',N'49',N'212')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 34,10,N'2',N'�쵼���',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'ȫ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin,test',N'|Text388145984_�������|Text1969560392_�ļ����|Drop1813921118_���ܵȼ�|Date1967604968_��������|Num120404421_���ķ���',N'220',N'177')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[NodeLeft],[NodeTop]) VALUES ( 35,10,N'3',N'���Ĺ鵵',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'500',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 36,11,N'1',N'�������',N'��ʼ',N'2,3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|Text1346806626_������|Text1150185447_��������|TextArea962427978_����ԭ��|Num817904409_�ɹ����',N'10',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 37,11,N'2',N'�������',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|TextArea963891607_����������|img1649848264_����ǩ�ָ���',N'295',N'43')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 38,11,N'3',N'��λ���',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|TextArea1422472289_��λ������|img844636636_��λǩ�ָ���',N'419',N'268')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[ConditionSet],[NodeLeft],[NodeTop]) VALUES ( 39,12,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|Text1346806626_������|Text1150185447_��������|Num1701505068_�������|TextArea962427978_����ԭ��',N'|Num1701505068_��������С�ڡ�1000��3',N'10',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 40,12,N'2',N'�������',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|TextArea963891607_����������|img1649848264_����ǩ�ָ���',N'249',N'109')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 41,12,N'3',N'��λ���',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|TextArea1422472289_��λ������|img844636636_��λǩ�ָ���',N'500',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 42,13,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|Text911753825_������|Date1915540870_��������|Text1267204109_��������|Text380913647_���������|TextArea1586386900_����ԭ��',N'10',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 43,13,N'2',N'�������',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|TextArea1672896422_�������|img1943727878_����ǩ��',N'236',N'99')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 44,13,N'3',N'��λ���',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|TextArea810238167_��λ���|img1735933367_��λǩ��',N'500',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 45,14,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|Text1933853913_������|Text592464421_��������|Text1772508615_������Ʒ|Num467469505_��������|TextArea87747748_����ԭ��|TextArea1009819595_��ע')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet]) VALUES ( 46,14,N'2',N'�������',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|TextArea825435841_�������|img1988775929_����ǩ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 47,15,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|Text1218528221_������|Text1585953744_���ʱ��|TextArea244731855_���ԭ��',N'10',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 48,15,N'2',N'�������',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|TextArea1243264396_�������|img795306572_����ǩ��',N'134',N'220')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 49,15,N'3',N'��λ���',N'�м��',N'4',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|TextArea1280755720_��λ���|img1395120620_��λǩ��',N'333',N'197')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 50,15,N'4',N'�������',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|TextArea177808024_�������|img1158162307_����ǩ��',N'500',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 51,16,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'�Զ�ѡ�񱾲�������',N'|Text1218528221_������|Date1718492787_��ְ����|Text27336682_���ڲ���|TextArea155156173_��ְԭ��|img1664759222_��дǩ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet]) VALUES ( 52,16,N'2',N'�������',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|TextArea1243264396_�������|img795306572_����ǩ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 53,16,N'3',N'��λ���',N'�м��',N'4',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|TextArea1280755720_��λ���|img1395120620_��λǩ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 54,16,N'4',N'�������',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|TextArea177808024_�������|img1158162307_����ǩ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 55,17,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|Text1949684091_������|Text1293928654_����ʱ��|Text512074191_������Դ|TextArea1181336905_����ԭ��|TextArea137976353_��ע')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet]) VALUES ( 56,17,N'2',N'�������',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|TextArea278331366_�������|img351451891_����ǩ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 57,18,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|Text1152799531_������|Text772937767_ʹ��ʱ��|TextArea891124515_����ԭ��|TextArea769408804_��ע',N'10',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 58,18,N'2',N'�������',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|TextArea409873814_�������|img770351501_����ǩ��',N'236',N'109')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[NodeLeft],[NodeTop]) VALUES ( 59,18,N'3',N'�鵵�洢',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'500',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 60,19,N'1',N'test1',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|Text219451277_�����Ϣ|Text1527697453_�����Ϣ')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 61,19,N'2',N'test2',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|Text1352202012_�������|Num1563388397_���ķ���|Text1527697453_�����Ϣ|Text219451277_�����Ϣ')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[NodeLeft],[NodeTop]) VALUES ( 62,20,N'1',N'tet',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'10',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[NodeLeft],[NodeTop]) VALUES ( 63,20,N'2',N'test2',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'250',N'20')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[NodeLeft],[NodeTop]) VALUES ( 64,20,N'3',N'test3',N'�м��',N'4',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'250',N'100')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[NodeLeft],[NodeTop]) VALUES ( 65,20,N'4',N'tet4',N'�м��',N'5',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'250',N'180')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[NodeLeft],[NodeTop]) VALUES ( 66,20,N'5',N'test5',N'�м��',N'6',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'250',N'260')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[NodeLeft],[NodeTop]) VALUES ( 67,20,N'6',N'test6',N'�м��',N'7',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'250',N'340')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType]) VALUES ( 68,20,N'7',N'tes7',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType]) VALUES ( 69,21,N'1',N'1',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType]) VALUES ( 70,21,N'2',N'2',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType]) VALUES ( 71,21,N'3',N'3',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 72,22,N'1',N'1',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'|List1961961965_ˮ���')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType]) VALUES ( 76,19,N'3',N'3',N'�м��',N'4',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType]) VALUES ( 77,22,N'2',N'�쵼����',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 78,26,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|Text1352202012_�������|Text29660449_�ļ����|Drop410977366_���ܵȼ�|Date1885273127_��������|Num1563388397_���ķ���|Text943000702_�����ֺ�|Text597267604_���ĵ�λ|Text1182782016_�����|Text1015936882_�ļ�����|TextArea1938017440_��ע|Drop60196270_�����̶�',N'104',N'61')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 79,26,N'2',N'�쵼���',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|Text1352202012_�������',N'272',N'250')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[NodeLeft],[NodeTop]) VALUES ( 80,26,N'3',N'���Ĺ鵵',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'559',N'146')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet],[NodeLeft],[NodeTop]) VALUES ( 81,27,N'1',N'�������',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'|Text1352202012_�������|Text29660449_�ļ����|Drop410977366_���ܵȼ�|Date1885273127_��������|Num1563388397_���ķ���|Text943000702_�����ֺ�|Text597267604_���ĵ�λ|Text1182782016_�����|Text1015936882_�ļ�����|TextArea1938017440_��ע|Drop60196270_�����̶�',N'104',N'61')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[NodeLeft],[NodeTop]) VALUES ( 82,27,N'2',N'�쵼���',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin',N'272',N'250')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[NodeLeft],[NodeTop]) VALUES ( 83,27,N'3',N'���Ĺ鵵',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��',N'559',N'146')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType]) VALUES ( 84,9,N'4',N'����',N'�м��',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType]) VALUES ( 85,9,N'11',N'���',N'�м��',N'4',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 86,23,N'1',N'����',N'��ʼ',N'2',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'�Զ�ѡ�����̷�����',N'|img488770729_ӡ��|Text521709049_��ǰ����|img603713647_ǩ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[CanWriteSet]) VALUES ( 87,23,N'2',N'����',N'�м��',N'3',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'�Զ�ѡ�񱾲�������',N'|img488770729_ӡ��|img603713647_ǩ��|Text521709049_��ǰ����')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList],[CanWriteSet]) VALUES ( 88,23,N'4',N'ǩ��',N'�м��',N'5',N'��',N'��',N'��',N'��',72,N'ȫ��ͨ����������ת',N'��Ĭ��������ɫ��ѡ��',N'��λ�쵼',N'|img488770729_ӡ��|img603713647_ǩ��|Text521709049_��ǰ����')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType]) VALUES ( 89,23,N'5',N'�鵵',N'����',N'��',N'��',N'��',N'��',72,N'һ��ͨ����������ת',N'����ʱ����ָ��')
INSERT [ERPNWorkFlowNode] ([ID],[WorkFlowID],[NodeSerils],[NodeName],[NodeAddr],[NextNode],[IFCanJump],[IFCanView],[IFCanEdit],[IFCanDel],[JieShuHours],[PSType],[SPType],[SPDefaultList]) VALUES ( 90,23,N'3',N'3��ǩ',N'�м��',N'4',N'��',N'��',N'��',N'��',72,N'ȫ��ͨ����������ת',N'��Ĭ����������ѡ��',N'admin,liyiyang,test')

SET IDENTITY_INSERT [ERPNWorkFlowNode] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNWorkFlowWT]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNWorkFlowWT]

CREATE TABLE [ERPNWorkFlowWT] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FromUser] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[Days] [int]  NULL,
[DayTime] [datetime]  NULL)

ALTER TABLE [ERPNWorkFlowWT] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNWorkFlowWT] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNWorkFlowWT] ON

INSERT [ERPNWorkFlowWT] ([ID],[FromUser]) VALUES ( 3,N'admin')

SET IDENTITY_INSERT [ERPNWorkFlowWT] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNWorkToDo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNWorkToDo]

CREATE TABLE [ERPNWorkToDo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkName] [varchar]  (200) NULL,
[FormID] [int]  NULL,
[WorkFlowID] [int]  NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL,
[FormContent] [text]  NULL,
[FuJianList] [varchar]  (5000) NULL,
[ShenPiYiJian] [text]  NULL,
[JieDianID] [int]  NULL,
[JieDianName] [varchar]  (50) NULL,
[ShenPiUserList] [varchar]  (8000) NULL,
[OKUserList] [varchar]  (8000) NULL,
[StateNow] [varchar]  (50) NULL,
[LateTime] [datetime]  NULL,
[ChaoSongUserList] [varchar]  (8000) NULL)

ALTER TABLE [ERPNWorkToDo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNWorkToDo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNWorkToDo] ON

INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 32,N'admin--���ĵǼ�����(2012-03-2)',15,10,N'admin',N'2012/3/2 14:41:22',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text388145984 disabled value=�ϼ����� alt=������� name=Text388145984></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1969560392 disabled value=BD-XJ-091 alt=�ļ���� name=Text1969560392></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop1813921118 disabled name=Drop1813921118 alt="���ܵȼ�"> <OPTION value=����>����</OPTION><OPTION selected value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1967604968 disabled onclick=setday(this) value=2012-03-03 alt=�������� name=Date1967604968></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num120404421 disabled onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" value=2 alt=���ķ��� name=Num120404421></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop1958732006 disabled name=Drop1958732006 alt="�����̶�"> <OPTION value=����>����</OPTION><OPTION selected value=�Ӽ�>�Ӽ�</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1091031034 disabled value=�۶�BD-FL alt=�����ֺ� name=Text1091031034></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 316px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text373621994 disabled value=����۶��Ƽ����޹�˾ alt=���ĵ�λ size=15 name=Text373621994></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1546743769 disabled value=�ϼ����Ĺ淶���ڲ����µ�ͳһ�Ա�׼ alt=����� size=35 name=Text1546743769></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text512489834 disabled value=�۶����¹淶�����ı�׼���Լ��ڲ�����ִ��ϸ�� alt=�ļ����� size=17 name=Text512489834></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 598px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 62px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1453717419 disabled cols=36 name=TextArea1453717419 alt="��ע˵��">�Ѿ���ȷҪ���λԱ������ִ�С�</TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012-03-2 14:55:32&nbsp;&nbsp;</font><BR>�ļ���д���ݿ�ȡ������ͬ�⡣<hr><font color=#0000FF>admin&nbsp;&nbsp;2012-03-2 14:54:22&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr>',35,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/3/5 14:55:32')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 37,N'admin--Ա���������(2012-03-2)',26,15,N'admin',N'2012/3/2 14:46:45',N'<font color=#0000FF>admin&nbsp;&nbsp;2014/2/19 9:47:20&nbsp;&nbsp;</font><BR>�ú���Ϣ��<hr><font color=#0000FF>admin&nbsp;&nbsp;2012-03-2 14:59:48&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr><font color=#0000FF>admin&nbsp;&nbsp;2012-03-2 14:57:42&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr>',50,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2014/2/22 9:47:21')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 40,N'admin--������������(2012-03-2)',24,18,N'admin',N'2012/3/2 14:50:01',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾�������뵥</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1152799531 disabled value=admin readOnly alt=������ name=Text1152799531></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>ʹ��ʱ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165 colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 308px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text772937767 disabled value=9��---10�� alt=ʹ��ʱ�� size=6 name=Text772937767></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>����ԭ��&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 564px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 100px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea891124515 disabled cols=11 name=TextArea891124515 alt="����ԭ��">ȥ������Ŀ�ͻ��ֳ�������������⣬ϣ���ɳ����ء�</TEXTAREA></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������&nbsp;</FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><P><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 564px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 91px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea409873814 disabled rows=1 cols=51 name=TextArea409873814 alt="�������">���ž������ۺ�ͬ��ô����룬�´�����д��ϸԭ��</TEXTAREA>&nbsp;</P><P>ǩ�֣����£���<IMG style="VISIBILITY: visible" id=img770351501 class=HerCss disabled onclick=selectyinzhang(img770351501); name=img770351501 alt=����ǩ�� src="../UploadFile/634661290640625000.jpg"></P></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 566px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 65px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea769408804 disabled rows=1 cols=54 name=TextArea769408804 alt="��ע">�븽��˾����</TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012-03-2 14:56:59&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr><font color=#0000FF>admin&nbsp;&nbsp;2012-03-2 14:56:41&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr>',59,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/3/5 14:56:59')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 52,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 11:34:45',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=tsdf��˾���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=tsdf></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 11:35:07&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 11:35:08')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 53,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 12:46:17',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=tesr></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=sr></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 13:21:16&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 13:21:17')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 54,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 13:01:09',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=��˾����></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=sdf2323></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 13:07:29&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 13:07:30')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 55,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 13:09:36',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=tess��˾></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=3423></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 13:10:05&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 13:10:05')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 56,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 13:11:21',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=sdf����></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=sdf��˾></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 13:11:45&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 13:12:20')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 57,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 13:14:28',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=�Ե�ss></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=ˮ���se232></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 13:14:54&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 13:14:54')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 58,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 13:15:57',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=sdft343></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=s33></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 13:16:14&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 13:17:18')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 59,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 13:17:37',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=sd��˾></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=sd2323></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 13:17:56&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 13:17:56')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 60,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 13:18:52',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=sdf23></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=sdfr3></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 13:19:07&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 13:19:40')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 61,N'admin--���ĵǼ�����(2012/10/7)',28,19,N'admin',N'2012/10/7 13:21:39',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 name=Text1352202012 alt=�������><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) name=Text1527697453 alt=�����Ϣ value=sd1></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled name=Text29660449 alt=�ļ����><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) name=Text219451277 alt=�����Ϣ value=sd1></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) name=Date1885273127 alt=��������></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name=Num1563388397 alt=���ķ���></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled name=Text943000702 alt=�����ֺ�></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled name=Text597267604 alt=���ĵ�λ size=8></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled name=Text1182782016 alt=����� size=27></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled name=Text1015936882 alt=�ļ����� size=52><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled cols=26 rows=1 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2012/10/7 13:21:51&nbsp;&nbsp;</font><BR><hr>',61,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2012/10/10 13:21:51')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 73,N'admin--���ĵǼ�����(2014/3/6)',28,19,N'admin',N'2014/3/6 10:13:53',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=Text1352202012 alt=������� name=Text1352202012><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=Text1527697453 class=nvarchar(100) alt=�����Ϣ name=Text1527697453></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=Text29660449 disabled alt=�ļ���� name=Text29660449><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=Text219451277 class=nvarchar(100) alt=�����Ϣ name=Text219451277></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=Date1885273127 disabled onclick="" alt=�������� name=Date1885273127></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" ondragenter="" id=Num1563388397 onkeypress="" onpaste="" alt=���ķ��� name=Num1563388397></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=Text943000702 disabled alt=�����ֺ� name=Text943000702></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; WIDTH: 298px; BORDER-TOP-WIDTH: 0px; HEIGHT: 15px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=Text597267604 disabled alt=���ĵ�λ size=8 name=Text597267604></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; WIDTH: 582px; BORDER-TOP-WIDTH: 0px; HEIGHT: 15px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=Text1182782016 disabled alt=����� size=27 name=Text1182782016></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; WIDTH: 582px; BORDER-TOP-WIDTH: 0px; HEIGHT: 15px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=Text1015936882 disabled alt=�ļ����� size=52 name=Text1015936882><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick="" name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="BORDER-BOTTOM: rgb(0,0,0) 1px solid; BORDER-RIGHT-WIDTH: 0px; WIDTH: 584px; BORDER-TOP-WIDTH: 0px; HEIGHT: 44px; VISIBILITY: visible; BORDER-LEFT-WIDTH: 0px" id=TextArea1938017440 disabled rows=1 cols=26 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2014/3/20 17:39:55&nbsp;&nbsp;</font><BR><hr>',61,N'test2',N'������',N'Ĭ��',N'�ѱ�����',N'2014/3/9 10:13:53')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 74,N'admin--���ĵǼ�����(2014/3/6)',15,10,N'admin',N'2014/3/6 11:26:45',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text388145984 value=mlkl alt=������� name=Text388145984></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1969560392 value=lklkl alt=�ļ���� name=Text1969560392></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop1813921118 name=Drop1813921118 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1967604968 onclick=setday(this) alt=�������� name=Date1967604968></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num120404421 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" alt=���ķ��� name=Num120404421></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop1958732006 disabled name=Drop1958732006 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1091031034 disabled alt=�����ֺ� name=Text1091031034></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 316px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text373621994 disabled alt=���ĵ�λ size=15 name=Text373621994></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1546743769 disabled alt=����� size=35 name=Text1546743769></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text512489834 disabled alt=�ļ����� size=17 name=Text512489834></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 598px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 62px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1453717419 disabled cols=36 name=TextArea1453717419 alt="��ע˵��">kjlkjjk;jlkjjlkjlkjkljlkljlkjjlkj''jlkjlkj''jjljjjkljlkjlkjlk</TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2014/3/20 17:39:47&nbsp;&nbsp;</font><BR><hr><font color=#0000FF>admin&nbsp;&nbsp;2014/3/20 14:15:11&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr>',34,N'�쵼���',N'����',N'Ĭ��,admin',N'�ѱ�����',N'2014/3/9 11:26:45')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 75,N'admin--���ĵǼ�����(2014/3/20)',28,19,N'admin',N'2014/3/20 15:25:33',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1352202012 alt=������� name=Text1352202012><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1527697453 class=nvarchar(100) alt=�����Ϣ name=Text1527697453></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text29660449 disabled alt=�ļ���� name=Text29660449><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text219451277 class=nvarchar(100) alt=�����Ϣ name=Text219451277></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop410977366 disabled name=Drop410977366 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1885273127 disabled onclick=setday(this) alt=�������� name=Date1885273127></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num1563388397 onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" alt=���ķ��� name=Num1563388397></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop60196270 disabled name=Drop60196270 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=��ͨ>��ͨ</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text943000702 disabled alt=�����ֺ� name=Text943000702></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 298px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text597267604 disabled alt=���ĵ�λ size=8 name=Text597267604></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1182782016 disabled alt=����� size=27 name=Text1182782016></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 582px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1015936882 disabled alt=�ļ����� size=52 name=Text1015936882><IMG style="VISIBILITY: visible" id=img1627787205 class=HerCss disabled onclick=selectShouXie(img1627787205); name=img1627787205 alt=res src="http://localhost:5656/images/Button/InsertQianMing.gif"></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 584px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 44px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1938017440 disabled rows=1 cols=26 name=TextArea1938017440 alt="��ע"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'<font color=#0000FF>admin&nbsp;&nbsp;2014/3/20 17:39:31&nbsp;&nbsp;</font><BR><hr>',61,N'test2',N'����',N'Ĭ��',N'�ѱ�����',N'2014/3/23 15:25:33')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[FuJianList],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 76,N'admin--���ĵǼ�����(2014/3/20)',15,10,N'admin',N'2014/3/20 17:17:56',N'<P align=center><STRONG><FONT color=#ff0000 size=5></FONT></STRONG>&nbsp;</P><P align=center><STRONG><FONT color=#ff0000 size=5>�۶��Ƽ����޹�˾���ĵǼǵ�</FONT></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text388145984 disabled alt=������� name=Text388145984></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1969560392 disabled alt=�ļ���� name=Text1969560392></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop1813921118 disabled name=Drop1813921118 alt="���ܵȼ�"> <OPTION selected value=����>����</OPTION><OPTION value=����>����</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�������� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1967604968 disabled onclick=setday(this) alt=�������� name=Date1967604968></SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; IME-MODE: disabled; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" ondragenter="return false" id=Num120404421 disabled onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" alt=���ķ��� name=Num120404421></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT style="VISIBILITY: visible" id=Drop1958732006 disabled name=Drop1958732006 alt="�����̶�"> <OPTION selected value=����>����</OPTION><OPTION value=�Ӽ�>�Ӽ�</OPTION><OPTION value=һ��>һ��</OPTION></SELECT></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1091031034 disabled alt=�����ֺ� name=Text1091031034></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 316px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text373621994 disabled alt=���ĵ�λ size=15 name=Text373621994></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><SPAN><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1546743769 disabled alt=����� size=35 name=Text1546743769></SPAN></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" colSpan=5><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 596px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text512489834 disabled alt=�ļ����� size=17 name=Text512489834></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 598px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 62px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1453717419 disabled cols=36 name=TextArea1453717419 alt="��ע˵��"></TEXTAREA></TD></TR></TBODY></TABLE></DIV>',N'635309325318477599.doc',N'<font color=#0000FF>����&nbsp;&nbsp;2014/3/20 17:26:46&nbsp;&nbsp;</font><BR><hr><font color=#0000FF>test&nbsp;&nbsp;2014/3/20 17:24:06&nbsp;&nbsp;</font><BR>ͨ��<hr><font color=#0000FF>����&nbsp;&nbsp;2014/3/20 17:22:07&nbsp;&nbsp;</font><BR>ͬ��<hr>',35,N'����',N'�����Ѱ��',N'Ĭ��',N'��������',N'2014/3/23 17:26:48')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime]) VALUES ( 89,N'admin--������������(2014/3/27)',19,13,N'admin',N'2014/3/27 22:36:51',N'<P style="TEXT-ALIGN: center"><STRONG><SPAN style="COLOR: #ff0000; FONT-SIZE: 24px"></SPAN></STRONG></P><P style="TEXT-ALIGN: center"><STRONG><SPAN style="COLOR: #ff0000; FONT-SIZE: 24px">�Ƽ����޹�˾�������뵥</SPAN></STRONG></P><DIV align=center><TABLE border=1 cellSpacing=0 borderColorLight=#ff0000 borderColorDark=#ffffff cellPadding=6 width=730 bgColor=#ffffff align=center><TBODY><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 height=30 width=90><SPAN style="COLOR: #ff0000">��&nbsp;��&nbsp;��&nbsp;</SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text911753825 name=Text911753825 readOnly alt=������ value=admin></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=60><SPAN style="COLOR: #ff0000">��������&nbsp;</SPAN></TD><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" width=165><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Date1915540870 onclick=setday(this) name=Date1915540870 alt=�������� value=2014-03-29></TD></TR><TR><TD style="WORD-WRAP: break-word; HEIGHT: 20px; FONT-SIZE: 12px; WORD-BREAK: break-all" bgColor=#fffff1 width=90><SPAN style="COLOR: #ff0000">��������&nbsp;</SPAN></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 614px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text1267204109 name=Text1267204109 alt=�������� value=OA�������� size=30></TD></TR><TR><TD><SPAN style="COLOR: #ff0000">���������&nbsp;</SPAN></TD><TD colSpan=3><INPUT style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; WIDTH: 614px; HEIGHT: 15px; VISIBILITY: visible; BORDER-TOP: 0px; BORDER-RIGHT: 0px" id=Text380913647 onclick=selectUser(Text380913647); name=Text380913647 readOnly alt=��������� value=����,������ size=17></TD></TR><TR><TD><SPAN style="COLOR: #ff0000">����ԭ��</SPAN></TD><TD colSpan=3>&#8203;</TD></TR><TR><TD><SPAN style="COLOR: #ff0000">�������</SPAN></TD><TD colSpan=3><P><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 616px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 58px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea1672896422 disabled cols=47 name=TextArea1672896422 alt="�������"></TEXTAREA></P><P>ǩ�֣����£���<IMG style="VISIBILITY: visible" id=img1943727878 class=HerCss disabled onclick=selectyinzhang(img1943727878); name=img1943727878 alt=����ǩ�� src="../images/Button/InsertYinZhang.gif"></P></TD></TR><TR><TD><SPAN style="COLOR: #ff0000">��λ���</SPAN></TD><TD colSpan=3><P><TEXTAREA style="SCROLLBAR-ARROW-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; WIDTH: 616px; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 65px; VISIBILITY: visible; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; SCROLLBAR-SHADOW-COLOR: #d8d8d8; BORDER-TOP: 0px; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-RIGHT: 0px; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8" id=TextArea810238167 disabled cols=13 name=TextArea810238167 alt="��λ���"></TEXTAREA></P><P>ǩ�֣����£���<IMG style="VISIBILITY: visible" id=img1735933367 class=HerCss disabled onclick=selectyinzhang(img1735933367); name=img1735933367 alt=��λǩ�� src="../images/Button/InsertYinZhang.gif"></P></TD></TR></TBODY></TABLE></DIV>',43,N'�������',N'admin',N'Ĭ��',N'���ڰ���',N'2014/3/30 22:36:51')
INSERT [ERPNWorkToDo] ([ID],[WorkName],[FormID],[WorkFlowID],[UserName],[TimeStr],[FormContent],[JieDianID],[JieDianName],[ShenPiUserList],[OKUserList],[StateNow],[LateTime],[ChaoSongUserList]) VALUES ( 90,N'admin--�ɹ���������(2014/4/5)',25,11,N'admin',N'2014/4/5 21:16:50',N'<p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px"></span></strong></p><p style="text-align:center"><strong><span style="color:#ff0000;font-size:24px">�Ƽ����޹�˾�ɹ����뵥</span></strong></p><div align="center"><table border="1" cellspacing="0" bordercolorlight="#ff0000" bordercolordark="#ffffff" cellpadding="6" width="730" bgcolor="#ffffff" align="center"><tbody><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">��&nbsp;��&nbsp;��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom-color: rgb(0, 0, 0); border-width: 0px 0px 1px; border-bottom-style: solid; width: 96px; height: 15px; visibility: visible;" id="Text1346806626" name="Text1346806626" readonly="readonly" alt="������" value="admin" size="5"></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="80"><span style="color:#ff0000">��������</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="165"><input style="border-bottom-color: rgb(0, 0, 0); border-width: 0px 0px 1px; border-bottom-style: solid; width: 100px; height: 15px; visibility: visible;" id="Text1150185447" name="Text1150185447" readonly="readonly" alt="��������" value="2014/4/5" size="8"></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" width="60"><span style="color:#ff0000">�ɹ����&nbsp;</span></td><td><input style="border-bottom-color: rgb(0, 0, 0); border-width: 0px 0px 1px; border-bottom-style: solid; width: 62px; height: 15px; visibility: visible;" ondragenter="return false" id="Num817904409" onkeypress="var k=event.keyCode; return (k&gt;=48&amp;&amp;k&lt;=57)||k==46" onpaste="return !/D/.test(clipboardData.getData(''text''))" name="Num817904409" alt="�ɹ����" size="1">Ԫ</td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">����ԭ��&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5">&#8203;</td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" height="30" width="90"><span style="color:#ff0000">�������&nbsp;</span></td><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" colspan="5"><p><textarea style="border-bottom-color: rgb(0, 0, 0); border-width: 0px 0px 1px; border-bottom-style: solid; width: 608px; height: 88px; visibility: visible;" id="TextArea963891607" cols="1" rows="1" name="TextArea963891607" alt="����������" disabled=""></textarea></p><p>ǩ�֣����£���<img id="img1649848264" class="HerCss" onclick="selectyinzhang(img1649848264);" name="img1649848264" alt="����ǩ�ָ���" src="../images/Button/InsertYinZhang.gif" style="visibility: visible;"></p></td></tr><tr><td style="word-wrap:break-word;height:20px;font-size:12px;word-break:break-all" bgcolor="#fffff1" width="90"><span style="color:#ff0000">��λ���&nbsp;</span></td><td colspan="5"><p><textarea style="border-bottom-color: rgb(0, 0, 0); border-width: 0px 0px 1px; border-bottom-style: solid; width: 609px; height: 99px; visibility: visible;" id="TextArea1422472289" cols="9" rows="1" name="TextArea1422472289" alt="��λ������" disabled=""></textarea></p><p>ǩ�֣����£���<img id="img844636636" class="HerCss" onclick="selectyinzhang(img844636636);" name="img844636636" alt="��λǩ�ָ���" src="../images/Button/InsertYinZhang.gif" style="visibility: visible;"></p></td></tr></tbody></table></div>',37,N'�������',N'admin',N'Ĭ��',N'���ڰ���',N'2014/4/8 21:16:50',N'admin')

SET IDENTITY_INSERT [ERPNWorkToDo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPOffice]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPOffice]

CREATE TABLE [ERPOffice] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[OfficeName] [varchar]  (50) NULL,
[MiaoShu] [varchar]  (5000) NULL,
[FuJianStr] [varchar]  (500) NULL,
[TypeStr] [varchar]  (100) NULL,
[Serils] [varchar]  (100) NULL,
[DanWei] [varchar]  (50) NULL,
[DanJia] [varchar]  (50) NULL,
[GongYingShang] [varchar]  (100) NULL,
[MinNum] [varchar]  (50) NULL,
[MaxNum] [varchar]  (50) NULL,
[NowNum] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPOffice] WITH NOCHECK ADD  CONSTRAINT [PK_ERPOffice] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPOffice] ON

INSERT [ERPOffice] ([ID],[OfficeName],[MiaoShu],[TypeStr],[Serils],[DanWei],[DanJia],[GongYingShang],[MinNum],[MaxNum],[NowNum],[UserName],[TimeStr]) VALUES ( 4,N'�칫��',N'Ա���칫ʹ�õİ칫������������',N'�����׺�',N'BG-001',N'��',N'800',N'����Ѻ�ľ�ճ�',N'5',N'10',N'8',N'admin',N'2012/3/2 9:55:18')
INSERT [ERPOffice] ([ID],[OfficeName],[MiaoShu],[TypeStr],[Serils],[DanWei],[DanJia],[GongYingShang],[MinNum],[MaxNum],[NowNum],[UserName],[TimeStr]) VALUES ( 5,N'��ӡֽ��',N'���ڰ칫���ڲ����ִ�ӡ',N'�����׺�',N'DY-008',N'��',N'25',N'�����Ļ�̩���ľ����쳧',N'5',N'20',N'15',N'admin',N'2012/3/2 10:00:28')

SET IDENTITY_INSERT [ERPOffice] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPPeiXun]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPPeiXun]

CREATE TABLE [ERPPeiXun] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[PeiXunName] [varchar]  (50) NULL,
[PeiXunUser] [varchar]  (50) NULL,
[CanYuUser] [varchar]  (8000) NULL,
[StartDate] [varchar]  (50) NULL,
[EndDate] [varchar]  (50) NULL,
[PeiXunMuDi] [varchar]  (5000) NULL,
[PeiXunNeiRong] [varchar]  (5000) NULL,
[XiaoGuo] [varchar]  (5000) NULL,
[BackInfo] [varchar]  (5000) NULL,
[FuJianList] [varchar]  (5000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPPeiXun] WITH NOCHECK ADD  CONSTRAINT [PK_ERPPeiXun] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPPeiXun] ON

INSERT [ERPPeiXun] ([ID],[PeiXunName],[PeiXunUser],[CanYuUser],[StartDate],[EndDate],[PeiXunMuDi],[PeiXunNeiRong],[XiaoGuo],[BackInfo],[UserName],[TimeStr]) VALUES ( 2,N'��ҵӪ����Ʒ��ս�Լƻ�--�۶��Ƽ�',N'��Ϊ��',N'����,������,admin,��ȫʤ',N'2012-3-1',N'2012-3-10',N'�˽���ҵӪ����Ʒ��ս�Լƻ���',N'��ҵӪ����Ʒ��ս�Լƻ�����ϸ̽�ָ������ݡ�',N'��ѵ���Ѵﵽ�ϸ�Ҫ�������ѵ��',N'��ҵӪ����Ʒ��ս�Լƻ�',N'admin',N'2012/3/2 10:03:40')

SET IDENTITY_INSERT [ERPPeiXun] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPPeiXunRiJi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPPeiXunRiJi]

CREATE TABLE [ERPPeiXunRiJi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[PeiXunName] [varchar]  (50) NULL,
[RiJiTitle] [varchar]  (50) NULL,
[RiJiDate] [varchar]  (50) NULL,
[RiJiContent] [text]  NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPPeiXunRiJi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPPeiXunRiJi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPPeiXunRiJi] ON

INSERT [ERPPeiXunRiJi] ([ID],[PeiXunName],[RiJiTitle],[RiJiDate],[RiJiContent],[UserName],[TimeStr]) VALUES ( 2,N'��ҵӪ����Ʒ��ս�Լƻ�--�۶��Ƽ�',N'��ѵ��ʼ��¼',N'2012-3-1',N'��ѵ�������ʼ�����еĺ�˳����ϣ���ܼ������֡�',N'admin',N'2012/3/2 10:04:48')
INSERT [ERPPeiXunRiJi] ([ID],[PeiXunName],[RiJiTitle],[RiJiDate],[RiJiContent],[UserName],[TimeStr]) VALUES ( 3,N'��ҵӪ����Ʒ��ս�Լƻ�--�۶��Ƽ�',N'��ѵ���ڼ�¼',N'2012-3-5',N'�������һ��ʱ���ˣ�Ч����������һ����Ժܸߡ�',N'admin',N'2012/3/2 10:05:19')
INSERT [ERPPeiXunRiJi] ([ID],[PeiXunName],[RiJiTitle],[RiJiDate],[RiJiContent],[UserName],[TimeStr]) VALUES ( 4,N'��ҵӪ����Ʒ��ս�Լƻ�--�۶��Ƽ�',N'��ѵ��ϼ�¼',N'2012-3-10',N'������������ѵ��ɣ�Ч���ܺá�',N'admin',N'2012/3/2 10:06:00')

SET IDENTITY_INSERT [ERPPeiXunRiJi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPPeiXunXiaoGuo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPPeiXunXiaoGuo]

CREATE TABLE [ERPPeiXunXiaoGuo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[PeiXunName] [varchar]  (50) NULL,
[FanKuiZhuTi] [varchar]  (50) NULL,
[XiaoGuoFanKui] [varchar]  (5000) NULL,
[ZongTiJieLun] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPPeiXunXiaoGuo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPPeiXunXiaoGuo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPPeiXunXiaoGuo] ON

INSERT [ERPPeiXunXiaoGuo] ([ID],[PeiXunName],[FanKuiZhuTi],[XiaoGuoFanKui],[ZongTiJieLun],[UserName],[TimeStr]) VALUES ( 2,N'��ҵӪ����Ʒ��ս�Լƻ�--�۶��Ƽ�',N'���ڱ�����ѵ��ʵ��Ч���ܽ�',N'�ӵ���ѵ�˸�����ķ�ӳ��������ѵ������ɵĺܺã�Ч������ϣ���´μ������֡�',N'�ǳ���',N'admin',N'2012/3/2 10:07:05')

SET IDENTITY_INSERT [ERPPeiXunXiaoGuo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPPinShen]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPPinShen]

CREATE TABLE [ERPPinShen] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProjectName] [varchar]  (200) NULL,
[ProjectSerils] [varchar]  (50) NULL,
[PingShenTime] [varchar]  (50) NULL,
[PingShenJieGuo] [varchar]  (8000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[BachInfo] [text]  NULL)

ALTER TABLE [ERPPinShen] WITH NOCHECK ADD  CONSTRAINT [PK_ERPPinShen] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPPinShen] ON

INSERT [ERPPinShen] ([ID],[ProjectName],[ProjectSerils],[PingShenTime],[PingShenJieGuo],[UserName],[TimeStr]) VALUES ( 4,N'XXXչ',N'XM001',N'2013-4-10',N'ͨ��',N'admin',N'2013/4/15 23:25:31')

SET IDENTITY_INSERT [ERPPinShen] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPProduct]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPProduct]

CREATE TABLE [ERPProduct] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProductName] [varchar]  (50) NULL,
[ProductSerils] [varchar]  (50) NULL,
[GongYingShang] [varchar]  (50) NULL,
[ProductType] [varchar]  (50) NULL,
[XingHao] [varchar]  (50) NULL,
[DanWei] [varchar]  (50) NULL,
[ChengBen] [varchar]  (50) NULL,
[ChuShou] [varchar]  (50) NULL,
[RuKuSum] [numeric]  (18,2) NULL,
[ChuKuSum] [numeric]  (18,2) NULL,
[NowKuCun] [numeric]  (18,2) NULL,
[KuCunBaoJing] [numeric]  (18,2) NULL,
[CunChuWeiZhi] [varchar]  (50) NULL,
[ChanPinMiaoShu] [varchar]  (5000) NULL,
[BackInfo] [varchar]  (5000) NULL,
[ProductSize] [varchar]  (50) NULL,
[Performance] [varchar]  (50) NULL,
[Coating] [varchar]  (50) NULL,
[SurfaceTreatment] [varchar]  (50) NULL,
[MagnetizingDirection] [varchar]  (50) NULL,
[Tolerance] [varchar]  (50) NULL,
[IsContainingTax] [int]  NULL)

ALTER TABLE [ERPProduct] WITH NOCHECK ADD  CONSTRAINT [PK_ERPProduct] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPProduct] ON

INSERT [ERPProduct] ([ID],[ProductName],[ProductSerils],[GongYingShang],[ProductType],[XingHao],[DanWei],[ChengBen],[ChuShou],[RuKuSum],[ChuKuSum],[NowKuCun],[KuCunBaoJing],[CunChuWeiZhi],[IsContainingTax]) VALUES ( 5,N'OA�칫ϵͳV7.2.1-��ҵͨ�ð�',N'BD-OA-008',N'����۶��Ƽ����޹�˾',N'������Ʒ',N'��ҵͨ�ð�',N'��',N'28000',N'32000',1003.00,1.00,1002.00,10.00,N'A��702',0)
INSERT [ERPProduct] ([ID],[ProductName],[ProductSerils],[GongYingShang],[ProductType],[XingHao],[DanWei],[ChengBen],[ChuShou],[RuKuSum],[ChuKuSum],[NowKuCun],[KuCunBaoJing],[CunChuWeiZhi],[IsContainingTax]) VALUES ( 6,N'����������',N'BD-CP-001',N'�������',N'Ӳ����Ʒ',N'��������',N'̨',N'30000',N'35000',107.00,1.00,106.00,10.00,N'��׼�ⷿ',0)

SET IDENTITY_INSERT [ERPProduct] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPProject]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPProject]

CREATE TABLE [ERPProject] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProjectName] [varchar]  (200) NULL,
[ProjectSerils] [varchar]  (50) NULL,
[SuoShuKeHu] [varchar]  (200) NULL,
[YuJiChengJiaoRiQi] [varchar]  (50) NULL,
[TiXingDate] [varchar]  (5000) NULL,
[FuZeRen] [varchar]  (50) NULL,
[XiangMuJinE] [varchar]  (200) NULL,
[XiangMuYuSuan] [varchar]  (200) NULL,
[XiangMuDaXiao] [varchar]  (50) NULL,
[PeiHeRenList] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[HeTongAndFuJian] [varchar]  (5000) NULL,
[BackInfo] [varchar]  (5000) NULL)

ALTER TABLE [ERPProject] WITH NOCHECK ADD  CONSTRAINT [PK_ERPProject] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPProject] ON

INSERT [ERPProject] ([ID],[ProjectName],[ProjectSerils],[SuoShuKeHu],[YuJiChengJiaoRiQi],[FuZeRen],[XiangMuYuSuan],[XiangMuDaXiao],[UserName],[TimeStr],[HeTongAndFuJian]) VALUES ( 3,N'XXXչ',N'XM001',N'����������Ź�ҵ��Ʒ���޹�˾',N'2013-4-9',N'admin',N'110',N'�Ϻ�',N'admin',N'2013/4/15 23:23:21',N'635016649997121196.jpg')
INSERT [ERPProject] ([ID],[ProjectName],[ProjectSerils],[SuoShuKeHu],[YuJiChengJiaoRiQi],[TiXingDate],[FuZeRen],[XiangMuJinE],[XiangMuYuSuan],[XiangMuDaXiao],[PeiHeRenList],[UserName],[TimeStr]) VALUES ( 4,N'5rt5rt',N'rtrtrt',N'rtrtrt',N'rttrrt',N'rtrt',N'rtrtrt',N'rtrt',N'rtrt',N'rtrt',N'rtrt',N'admin',N'2014/1/16 11:44:30')

SET IDENTITY_INSERT [ERPProject] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPRecive]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPRecive]

CREATE TABLE [ERPRecive] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[HeTongName] [varchar]  (200) NULL,
[QianYueKeHu] [varchar]  (200) NULL,
[DaoKuanDate] [datetime]  NULL,
[TiXingDate] [datetime]  NULL,
[CreateTime] [datetime]  NULL DEFAULT (getdate()),
[CreateUser] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[NowState] [varchar]  (50) NULL,
[HTJE] [nvarchar]  (30) NULL,
[SFDK] [nvarchar]  (20) NULL DEFAULT (0))

ALTER TABLE [ERPRecive] WITH NOCHECK ADD  CONSTRAINT [PK_ERPRecive] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPRecive] ON

INSERT [ERPRecive] ([ID],[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[NowState],[HTJE],[SFDK]) VALUES ( 5,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'����������Ź�ҵ��Ʒ���޹�˾',N'2013/1/24 0:00:00',N'2013/1/9 0:00:00',N'2013/1/5 10:09:13',N'admin',N'S',N'2323',N'��')
INSERT [ERPRecive] ([ID],[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[NowState],[HTJE],[SFDK]) VALUES ( 6,N'ˮ����Ե�',N'����������Ź�ҵ��Ʒ���޹�˾',N'2013/1/9 0:00:00',N'2013/1/17 0:00:00',N'2013/1/7 13:59:19',N'admin',N'S',N'12',N'��')
INSERT [ERPRecive] ([ID],[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[BackInfo],[NowState],[HTJE],[SFDK]) VALUES ( 7,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'����������Ź�ҵ��Ʒ���޹�˾',N'2013/4/8 0:00:00',N'2013/4/23 0:00:00',N'2013/4/14 21:25:49',N'admin',N'sdf',N'F',N'1231',N'��')
INSERT [ERPRecive] ([ID],[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[NowState],[HTJE],[SFDK]) VALUES ( 8,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'����������Ź�ҵ��Ʒ���޹�˾',N'2013/4/8 0:00:00',N'2013/4/15 0:00:00',N'2013/4/14 21:28:33',N'admin',N'S',N'123',N'��')

SET IDENTITY_INSERT [ERPRecive] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPRedHead]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPRedHead]

CREATE TABLE [ERPRedHead] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileName] [varchar]  (200) NULL,
[FilePath] [varchar]  (100) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPRedHead] WITH NOCHECK ADD  CONSTRAINT [PK_ERPRedHead] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPRedHead] ON

INSERT [ERPRedHead] ([ID],[FileName],[FilePath],[UserName],[TimeStr]) VALUES ( 7,N'Ĭ�Ϻ�ͷ�ļ�ʾ��',N'634661238427343750.doc',N'admin',N'2012/2/29 14:50:42')

SET IDENTITY_INSERT [ERPRedHead] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPReimburse]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPReimburse]

CREATE TABLE [ERPReimburse] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[HeTongName] [varchar]  (200) NULL,
[QianYueKeHu] [varchar]  (200) NULL,
[ReimburseContent] [varchar]  (1000) NULL,
[ApplyTime] [varchar]  (30) NULL,
[Memo] [varchar]  (200) NULL)

ALTER TABLE [ERPReimburse] WITH NOCHECK ADD  CONSTRAINT [PK_ERPReimburse] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPReimburse] ON

INSERT [ERPReimburse] ([ID],[UserName],[HeTongName],[QianYueKeHu],[ReimburseContent],[ApplyTime]) VALUES ( 1,N'admin',N'����Ϣ���ͻ�OA�ɹ���ͬ',N'����������Ź�ҵ��Ʒ���޹�˾',N'sdf',N'2012-12-11')

SET IDENTITY_INSERT [ERPReimburse] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPRenShiHeTong]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPRenShiHeTong]

CREATE TABLE [ERPRenShiHeTong] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[HeTongUser] [varchar]  (50) NULL,
[NowState] [varchar]  (50) NULL,
[Serils] [varchar]  (50) NULL,
[TypeStr] [varchar]  (50) NULL,
[JingYe] [varchar]  (50) NULL,
[BaoMiXieYi] [varchar]  (50) NULL,
[QianYueDate] [varchar]  (50) NULL,
[ManYueDate] [varchar]  (50) NULL,
[JianZhengJiGuan] [varchar]  (50) NULL,
[JianZhengDate] [varchar]  (50) NULL,
[WeiYueZeRen] [varchar]  (5000) NULL,
[BackInfo] [varchar]  (5000) NULL,
[FuJianList] [varchar]  (5000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPRenShiHeTong] WITH NOCHECK ADD  CONSTRAINT [PK_ERPRenShiHeTong] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPRenShiHeTong] ON

INSERT [ERPRenShiHeTong] ([ID],[HeTongUser],[NowState],[Serils],[TypeStr],[JingYe],[BaoMiXieYi],[QianYueDate],[ManYueDate],[JianZhengJiGuan],[JianZhengDate],[WeiYueZeRen],[FuJianList],[UserName],[TimeStr]) VALUES ( 3,N'��Ϊ��',N'ִ����',N'BD-HT-0012',N'ְ���ͬ',N'��',N'��',N'2012-3-1',N'2013-3-1',N'�Ͷ���',N'2012-3-1',N'��ͬ����ϸ��ע',N'634662873838593750.doc',N'admin',N'2012/3/2 12:16:25')

SET IDENTITY_INSERT [ERPRenShiHeTong] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPReport]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPReport]

CREATE TABLE [ERPReport] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ReportName] [varchar]  (100) NULL,
[ReportSql] [varchar]  (8000) NULL,
[BackInfo] [varchar]  (5000) NULL,
[TypeID] [int]  NULL,
[UserListOK] [varchar]  (8000) NULL,
[DepListOK] [varchar]  (8000) NULL,
[JiaoSeListOK] [varchar]  (8000) NULL,
[PaiXuStr] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL)

ALTER TABLE [ERPReport] WITH NOCHECK ADD  CONSTRAINT [PK_ERPReport] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPReport] ON

INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 4,N'Ա���ճ̰��ű���',N'select ID as ��ˮ��,UserName as �û���,TitleStr as �ճ̰�������,TimeStart as ��ʼʱ��,TimeEnd as ����ʱ��,TimeTiXing as ��������,TypeStr as �ճ����,GongXiangWho as ״̬ from ERPAnPai',N'����',2,N'ȫ��',N'A',N'admin',N'2012/3/2 12:41:10')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 5,N'ͼ����Ϣ����',N'select ID as ��ˮ��,BookName as ͼ������,BookSerils as ͼ�����,SuoShuBuMen as ��������,BookType as ͼ�����,Auother as ����,ISBN as ISBN��,CoperStr as ������,ChuBanDate as ��������,CunFangDian as ���λ��,ShuLiang as ����,JiaGe as �۸�,NeiRong as ���ݼ��,NowState as ��ǰ״̬ from ERPBook',N'����',2,N'ȫ��',N'B',N'admin',N'2012/3/2 12:43:39')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 6,N'ͼ����ĵǼ���Ϣ����',N'select ID as ��ˮ��,BookName as ͼ������,JieShuDate as ��������,GuiHuanDate as �黹����,JieHuanState as �軹״̬,BackInfo as ��ע˵��,UserName as ¼����,TimeStr as ¼��ʱ�� from ERPBookJieHuan',N'����',2,N'ȫ��',N'C',N'admin',N'2012/3/2 12:44:22')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 7,N'������Ϣ����',N'select ID as ��ˮ��,BuMenName as ��������,ChargeMan as ������,TelStr as �绰,ChuanZhen as ����,BackInfo as ��ע˵�� from ERPBuMen',N'����',2,N'ȫ��',N'D',N'admin',N'2012/3/2 12:44:59')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 8,N'�ɹ�������Ϣ����',N'select ID as ��ˮ��,OrderName as ��������,GongYingShangName as ��Ӧ������,Serils as ��������,DingDanLeiXing as �������� from ERPBuyOrder',N'����',2,N'ȫ��',N'F',N'admin',N'2012/3/2 12:46:43')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 9,N'������Ϣ����',N'select ID as ��ˮ��,CarName as ��������,CarPaiHao as �����ƺ�,CarXingHao as �ͺ�,LeiXing as ����,SuoShuDep as ��������,DriverUser as ˾��,NowState as ״̬ from ERPCarInfo',N'����',2,N'ȫ��',N'A',N'admin',N'2012/3/2 12:48:23')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 10,N'������־����',N'select ID as ��ˮ��,CarName as ��������,DriverUser as ˾��,ChuCheDate as ��������,XingShiTime as ��ʻʱ��,ShiYou as ����,XingShiLiCheng as ��ʻ���,YouHaoShu as �ͺ���,DaoDaAddress as ����ص�,UserName as ¼����,TimeStr as ¼��ʱ��,BackInfo as ��ע˵�� from ERPCarLog',N'����',2,N'ȫ��',N'A',N'admin',N'2012/3/2 12:49:34')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 11,N'���ۺ�ͬ���ݱ���',N'select ID as ��ˮ��,HeTongName as ��ͬ����,HeTongSerils as ��ͬ����,HeTongLeiXing as ��ͬ���,QianYueKeHu as ǩԼ�ͻ�,ShengXiaoDate as ��Ч����,ZhongZhiDate as ��ֹ����,BackInfo as ��ע,NowState as ��ͬ״̬ from ERPContract',N'����',3,N'ȫ��',N'A',N'admin',N'2012/3/2 12:51:09')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 12,N'ϵͳ�����ļ����ݱ���',N'select ID as ��ˮ��,FileName as �ļ�����,JuanKuName as �������,FileSerils as �ļ����,FileTitle as �ļ�����,FaWenDanWei as ���ĵ�λ,FaWenDate as ��������,MiJi as �ܼ�,JingJi as ���� from ERPDangAn',N'����',3,N'ȫ��',N'A',N'admin',N'2012/3/2 12:52:10')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 13,N'�̶��ʲ���Ϣ����',N'select ID as ��ˮ��,GDName as �ʲ�����,GDSerils as �ʲ�����,GDType as �ʲ����,SuoShuBuMen as ��������,GDAllCount as �ܼ�ֵ,NowCount as ��ǰ��ֵ,NianXian as ����,GDXingZhi as �ʲ����� from ERPGuDing',N'����',3,N'ȫ��',N'A',N'admin',N'2012/3/2 12:53:10')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 14,N'��Ա��Ϣ����',N'select ID as ��ˮ��,NameStr as ��Ա��,RuHuiDate as ���ʱ��,JieShaoRen as ������,SexStr as �Ա�,JiGuan as ����,JingJi as ����״��,ChuShengDate as �������� from ERPHuiYuan',N'����',3,N'ȫ��',N'A',N'admin',N'2012/3/2 12:53:53')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 15,N'�ͻ�������Ϣ����',N'select ID as ��ˮ��,CustomName as �ͻ�����,CustomSerils as �ͻ�����,ChargeMan as ������,TelStr as �绰,XingZhi as �ͻ�����,LaiYuan as �ͻ���Դ,QuYu as ��������,ZhuangTai as �ͻ�״̬,LeiBie as �ͻ����,JiBie as �ͻ�����,YeWuFanWei as ҵ��Χ,HangYe as ������ҵ from ERPCustomInfo',N'����',3,N'ȫ��',N'A',N'admin',N'2012/3/2 12:54:53')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 16,N'��Ŀ������Ϣ����',N'select ID as ��ˮ��,ProjectName as ��Ŀ����,ProjectSerils as ��Ŀ����,SuoShuKeHu as �����ͻ�,YuJiChengJiaoRiQi as Ԥ�Ƴɽ�����,XiangMuJinE as ��Ŀ��� from ERPProject',N'����',3,N'ȫ��',N'A',N'admin',N'2012/3/2 12:56:01')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 17,N'��Ӧ����Ϣ����',N'select ID as ��ˮ��,SupplysName as ��Ӧ������,Serils as ��Ӧ�̱���,DianHua as �绰,MobTel as �ֻ�,ChuanZhen as ���� from ERPSupplys',N'����',1,N'ȫ��',N'A',N'admin',N'2012/3/2 12:57:01')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[BackInfo],[TypeID],[UserListOK],[PaiXuStr],[UserName],[TimeStr]) VALUES ( 18,N'�ͻ���ϵ��¼����',N'select ID as ��ˮ��,CustomName as �ͻ�����,LinkTitle as ��ϵ����,LinkType as ��ϵ����,LinkResult as ��ϵ���,LinkTime as ��ϵʱ�� from ERPLinkLog',N'����',1,N'ȫ��',N'A',N'admin',N'2012/3/2 12:58:03')
INSERT [ERPReport] ([ID],[ReportName],[ReportSql],[TypeID],[UserListOK],[DepListOK],[JiaoSeListOK],[UserName],[TimeStr]) VALUES ( 19,N'������־',N'select * from ERPUser',1,N'ȫ��',N'ȫ��',N'ȫ��',N'admin',N'2012/11/8 17:15:51')

SET IDENTITY_INSERT [ERPReport] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPReportType]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPReportType]

CREATE TABLE [ERPReportType] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TypeName] [varchar]  (50) NULL,
[BackInfo] [varchar]  (500) NULL,
[PaiXuStr] [varchar]  (50) NULL)

ALTER TABLE [ERPReportType] WITH NOCHECK ADD  CONSTRAINT [PK_ERPReportType] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPReportType] ON

INSERT [ERPReportType] ([ID],[TypeName],[BackInfo],[PaiXuStr]) VALUES ( 1,N'��������',N'��Ҫ����һЩ������صı�������',N'C')
INSERT [ERPReportType] ([ID],[TypeName],[BackInfo],[PaiXuStr]) VALUES ( 2,N'���ñ���',N'���ù��ġ��ĵ����ļ������ݵı���',N'A')
INSERT [ERPReportType] ([ID],[TypeName],[BackInfo],[PaiXuStr]) VALUES ( 3,N'ҵ�񱨱�',N'�������������ı���',N'B')

SET IDENTITY_INSERT [ERPReportType] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPRiZhi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPRiZhi]

CREATE TABLE [ERPRiZhi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[DoSomething] [varchar]  (1000) NULL,
[IpStr] [varchar]  (50) NULL)

ALTER TABLE [ERPRiZhi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPRiZhi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPRiZhi] ON

INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5285,N'admin',N'2012/5/13 15:48:27',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5286,N'admin',N'2012/5/13 15:51:16',N'�û������ʼ�����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5287,N'admin',N'2012/5/13 16:50:01',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5288,N'admin',N'2012/5/13 16:50:19',N'�û��鿴��ɫ��Ϣ(һ��Ա��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5289,N'admin',N'2012/5/13 16:50:36',N'�鿴�û���Ϣ(������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5290,N'admin',N'2012/5/13 16:50:54',N'�鿴�û���Ϣ(������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5291,N'admin',N'2012/7/3 21:25:16',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5292,N'admin',N'2012/7/3 21:49:26',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5293,N'admin',N'2012/7/3 22:32:12',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5294,N'admin',N'2012/7/3 22:49:10',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5295,N'admin',N'2012/7/3 22:55:32',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5296,N'admin',N'2012/7/3 22:58:02',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5297,N'admin',N'2012/7/3 23:04:07',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5298,N'admin',N'2012/7/3 23:11:26',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5299,N'admin',N'2012/7/3 23:11:31',N'�û��鿴����������Ϣ(admin--������������(2012-03-2))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5300,N'admin',N'2012/7/3 23:27:40',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--��Դ��������(2012-03-2)-������ˮ�ţ�39))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5301,N'admin',N'2012/7/4 21:25:48',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5302,N'admin',N'2012/7/4 21:34:01',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5303,N'admin',N'2012/7/4 21:47:48',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5304,N'admin',N'2012/7/4 22:00:36',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5305,N'admin',N'2012/7/4 22:14:20',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5306,N'�ܱ�',N'2012/7/4 22:20:44',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5307,N'�ܱ�',N'2012/7/4 22:21:06',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5308,N'admin',N'2012/7/4 22:21:23',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5309,N'admin',N'2012/7/4 22:37:41',N'�û��޸Ĳ˵�������Ϣ(���˰칫)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5310,N'admin',N'2012/7/4 22:38:14',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5311,N'admin',N'2012/7/4 22:38:26',N'�û��鿴�˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5312,N'admin',N'2012/7/4 22:45:10',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5313,N'admin',N'2012/7/4 22:47:49',N'�û��޸Ĳ˵�������Ϣ(���˰칫)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5314,N'admin',N'2012/7/4 22:48:10',N'�û��޸Ĳ˵�������Ϣ(�����շ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5315,N'admin',N'2012/7/4 22:48:19',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5316,N'admin',N'2012/7/4 22:48:31',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5317,N'admin',N'2012/7/4 22:48:40',N'�û��޸Ĳ˵�������Ϣ(֪ʶ�ĵ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5318,N'admin',N'2012/7/4 22:48:49',N'�û��޸Ĳ˵�������Ϣ(��չӦ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5319,N'admin',N'2012/7/4 22:50:01',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5320,N'admin',N'2012/7/4 22:50:08',N'�û��޸Ĳ˵�������Ϣ(��֯����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5321,N'admin',N'2012/7/4 22:50:25',N'�û��޸Ĳ˵�������Ϣ(��Ϣ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5322,N'admin',N'2012/7/4 22:50:34',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5323,N'admin',N'2012/7/4 22:50:41',N'�û��޸Ĳ˵�������Ϣ(������Դ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5324,N'admin',N'2012/7/4 22:50:51',N'�û��޸Ĳ˵�������Ϣ(��Ŀ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5325,N'admin',N'2012/7/4 22:51:07',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5326,N'admin',N'2012/7/4 22:52:39',N'�û��޸Ĳ˵�������Ϣ(ϵͳ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5327,N'admin',N'2012/7/4 22:52:53',N'�û��޸Ĳ˵�������Ϣ(ϵͳ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5328,N'admin',N'2012/7/4 22:53:38',N'�û��޸Ĳ˵�������Ϣ(ϵͳ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5329,N'admin',N'2012/7/4 22:58:58',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5330,N'admin',N'2012/7/4 23:01:05',N'�û��޸Ĳ˵�������Ϣ(���˰칫)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5331,N'admin',N'2012/7/4 23:01:54',N'�û��޸Ĳ˵�������Ϣ(�ͻ���ϵ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5332,N'admin',N'2012/7/4 23:05:32',N'�û��޸Ĳ˵�������Ϣ(���˰칫)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5333,N'admin',N'2012/7/4 23:07:29',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5334,N'admin',N'2012/7/4 23:10:33',N'�û��鿴���������Ϣ(���ñ���)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5335,N'admin',N'2012/7/5 21:21:33',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5336,N'admin',N'2012/7/5 21:24:28',N'�û���½ϵͳ',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5337,N'admin',N'2012/7/5 21:27:15',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5338,N'admin',N'2012/7/5 21:28:53',N'�û��޸Ĳ˵�������Ϣ(�����շ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5339,N'admin',N'2012/7/5 21:29:58',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5340,N'admin',N'2012/7/5 21:30:22',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5341,N'admin',N'2012/7/5 21:30:57',N'�û��޸Ĳ˵�������Ϣ(֪ʶ�ĵ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5342,N'admin',N'2012/7/5 21:31:18',N'�û��޸Ĳ˵�������Ϣ(��չӦ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5343,N'admin',N'2012/7/5 21:31:37',N'�û��޸Ĳ˵�������Ϣ(�ͻ���ϵ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5344,N'admin',N'2012/7/5 21:31:57',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5345,N'admin',N'2012/7/5 21:32:13',N'�û��޸Ĳ˵�������Ϣ(��Ŀ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5346,N'admin',N'2012/7/5 21:32:33',N'�û��޸Ĳ˵�������Ϣ(������Դ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5347,N'admin',N'2012/7/5 21:32:52',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5348,N'admin',N'2012/7/5 21:33:08',N'�û��޸Ĳ˵�������Ϣ(��Ϣ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5349,N'admin',N'2012/7/5 21:33:33',N'�û��޸Ĳ˵�������Ϣ(��֯����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5350,N'admin',N'2012/7/5 21:33:51',N'�û��޸Ĳ˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5351,N'admin',N'2012/7/5 21:34:10',N'�û��޸Ĳ˵�������Ϣ(ϵͳ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5352,N'admin',N'2012/7/5 21:36:43',N'�û��޸Ĳ˵�������Ϣ(�ڲ��ʼ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5353,N'admin',N'2012/7/5 21:37:11',N'�û��鿴����������Ϣ(admin--������������(2012-03-2))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5354,N'admin',N'2012/7/5 21:39:41',N'�û��鿴�ļ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5355,N'admin',N'2012/7/5 21:58:13',N'�û��޸Ĳ˵�������Ϣ(������Ϣ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5356,N'admin',N'2012/7/5 22:01:08',N'�û��޸Ĳ˵�������Ϣ(�û���Ϣ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5357,N'admin',N'2012/7/5 22:02:02',N'�û��޸Ĳ˵�������Ϣ(��λ��Ϣ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5358,N'admin',N'2012/7/5 22:02:57',N'�û��޸Ĳ˵�������Ϣ(��ɫ��Ϣ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5359,N'admin',N'2012/7/5 22:16:10',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5360,N'admin',N'2012/7/5 22:32:22',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5361,N'admin',N'2012/7/5 22:38:06',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--��Դ��������(2012-03-2)-������ˮ�ţ�39))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5362,N'admin',N'2012/7/5 22:38:09',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--��ְ��������(2012-03-2)-������ˮ�ţ�38))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5363,N'�ܱ�',N'2012/7/5 22:38:57',N'�û���½ϵͳ',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5364,N'admin',N'2012/7/5 22:42:19',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--Ա���������(2012-03-2)-������ˮ�ţ�37))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5365,N'admin',N'2012/7/5 22:42:24',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--�ɹ���������(2012-03-2)-������ˮ�ţ�33))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5366,N'�ܱ�',N'2012/7/5 22:44:04',N'�û��鿴�ʼ�(�����µ��ļ���Ҫ���գ�(����۶��Ƽ����޹�˾��ϵ��ʽ))',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5367,N'admin',N'2012/7/5 22:49:21',N'�û��鿴�ʼ�(�����µĹ�����Ҫ����(admin--Ա���������(2012-03-2)))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5368,N'admin',N'2012/7/5 23:00:33',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5369,N'�ܱ�',N'2012/7/5 23:21:46',N'�û���½ϵͳ',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5370,N'admin',N'2012/7/5 23:24:10',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--�칫��Ʒ��������(2012-03-2)-������ˮ�ţ�36))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5371,N'admin',N'2012/7/5 23:26:22',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5372,N'admin',N'2012/7/6 22:01:33',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5373,N'admin',N'2012/9/4 7:58:31',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5374,N'admin',N'2012/9/4 8:00:08',N'�û���Ӳ˵�������Ϣ(��ʱͨѶ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5375,N'admin',N'2012/9/4 8:00:30',N'�û��޸Ĳ˵�������Ϣ(��ʱͨѶ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5376,N'admin',N'2012/9/4 8:01:00',N'�û��޸Ľ�ɫ��Ϣ(��������Ա)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5377,N'admin',N'2012/9/4 8:01:10',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5378,N'admin',N'2012/9/4 21:58:44',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5379,N'admin',N'2012/9/5 0:21:47',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5380,N'admin',N'2012/9/5 0:26:33',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5381,N'admin',N'2012/9/5 0:42:45',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5382,N'admin',N'2012/9/9 2:52:19',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5383,N'admin',N'2012/9/9 3:55:52',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5384,N'admin',N'2012/9/9 4:05:06',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5385,N'admin',N'2012/9/9 4:12:58',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5386,N'admin',N'2012/9/9 4:15:54',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5387,N'admin',N'2012/9/9 4:24:07',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5388,N'admin',N'2012/9/9 4:30:54',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5389,N'admin',N'2012/9/9 4:34:08',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5390,N'admin',N'2012/9/9 4:35:16',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5391,N'admin',N'2012/9/9 4:35:49',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5392,N'admin',N'2012/9/9 4:59:29',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5393,N'admin',N'2012/9/9 6:09:49',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5394,N'admin',N'2012/9/9 6:12:30',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5395,N'admin',N'2012/9/9 6:16:46',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5396,N'admin',N'2012/9/9 6:17:46',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5397,N'admin',N'2012/9/9 6:19:40',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5398,N'admin',N'2012/9/9 6:43:40',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5399,N'admin',N'2012/9/9 6:50:00',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5400,N'admin',N'2012/9/9 6:52:32',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5401,N'admin',N'2012/9/9 6:54:59',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5402,N'admin',N'2012/9/10 23:00:58',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5403,N'admin',N'2012/9/10 23:39:20',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5404,N'admin',N'2012/9/11 11:45:37',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5405,N'admin',N'2012/9/12 11:33:59',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5406,N'admin',N'2012/9/12 11:41:11',N'�û����ÿ�д�ֶ�(�ڵ�ID��34)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5407,N'admin',N'2012/9/12 11:41:51',N'�û��鿴����������Ϣ(admin--������������(2012-03-2))',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5408,N'admin',N'2012/9/12 11:42:11',N'�û��鿴����������Ϣ(admin--������������(2012-03-2))',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5409,N'admin',N'2012/9/12 11:42:30',N'�û��鿴���̱�����(ID��24)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5410,N'admin',N'2012/9/12 11:42:44',N'�û��鿴���̱�����(ID��22)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5411,N'admin',N'2012/9/13 14:44:38',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5412,N'admin',N'2012/9/20 15:57:15',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5413,N'admin',N'2012/9/24 10:49:26',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5414,N'admin',N'2012/9/24 10:51:38',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5415,N'admin',N'2012/9/24 10:52:41',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5416,N'admin',N'2012/9/24 10:58:44',N'�û��鿴���������Ϣ(���ñ���)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5417,N'admin',N'2012/9/24 10:59:09',N'�û��鿴���������Ϣ(������־����)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5418,N'admin',N'2012/9/24 10:59:55',N'�û��鿴����������Ϣ(admin--������������(2012-03-2))',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5419,N'admin',N'2012/9/24 11:59:43',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5420,N'admin',N'2012/9/24 12:02:07',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5421,N'admin',N'2012/9/24 12:04:14',N'�û��鿴�ļ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5422,N'admin',N'2012/9/24 12:05:10',N'�û��鿴����������Ϣ(admin--��Դ��������(2012-03-2))',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5423,N'admin',N'2012/9/24 12:09:51',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--�ɹ���������(2012-03-2)-������ˮ�ţ�33))',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5424,N'admin',N'2012/9/24 12:16:19',N'�û��޸����̱�����(ID��28)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5425,N'admin',N'2012/9/26 10:42:09',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5426,N'admin',N'2012/9/26 10:43:47',N'�û�������ʼ�(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5427,N'admin',N'2012/9/26 10:44:10',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--��Դ��������(2012-03-2)-������ˮ�ţ�39))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5428,N'admin',N'2012/9/28 11:19:00',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5429,N'admin',N'2012/9/28 11:32:05',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5430,N'admin',N'2012/9/29 21:32:40',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5431,N'admin',N'2012/10/7 9:28:38',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5432,N'admin',N'2012/10/7 9:30:58',N'�û��޸����̱���Ϣ(���ĵǼ�-����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5433,N'admin',N'2012/10/7 10:07:55',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5434,N'admin',N'2012/10/7 10:09:55',N'�û��޸����̱�����(ID��28)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5435,N'admin',N'2012/10/7 10:31:24',N'�û�������̶�����Ϣ(���ĵǼ�����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5436,N'admin',N'2012/10/7 10:31:44',N'�û���ӽڵ㶨����Ϣ(test1)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5437,N'admin',N'2012/10/7 10:31:54',N'�û���ӽڵ㶨����Ϣ(test2)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5438,N'admin',N'2012/10/7 10:32:08',N'�û����ÿ�д�ֶ�(�ڵ�ID��60)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5439,N'admin',N'2012/10/7 10:36:26',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5440,N'admin',N'2012/10/7 10:40:47',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5441,N'admin',N'2012/10/7 10:41:39',N'�û�ɾ������������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5442,N'admin',N'2012/10/7 10:41:44',N'�û�ɾ������������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5443,N'admin',N'2012/10/7 10:41:50',N'�û�ɾ������������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5444,N'admin',N'2012/10/7 10:42:09',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5445,N'admin',N'2012/10/7 10:42:26',N'�û�ɾ������������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5446,N'admin',N'2012/10/7 10:42:59',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5447,N'admin',N'2012/10/7 10:44:05',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5448,N'admin',N'2012/10/7 10:44:14',N'�û�ɾ������������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5449,N'admin',N'2012/10/7 10:45:31',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5450,N'admin',N'2012/10/7 10:50:21',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5451,N'admin',N'2012/10/7 10:50:43',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5452,N'admin',N'2012/10/7 10:52:25',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5453,N'admin',N'2012/10/7 10:52:50',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5454,N'admin',N'2012/10/7 10:53:48',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5455,N'admin',N'2012/10/7 10:54:13',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5456,N'admin',N'2012/10/7 10:54:34',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5457,N'admin',N'2012/10/7 10:56:00',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5458,N'admin',N'2012/10/7 10:57:20',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5459,N'admin',N'2012/10/7 11:29:43',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5460,N'admin',N'2012/10/7 11:30:58',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5461,N'admin',N'2012/10/7 11:31:51',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5462,N'admin',N'2012/10/7 11:33:14',N'�û�ɾ������������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5463,N'admin',N'2012/10/7 11:33:58',N'�û�ɾ������������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5464,N'admin',N'2012/10/7 11:34:28',N'�û����ÿ�д�ֶ�(�ڵ�ID��61)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5465,N'admin',N'2012/10/7 11:34:45',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5466,N'admin',N'2012/10/7 11:35:07',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5467,N'admin',N'2012/10/7 11:35:08',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5468,N'admin',N'2012/10/7 12:45:59',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5469,N'admin',N'2012/10/7 12:46:17',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5470,N'admin',N'2012/10/7 13:00:45',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5471,N'admin',N'2012/10/7 13:01:09',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5472,N'admin',N'2012/10/7 13:07:30',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5473,N'admin',N'2012/10/7 13:07:30',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5474,N'admin',N'2012/10/7 13:09:36',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5475,N'admin',N'2012/10/7 13:10:05',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5476,N'admin',N'2012/10/7 13:10:05',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5477,N'admin',N'2012/10/7 13:10:58',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5478,N'admin',N'2012/10/7 13:11:21',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5479,N'admin',N'2012/10/7 13:12:19',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5480,N'admin',N'2012/10/7 13:12:20',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5481,N'admin',N'2012/10/7 13:14:28',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5482,N'admin',N'2012/10/7 13:14:54',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5483,N'admin',N'2012/10/7 13:14:54',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5484,N'admin',N'2012/10/7 13:15:29',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5485,N'admin',N'2012/10/7 13:15:57',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5486,N'admin',N'2012/10/7 13:17:17',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5487,N'admin',N'2012/10/7 13:17:18',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5488,N'admin',N'2012/10/7 13:17:37',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5489,N'admin',N'2012/10/7 13:17:56',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5490,N'admin',N'2012/10/7 13:17:56',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5491,N'admin',N'2012/10/7 13:18:32',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5492,N'admin',N'2012/10/7 13:18:52',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5493,N'admin',N'2012/10/7 13:19:38',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5494,N'admin',N'2012/10/7 13:19:40',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5495,N'admin',N'2012/10/7 13:21:16',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5496,N'admin',N'2012/10/7 13:21:17',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5497,N'admin',N'2012/10/7 13:21:39',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5498,N'admin',N'2012/10/7 13:21:51',N'�û�����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5499,N'admin',N'2012/10/7 13:21:51',N'�û�������(admin--���ĵǼ�����(2012/10/7))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5500,N'admin',N'2012/10/12 8:58:08',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5501,N'admin',N'2012/10/12 8:58:34',N'�û��鿴���̱���Ϣ(���ĵǼ�-����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5502,N'admin',N'2012/10/12 8:58:50',N'�û��鿴�ʼ�(�۶��Ƽ��°�OAϵͳ��ʽ�Ƴ�����ӭʹ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5503,N'admin',N'2012/10/12 8:59:31',N'�û��鿴�ʼ�(Client_code)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5504,N'admin',N'2012/10/12 9:00:07',N'�û��鿴�ʼ�(�����ֱ��298Ԫ����������,(����+¼��+�ֱ�+����+U��+MP3+DV)7����! )',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5505,N'admin',N'2012/10/12 9:00:17',N'�û��鿴�ʼ�(Win a Movie Family 4-Pack)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5506,N'admin',N'2012/10/12 9:04:36',N'�û������ʼ�����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5507,N'admin',N'2012/10/12 9:07:03',N'�û��鿴�ʼ�(《QQ炫舞》业务通知�? �?)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5508,N'admin',N'2012/10/12 9:43:56',N'�û��鿴�ʼ�(�����ֱ��298Ԫ����������,(����+¼��+�ֱ�+����+U��+MP3+DV)7����! )',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5509,N'admin',N'2012/10/12 9:44:08',N'�û��鿴�ʼ�(《QQ炫舞》业务通知�? �?)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5510,N'admin',N'2012/10/12 9:45:46',N'�û������ʼ�����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5511,N'admin',N'2012/10/12 9:46:49',N'�û�������ʼ�(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5512,N'admin',N'2012/10/12 9:48:50',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5513,N'admin',N'2012/10/12 9:53:38',N'�û��鿴�ʼ�(��תվ�ļ���������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5514,N'admin',N'2012/10/12 9:53:52',N'�û��鿴�ʼ�(�ظ������°칫oaϵͳ2007����� ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5515,N'admin',N'2012/10/27 12:52:54',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5516,N'admin',N'2012/10/27 12:53:46',N'�û�������̱���Ϣ(������־)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5517,N'admin',N'2012/10/27 12:55:25',N'�û��޸����̱�����(ID��29)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5518,N'admin',N'2012/10/27 13:01:45',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5519,N'admin',N'2012/10/27 13:02:20',N'�û��鿴���̱�����(ID��29)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5520,N'admin',N'2012/10/27 13:06:21',N'�û��޸����̱�����(ID��29)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5521,N'admin',N'2012/11/1 15:05:20',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5522,N'admin',N'2012/11/1 15:06:01',N'�û�������̶�����Ϣ(������־)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5523,N'admin',N'2012/11/1 15:07:55',N'�û���ӽڵ㶨����Ϣ(tet)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5524,N'admin',N'2012/11/1 15:13:09',N'�û���ӽڵ㶨����Ϣ(test2)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5525,N'admin',N'2012/11/1 15:16:01',N'�û���ӽڵ㶨����Ϣ(test3)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5526,N'admin',N'2012/11/1 15:19:13',N'�û���ӽڵ㶨����Ϣ(tet4)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5527,N'admin',N'2012/11/1 15:19:46',N'�û���ӽڵ㶨����Ϣ(test5)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5528,N'admin',N'2012/11/1 15:20:01',N'�û���ӽڵ㶨����Ϣ(test6)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5529,N'admin',N'2012/11/1 15:20:25',N'�û���ӽڵ㶨����Ϣ(tes7)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5530,N'admin',N'2012/11/8 17:06:38',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5531,N'admin',N'2012/11/8 17:07:23',N'�û�������̱���Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5532,N'admin',N'2012/11/8 17:09:19',N'�û��޸����̱�����(ID��30)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5533,N'admin',N'2012/11/8 17:09:44',N'�û�������̶�����Ϣ(�����������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5534,N'admin',N'2012/11/8 17:09:58',N'�û���ӽڵ㶨����Ϣ(1)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5535,N'admin',N'2012/11/8 17:10:09',N'�û���ӽڵ㶨����Ϣ(2)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5536,N'admin',N'2012/11/8 17:10:18',N'�û���ӽڵ㶨����Ϣ(3)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5537,N'admin',N'2012/11/8 17:11:02',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5538,N'admin',N'2012/11/8 17:15:51',N'�û���ӱ��������Ϣ(������־)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5539,N'admin',N'2012/11/8 17:20:08',N'�û��޸ı��������Ϣ(������־)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5540,N'admin',N'2012/10/16 14:41:09',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5541,N'admin',N'2012/11/28 14:38:32',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5542,N'admin',N'2012/12/3 10:55:22',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5543,N'admin',N'2012/12/5 11:16:46',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5544,N'admin',N'2012/12/6 13:15:38',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5545,N'admin',N'2012/12/6 13:19:27',N'�û��鿴��������Ϣ(����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5546,N'admin',N'2012/12/6 13:23:36',N'�û���Ӳ˵�������Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5547,N'admin',N'2012/12/6 13:27:35',N'�û��޸Ĳ˵�������Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5548,N'admin',N'2012/12/6 13:28:02',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5549,N'admin',N'2012/12/6 13:36:52',N'�û��޸Ĳ˵�������Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5550,N'admin',N'2012/12/6 13:39:26',N'�û��޸Ľ�ɫ��Ϣ(��������Ա)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5551,N'admin',N'2012/12/6 13:40:07',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5552,N'admin',N'2012/12/6 13:40:54',N'�û�ɾ���˵�������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5553,N'admin',N'2012/12/6 13:41:05',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5554,N'admin',N'2012/12/6 13:42:54',N'�û���Ӳ˵�������Ϣ(AAA)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5555,N'admin',N'2012/12/6 13:43:26',N'�û��鿴�˵�������Ϣ(AAA)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5556,N'admin',N'2012/12/6 13:44:20',N'�û���Ӳ˵�������Ϣ(A111)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5557,N'admin',N'2012/12/6 13:44:41',N'�û��޸Ľ�ɫ��Ϣ(��������Ա)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5558,N'admin',N'2012/12/6 13:44:50',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5559,N'admin',N'2012/12/6 13:46:40',N'�û���Ӳ˵�������Ϣ(A222)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5560,N'admin',N'2012/12/6 13:46:54',N'�û��޸Ľ�ɫ��Ϣ(��������Ա)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5561,N'admin',N'2012/12/6 13:47:05',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5562,N'admin',N'2012/12/6 13:49:05',N'�û�ɾ���˵�������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5563,N'admin',N'2012/12/6 13:49:21',N'�û�ɾ���˵�������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5564,N'admin',N'2012/12/10 10:40:11',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5565,N'admin',N'2012/12/13 20:34:23',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5566,N'admin',N'2012/12/13 20:48:18',N'�û��޸ĵ�λ��Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5567,N'admin',N'2012/12/15 10:16:21',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5568,N'admin',N'2012/12/15 10:41:36',N'�û��޸����̱�����(ID��27)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5569,N'admin',N'2012/12/15 10:41:46',N'�û��鿴���̱�����(ID��27)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5570,N'admin',N'2012/12/15 10:49:23',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5571,N'admin',N'2012/12/15 10:50:20',N'�û�������̶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5572,N'admin',N'2012/12/15 10:50:35',N'�û���ӽڵ㶨����Ϣ(1)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5573,N'admin',N'2012/12/15 10:51:04',N'�û���ӽڵ㶨����Ϣ(2)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5574,N'admin',N'2012/12/15 10:58:34',N'�û��޸����̱�����(ID��27)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5575,N'admin',N'2012/12/15 13:12:40',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5576,N'admin',N'2012/12/15 13:24:13',N'�û��޸����̱�����(ID��27)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5577,N'admin',N'2012/12/15 13:31:09',N'�û��޸����̱�����(ID��27)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5578,N'admin',N'2012/12/15 13:34:00',N'�û��޸����̱�����(ID��27)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5579,N'admin',N'2012/12/15 13:36:50',N'�û��޸����̱�����(ID��27)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5580,N'admin',N'2012/12/15 13:39:31',N'�û��޸����̱�����(ID��27)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5581,N'admin',N'2012/12/15 13:39:55',N'�û����ÿ�д�ֶ�(�ڵ�ID��72)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5582,N'admin',N'2012/12/16 21:10:55',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5583,N'admin',N'2012/12/16 21:11:25',N'�û���ӽڵ㶨����Ϣ(3)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5584,N'admin',N'2012/12/16 21:11:36',N'�û���ӽڵ㶨����Ϣ(4)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5585,N'admin',N'2012/12/25 13:21:38',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5586,N'admin',N'2012/12/25 16:38:49',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5587,N'admin',N'2012/12/26 10:39:04',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5588,N'admin',N'2012/12/26 10:43:46',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5589,N'admin',N'2012/12/27 10:11:58',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5590,N'admin',N'2012/12/27 10:31:11',N'�û�������۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5591,N'admin',N'2012/12/27 10:34:45',N'�û��޸�������ʾ��Ϣ(���칤��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5592,N'admin',N'2012/12/27 10:38:36',N'�û��鿴���۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5593,N'admin',N'2012/12/27 10:46:52',N'�û���׼ͨ����ͬ����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5594,N'admin',N'2012/12/27 10:49:02',N'�û��鿴���۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5595,N'admin',N'2012/12/27 11:12:53',N'�û��޸����۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5596,N'admin',N'2012/12/27 11:13:20',N'�û��޸����۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5597,N'admin',N'2012/12/27 11:17:20',N'�û��޸����۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5598,N'admin',N'2012/12/27 14:15:49',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5599,N'admin',N'2012/12/27 14:29:28',N'�û��鿴�˵�������Ϣ(��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5600,N'admin',N'2012/12/27 14:31:26',N'�û���Ӳ˵�������Ϣ(�տ�ƻ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5601,N'admin',N'2012/12/27 14:36:47',N'�û���Ӳ˵�������Ϣ(�տ�ƻ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5602,N'admin',N'2012/12/27 14:39:34',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5603,N'admin',N'2012/12/27 14:40:44',N'�û���Ӳ˵�������Ϣ(�տ�ƻ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5604,N'admin',N'2012/12/27 14:41:08',N'�û��޸Ľ�ɫ��Ϣ(��������Ա)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5605,N'admin',N'2012/12/27 14:41:16',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5606,N'admin',N'2012/12/27 14:50:45',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5607,N'admin',N'2012/12/27 14:51:47',N'�û��޸����۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5608,N'admin',N'2012/12/27 14:56:46',N'�û��޸����۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5609,N'admin',N'2012/12/27 14:57:02',N'�û��޸����۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5610,N'admin',N'2012/12/27 14:57:18',N'�û��޸����۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5611,N'admin',N'2012/12/27 14:59:04',N'�û��޸����۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5612,N'admin',N'2012/12/27 22:50:00',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5613,N'admin',N'2012/12/27 23:26:09',N'�û��޸Ĳ˵�������Ϣ(�տ�ƻ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5614,N'admin',N'2012/12/28 9:38:48',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5615,N'admin',N'2012/12/28 10:18:30',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5616,N'admin',N'2012/12/28 10:30:56',N'�û�������۶�����Ϣ(ˮ����Ե�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5617,N'admin',N'2012/12/28 11:57:35',N'�û��޸Ľ�ɫ��Ϣ(��������Ա)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5618,N'admin',N'2012/12/28 11:58:16',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5619,N'admin',N'2012/12/28 11:59:03',N'�û�����տ�ƻ���Ϣ()',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5620,N'admin',N'2012/12/28 16:29:41',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5621,N'admin',N'2012/12/28 16:51:57',N'�û�ɾ���ڵ㶨����Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5622,N'admin',N'2012/12/28 17:04:45',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5623,N'admin',N'2012/12/29 9:22:26',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5624,N'admin',N'2012/12/29 10:08:55',N'�û���Ӳ˵�������Ϣ(����ƻ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5625,N'admin',N'2012/12/29 10:22:54',N'�û��޸Ľ�ɫ��Ϣ(��������Ա)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5626,N'admin',N'2012/12/29 10:26:16',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5627,N'admin',N'2012/12/29 10:30:58',N'�û�����տ�ƻ���Ϣ()',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5628,N'admin',N'2012/12/29 10:32:17',N'�û���Ӹ���ƻ���Ϣ()',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5629,N'admin',N'2012/12/29 10:36:36',N'�û���Ӹ���ƻ���Ϣ()',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5630,N'admin',N'2012/12/29 15:53:02',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5631,N'admin',N'2012/12/29 15:55:26',N'�û���½ϵͳ',N'27.155.20.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5632,N'admin',N'2012/12/29 15:57:38',N'�û��鿴�ʼ�(���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7)))',N'27.155.20.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5633,N'admin',N'2012/12/29 15:59:33',N'�鿴������Ϣ(����Ϣ��ʵʩ��Ŀ)',N'27.155.20.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5634,N'admin',N'2012/12/29 16:04:51',N'�û��鿴����������Ϣ(admin--��ְ��������(2012-03-2))',N'27.155.20.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5635,N'admin',N'2012/12/29 16:04:57',N'�û��鿴�ʼ�(���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7)))',N'27.155.20.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5636,N'admin',N'2012/12/29 16:09:36',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'27.155.20.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5637,N'admin',N'2012/12/29 16:23:32',N'�鿴�û���Ϣ(������)',N'27.155.20.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5638,N'admin',N'2012/12/29 16:35:32',N'�û���½ϵͳ',N'27.155.20.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5639,N'admin',N'2012/12/29 16:35:54',N'�û��鿴��̳������Ϣ(ͨ�����ҵ��������룬ͨ�������˽�����ͨ����ʵ�����롣)',N'27.155.20.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5640,N'admin',N'2012/12/29 16:56:05',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5641,N'admin',N'2012/12/30 15:52:54',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5642,N'admin',N'2012/12/30 15:56:24',N'�û���Ӳ˵�������Ϣ(����ģ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5643,N'admin',N'2012/12/30 15:57:18',N'�û���Ӳ˵�������Ϣ(Ӧ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5644,N'admin',N'2012/12/30 15:59:06',N'�û���Ӳ˵�������Ϣ(Ӧ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5645,N'admin',N'2012/12/30 16:16:42',N'�û���Ӳ˵�������Ϣ(����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5646,N'admin',N'2012/12/30 16:18:08',N'�û��޸Ľ�ɫ��Ϣ(��������Ա)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5647,N'admin',N'2012/12/30 16:18:15',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5648,N'admin',N'2012/12/30 16:20:03',N'�û���ӱ�������Ϣ(sdf)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5649,N'admin',N'2012/12/31 9:28:58',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5650,N'admin',N'2013/1/3 12:05:57',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5651,N'admin',N'2013/1/3 12:33:16',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5652,N'admin',N'2013/1/3 12:33:50',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5653,N'admin',N'2013/1/3 12:46:52',N'�û��޸����۶�����Ϣ(ˮ����Ե�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5654,N'admin',N'2013/1/3 12:47:11',N'�û��޸����۶�����Ϣ(test)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5655,N'admin',N'2013/1/3 12:47:24',N'�û��޸����۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5656,N'admin',N'2013/1/3 12:48:30',N'�û��޸Ĳɹ�������Ϣ(����������ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5657,N'admin',N'2013/1/3 12:58:07',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5658,N'admin',N'2013/1/3 12:58:42',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5659,N'admin',N'2013/1/3 13:10:41',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5660,N'admin',N'2013/1/3 13:15:51',N'�û��鿴�ɹ�������Ϣ(����������ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5661,N'admin',N'2013/1/4 11:01:26',N'�û���½ϵͳ',N'125.46.212.36')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5662,N'admin',N'2013/1/4 11:02:46',N'�û��鿴����������Ϣ(admin--Ա���������(2012-03-2))',N'125.46.212.36')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5663,N'admin',N'2013/1/4 11:02:46',N'�û��鿴����������Ϣ(admin--Ա���������(2012-03-2))',N'125.46.212.36')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5664,N'admin',N'2013/1/4 11:05:38',N'�û��鿴���������Ϣ(��Ŀ������Ϣ����)',N'125.46.212.36')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5665,N'admin',N'2013/1/4 11:14:58',N'�û��鿴���������Ϣ(ҵ�񱨱�)',N'125.46.212.36')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5666,N'admin',N'2013/1/4 11:15:09',N'�û��鿴���������Ϣ(�ͻ�������Ϣ����)',N'125.46.212.36')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5667,N'admin',N'2013/1/4 11:15:12',N'�û��鿴���������Ϣ(��Ա��Ϣ����)',N'125.46.212.36')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5668,N'admin',N'2013/1/5 9:07:57',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5669,N'admin',N'2013/1/5 9:08:47',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5670,N'admin',N'2013/1/5 9:09:10',N'�û��鿴�ɹ�������Ϣ(����������ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5671,N'admin',N'2013/1/5 9:12:39',N'�û��޸Ĳ˵�������Ϣ(Ӧ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5672,N'admin',N'2013/1/5 9:13:34',N'�û��޸Ĳ˵�������Ϣ(Ӧ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5673,N'admin',N'2013/1/5 9:15:47',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5674,N'admin',N'2013/1/5 9:57:50',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5675,N'admin',N'2013/1/5 10:00:14',N'�û���½ϵͳ',N'192.168.1.6')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5676,N'admin',N'2013/1/5 10:08:46',N'�û�ɾ���տ�ƻ���Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5677,N'admin',N'2013/1/5 10:09:14',N'�û�����տ�ƻ���Ϣ()',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5678,N'admin',N'2013/1/5 10:09:57',N'�û��޸��տ�ƻ���Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5679,N'admin',N'2013/1/5 10:23:00',N'�û��鿴���۶�����Ϣ(ˮ����Ե�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5680,N'admin',N'2013/1/5 10:29:42',N'�û��޸�Ӧ����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5681,N'admin',N'2013/1/5 10:33:04',N'�û�ɾ���տ�ƻ���Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5682,N'admin',N'2013/1/5 10:33:43',N'�û��鿴�տ�ƻ���Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5683,N'admin',N'2013/1/5 10:36:08',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5684,N'admin',N'2013/1/5 10:50:19',N'�û�������ʼ�(tree)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5685,N'admin',N'2013/1/5 10:50:23',N'�û��鿴�ʼ�(tree)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5686,N'admin',N'2013/1/5 10:51:46',N'�û�������ʼ�(ˮ���)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5687,N'admin',N'2013/1/5 10:51:52',N'�û��鿴�ʼ�(ˮ���)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5688,N'admin',N'2013/1/5 10:56:34',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5689,N'admin',N'2013/1/5 10:56:53',N'�û��鿴�ʼ�(ˮ���)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5690,N'admin',N'2013/1/5 11:38:30',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5691,N'admin',N'2013/1/5 17:30:43',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5692,N'admin',N'2013/1/5 17:35:24',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5693,N'admin',N'2013/1/5 17:35:24',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5694,N'admin',N'2013/1/6 9:55:45',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5695,N'admin',N'2013/1/6 10:34:36',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5696,N'admin',N'2013/1/6 10:35:03',N'�û��鿴���۶�����Ϣ(ˮ����Ե�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5697,N'admin',N'2013/1/6 10:53:38',N'�û��鿴���۶�����Ϣ(ˮ����Ե�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5698,N'admin',N'2013/1/6 10:53:42',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5699,N'admin',N'2013/1/6 14:26:09',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5700,N'admin',N'2013/1/6 15:18:46',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5701,N'admin',N'2013/1/6 15:19:24',N'�û���׼ͨ����ͬ����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5702,N'admin',N'2013/1/6 15:19:46',N'�û���׼ͨ����ͬ����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5703,N'admin',N'2013/1/6 15:21:22',N'�û���׼ͨ����ͬ����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5704,N'admin',N'2013/1/6 15:38:56',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5705,N'admin',N'2013/1/6 15:40:41',N'�û���Ӳɹ�������Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5706,N'admin',N'2013/1/6 15:42:52',N'�û���Ӳɹ�������Ʒ��Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5707,N'admin',N'2013/1/6 15:47:48',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5708,N'admin',N'2013/1/6 16:40:44',N'�û�������۶�����Ϣ(ˮ����Ե�����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5709,N'admin',N'2013/1/6 16:40:50',N'�û�ɾ����ͬ������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5710,N'admin',N'2013/1/7 11:07:52',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5711,N'admin',N'2013/1/7 11:11:49',N'�û�����¹�����Ϣ(admin--�ɹ���������(2013/1/7))',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5712,N'admin',N'2013/1/7 11:13:08',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5713,N'admin',N'2013/1/7 13:55:41',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5714,N'admin',N'2013/1/7 13:56:47',N'�û�������۶�����Ϣ(��˹��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5715,N'admin',N'2013/1/7 13:57:11',N'�û��鿴���۶�����Ϣ(��˹��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5716,N'admin',N'2013/1/7 13:59:20',N'�û�����տ�ƻ���Ϣ(ˮ����Ե�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5717,N'admin',N'2013/1/7 14:01:56',N'�û��޸�Ӧ����Ϣ(ˮ����Ե�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5718,N'admin',N'2013/1/7 14:06:14',N'�û��鿴�ͻ���Ϣ(����������Ź�ҵ��Ʒ���޹�˾)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5719,N'admin',N'2013/1/7 14:08:18',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5720,N'admin',N'2013/1/7 14:09:03',N'�鿴�û���Ϣ(��Ϊ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5721,N'������',N'2013/1/7 14:09:48',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5722,N'admin',N'2013/1/7 14:11:44',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5723,N'admin',N'2013/1/7 14:14:02',N'�û��޸Ĳ˵�������Ϣ(����ģ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5724,N'admin',N'2013/1/7 14:21:00',N'�û���Ӳɹ�������Ϣ(�������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5725,N'admin',N'2013/1/7 14:24:28',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5726,N'admin',N'2013/1/7 14:36:11',N'�û�������û�(majh)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5727,N'admin',N'2013/1/7 14:42:49',N'�û��޸Ľ�ɫ��Ϣ(һ��Ա��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5728,N'majh',N'2013/1/7 14:43:09',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5729,N'admin',N'2013/1/7 15:00:26',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5730,N'admin',N'2013/1/7 15:17:08',N'�û��鿴���۶�����Ϣ(��˹��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5731,N'admin',N'2013/1/7 15:19:04',N'�û��鿴���۶�����Ϣ(��˹��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5732,N'admin',N'2013/1/7 15:19:04',N'�û��鿴���۶�����Ϣ(��˹��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5733,N'admin',N'2013/1/7 17:41:15',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5734,N'admin',N'2013/1/7 17:42:52',N'�û��鿴�տ�ƻ���Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5735,N'admin',N'2013/1/7 17:42:57',N'�û��鿴�տ�ƻ���Ϣ(ˮ����Ե�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5736,N'admin',N'2013/1/7 17:45:37',N'�û��鿴Ӧ����Ϣ(ˮ����Ե�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5737,N'admin',N'2013/1/7 17:48:35',N'�û��鿴Ӧ����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5738,N'admin',N'2013/1/7 17:49:35',N'�û��鿴Ӧ����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5739,N'admin',N'2013/1/8 11:14:27',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5740,N'admin',N'2013/1/8 11:14:34',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5741,N'admin',N'2013/1/8 14:21:11',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5742,N'admin',N'2013/1/8 14:34:50',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5743,N'admin',N'2013/1/8 15:00:01',N'�û��鿴�ͻ���Ϣ(����������Ź�ҵ��Ʒ���޹�˾)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5744,N'admin',N'2013/1/8 15:24:29',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5745,N'majh',N'2013/1/8 15:25:01',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5746,N'majh',N'2013/1/8 15:25:14',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5747,N'majh',N'2013/1/8 15:25:21',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5748,N'majh',N'2013/1/8 15:27:29',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5749,N'majh',N'2013/1/8 15:27:34',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5750,N'majh',N'2013/1/8 15:27:41',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5751,N'majh',N'2013/1/8 15:27:55',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5752,N'majh',N'2013/1/8 15:31:45',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5753,N'admin',N'2013/1/8 17:35:54',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5754,N'admin',N'2013/1/8 17:36:31',N'�û��޸���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5755,N'admin',N'2013/1/8 17:37:05',N'�û���׼ͨ����ͬ����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5756,N'admin',N'2013/1/8 17:38:10',N'�û���Ӳɹ�������Ϣ(��˹��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5757,N'majh',N'2013/1/8 17:39:10',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5758,N'admin',N'2013/1/8 17:40:44',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5759,N'admin',N'2013/1/8 17:45:54',N'�û��鿴���۶�����Ϣ(��˹��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5760,N'admin',N'2013/1/8 22:35:29',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5761,N'admin',N'2013/1/8 22:39:26',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5762,N'admin',N'2013/1/8 23:59:32',N'�û��鿴�ɹ�������Ϣ(��˹��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5763,N'admin',N'2013/1/9 0:02:40',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5764,N'admin',N'2013/1/9 15:30:41',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5765,N'admin',N'2013/1/9 15:35:39',N'�û��鿴���̱�����(ID��27)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5766,N'admin',N'2013/1/9 15:37:23',N'�û���ӽڵ㶨����Ϣ(3)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5767,N'admin',N'2013/1/9 15:37:33',N'�û��޸Ľڵ㶨����Ϣ(test2)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5768,N'admin',N'2013/1/9 15:38:13',N'�û��鿴���������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5769,N'admin',N'2013/1/10 11:04:11',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5770,N'admin',N'2013/1/10 11:06:20',N'�û�ɾ��Ӧ����Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5771,N'admin',N'2013/1/11 9:53:30',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5772,N'admin',N'2013/1/11 10:05:52',N'�û��鿴��Ʒ��Ϣ(����������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5773,N'admin',N'2013/1/14 16:29:08',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5774,N'admin',N'2013/1/14 16:50:58',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5775,N'admin',N'2013/1/14 22:19:32',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5776,N'admin',N'2013/1/14 23:20:53',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5777,N'admin',N'2013/1/14 23:23:53',N'�û��޸����������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5778,N'admin',N'2013/1/17 9:44:35',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5779,N'admin',N'2013/1/17 9:51:48',N'�û���׼ͨ����ͬ����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5780,N'admin',N'2013/1/17 9:51:53',N'�û���׼ͨ����ͬ����',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5781,N'admin',N'2013/1/17 9:53:40',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5782,N'admin',N'2013/1/17 9:54:19',N'�û�������ⲿ�ֻ�����(ˮ���)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5783,N'admin',N'2013/1/17 11:42:24',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5784,N'admin',N'2013/1/17 11:43:03',N'�û�������ⲿ�ֻ�����(ˮ���)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5785,N'admin',N'2013/1/17 13:49:55',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5786,N'admin',N'2013/1/17 13:51:09',N'�û��޸����������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5787,N'admin',N'2013/1/17 13:52:54',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5788,N'admin',N'2013/1/17 13:55:07',N'�û��޸����µ�����Ϣ(����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5789,N'admin',N'2013/1/17 13:55:44',N'�û��޸����µ�����Ϣ(��ȫʤ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5790,N'admin',N'2013/1/17 13:56:24',N'�û��޸����µ�����Ϣ(admin)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5791,N'admin',N'2013/1/17 14:27:06',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5792,N'admin',N'2013/1/17 14:36:38',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5793,N'admin',N'2013/1/17 14:38:29',N'�û��鿴���������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5794,N'admin',N'2013/1/17 14:39:38',N'�û�������������Ϣ(ssdf)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5795,N'admin',N'2013/4/13 23:09:17',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5796,N'admin',N'2013/4/13 23:15:10',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5797,N'admin',N'2013/4/13 23:24:36',N'�û��鿴���߿�����Ϣ(admin)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5798,N'admin',N'2013/4/13 23:27:43',N'�û��鿴���߿�����Ϣ(admin)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5799,N'admin',N'2013/4/13 23:41:14',N'�û��鿴���߿�����Ϣ(admin)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5800,N'admin',N'2013/4/13 23:42:21',N'�û��鿴���߿�����Ϣ(admin)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5801,N'admin',N'2013/4/13 23:50:18',N'�û���½ϵͳ',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5802,N'admin',N'2013/4/13 23:50:28',N'�û��鿴���߿�����Ϣ(admin)',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5803,N'admin',N'2013/4/13 23:51:54',N'�û�������߿�����Ϣ(�۶�Ա���״�֪ʶ�ʴ���--����Ծ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5804,N'admin',N'2013/4/13 23:51:59',N'�û��鿴���߿�����Ϣ(admin)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5805,N'admin',N'2013/4/13 23:56:51',N'�û�������߿�����Ϣ(�۶�Ա���״�֪ʶ�ʴ���--����Ծ�)',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5806,N'admin',N'2013/4/13 23:56:57',N'�û��鿴���߿�����Ϣ(admin)',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5807,N'admin',N'2013/4/13 23:57:33',N'�û�������߿�����Ϣ(�۶�Ա���״�֪ʶ�ʴ���--����Ծ�)',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5808,N'admin',N'2013/4/14 0:20:08',N'�û��������ѧϰ��Ϣ(ghvv)',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5809,N'admin',N'2013/4/14 0:24:08',N'�û����ѧϰ�ĵ���Ϣ(vhb)',N'192.168.1.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5810,N'admin',N'2013/4/14 0:32:01',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5811,N'admin',N'2013/4/14 0:53:03',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5812,N'admin',N'2013/4/14 0:57:05',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5813,N'admin',N'2013/4/14 21:18:43',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5814,N'admin',N'2013/4/14 21:19:18',N'�û����Ӧ�ռƻ���Ϣ()',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5815,N'admin',N'2013/4/14 21:21:20',N'�û�ɾ��Ӧ����Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5816,N'admin',N'2013/4/14 21:21:39',N'�û����Ӧ�ռƻ���Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5817,N'admin',N'2013/4/14 21:25:49',N'�û���Ӹ���ƻ���Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5818,N'admin',N'2013/4/14 21:26:40',N'�û��޸�Ӧ����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5819,N'admin',N'2013/4/14 21:28:03',N'�û�ɾ��Ӧ����Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5820,N'admin',N'2013/4/14 21:28:33',N'�û�����տ�ƻ���Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5821,N'admin',N'2013/4/14 21:28:41',N'�û�ɾ��Ӧ����Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5822,N'admin',N'2013/4/14 21:28:53',N'�û��޸�Ӧ����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5823,N'admin',N'2013/4/14 21:41:19',N'�û���½ϵͳ',N'192.168.1.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5824,N'admin',N'2013/4/14 21:41:33',N'�û��鿴ѧϰ�ĵ���Ϣ(vhb)',N'192.168.1.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5825,N'admin',N'2013/4/14 21:53:40',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5826,N'admin',N'2013/4/14 22:22:49',N'�û���½ϵͳ',N'192.168.1.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5827,N'admin',N'2013/4/14 22:23:02',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5828,N'admin',N'2013/4/14 22:30:16',N'�û���½ϵͳ',N'192.168.1.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5829,N'admin',N'2013/4/14 22:31:25',N'�û��鿴ѧϰ�ĵ���Ϣ(vhb)',N'192.168.1.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5830,N'admin',N'2013/4/14 22:33:10',N'�û��鿴���������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'192.168.1.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5831,N'admin',N'2013/4/14 22:34:27',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5832,N'admin',N'2013/4/14 22:36:11',N'�û�������������Ϣ(dfg)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5833,N'admin',N'2013/4/14 22:36:18',N'�û��鿴���������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5834,N'admin',N'2013/4/15 21:50:33',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5835,N'admin',N'2013/4/15 21:50:59',N'�û��鿴�˵�������Ϣ(��Ŀ��Ϣ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5836,N'admin',N'2013/4/15 21:51:46',N'�û���Ӳ˵�������Ϣ(��Ŀ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5837,N'admin',N'2013/4/15 21:52:34',N'�û��޸Ľ�ɫ��Ϣ(��������Ա)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5838,N'admin',N'2013/4/15 21:52:53',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5839,N'admin',N'2013/4/15 22:01:21',N'�û��޸Ĳ˵�������Ϣ(��Ŀ����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5840,N'admin',N'2013/4/15 22:08:22',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5841,N'admin',N'2013/4/15 22:41:09',N'�û������Ŀ������Ϣ(XXXչ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5842,N'admin',N'2013/4/15 22:42:29',N'�鿴��Ŀ��Ϣ()',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5843,N'admin',N'2013/4/15 22:42:57',N'�鿴��Ŀ������Ϣ(XXXչ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5844,N'admin',N'2013/4/15 22:43:18',N'�û��޸���Ŀ������Ϣ(XXXչ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5845,N'admin',N'2013/4/15 22:43:20',N'�鿴��Ŀ������Ϣ(XXXչ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5846,N'admin',N'2013/4/15 22:49:08',N'�û��޸Ĳ˵�������Ϣ(�ɽ�����)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5847,N'admin',N'2013/4/15 22:49:26',N'�û��޸Ĳ˵�������Ϣ(����֪ͨ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5848,N'admin',N'2013/4/15 22:51:02',N'�û��޸Ĳ˵�������Ϣ(�տ�ˮ��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5849,N'admin',N'2013/4/15 22:54:26',N'�û��޸Ĳ˵�������Ϣ(�������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5850,N'admin',N'2013/4/15 23:04:15',N'�û��޸Ĳ˵�������Ϣ(��Ŀë��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5851,N'admin',N'2013/4/15 23:09:29',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5852,N'admin',N'2013/4/15 23:09:47',N'�鿴��Ŀ��Ϣ(����Ϣ��ʵʩ��Ŀ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5853,N'admin',N'2013/4/15 23:21:44',N'�û�ɾ�����������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5854,N'admin',N'2013/4/15 23:21:55',N'�û�ɾ����������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5855,N'admin',N'2013/4/15 23:22:02',N'�û�ɾ��ʵʩ��־��Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5856,N'admin',N'2013/4/15 23:22:06',N'�û�ɾ���տ���Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5857,N'admin',N'2013/4/15 23:22:12',N'�û�ɾ����Ŀ������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5858,N'admin',N'2013/4/15 23:22:17',N'�û�ɾ��������Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5859,N'admin',N'2013/4/15 23:22:21',N'�û�ɾ����Ŀ��Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5860,N'admin',N'2013/4/15 23:22:28',N'�û��ܾ���������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5861,N'admin',N'2013/4/15 23:22:37',N'�û�ɾ����������',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5862,N'admin',N'2013/4/15 23:23:21',N'�û������Ŀ��Ϣ(XXXչ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5863,N'admin',N'2013/4/15 23:25:31',N'�û����������Ϣ(XXXչ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5864,N'admin',N'2013/4/15 23:26:12',N'�û������Ŀ������Ϣ(XXXչ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5865,N'admin',N'2013/4/15 23:26:52',N'�û�����տ���Ϣ(XXXչ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5866,N'admin',N'2013/8/13 20:37:38',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5867,N'admin',N'2013/8/13 21:20:24',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5868,N'admin',N'2013/11/4 17:43:56',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5869,N'admin',N'2013/11/9 10:28:48',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5870,N'admin',N'2013/11/9 10:29:34',N'�û���½ϵͳ',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5871,N'admin',N'2013/11/9 10:30:03',N'�û��鿴���̱�����(ID��28)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5872,N'admin',N'2013/11/9 10:30:33',N'�û��鿴���������Ϣ(���ñ���)',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5873,N'admin',N'2013/11/9 10:30:43',N'�û��鿴���̱���Ϣ(���ĵǼ�-����)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5874,N'admin',N'2013/11/9 10:30:48',N'�û��鿴���̱�����(ID��28)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5875,N'admin',N'2013/11/9 10:31:18',N'�û��鿴���̱���Ϣ(��ְ���뵥)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5876,N'admin',N'2013/11/9 10:32:40',N'�û��鿴���������Ϣ(������־����)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5877,N'admin',N'2013/11/9 10:33:58',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5878,N'admin',N'2013/11/9 10:34:17',N'�û��鿴����������Ϣ(admin--Ա���������(2012-03-2))',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5879,N'admin',N'2013/11/9 10:35:01',N'�û��鿴�ʼ�(�����µ�������Ҫִ�У�(dfg))',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5880,N'admin',N'2013/11/9 10:35:32',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5881,N'admin',N'2013/11/9 10:37:00',N'�û�����ļ���Ϣ(bug��¼HUQIBIN.docx)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5882,N'admin',N'2013/11/9 10:37:05',N'�鿴�ļ���Ϣ(bug��¼HUQIBIN.docx)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5883,N'admin',N'2013/11/9 10:38:24',N'�û��鿴�ļ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5884,N'admin',N'2013/11/9 10:38:40',N'�û��鿴�ļ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5885,N'admin',N'2013/11/9 10:39:25',N'�鿴�ļ���Ϣ(�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt)',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5886,N'admin',N'2013/11/9 10:42:38',N'�鿴�ļ���Ϣ(bug��¼HUQIBIN.docx)',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5887,N'admin',N'2013/11/9 10:45:18',N'�û�����ճ̰�����Ϣ(test1)',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5888,N'admin',N'2013/11/9 10:46:37',N'�û�����ճ̰�����Ϣ(test2)',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5889,N'admin',N'2013/11/9 10:48:34',N'�û����ù���ί����Ϣ(��ί���ˣ�����)',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5890,N'admin',N'2013/11/9 10:50:48',N'�û��鿴���̶�����Ϣ(���ñ�������)',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5891,N'admin',N'2013/11/9 10:51:42',N'�û�����������Ϣ(admin--�ɹ���������(2013/1/7))',N'192.168.0.110')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5892,N'admin',N'2013/11/9 10:57:53',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5893,N'admin',N'2013/11/9 11:01:48',N'�û�������̱���Ϣ(�ճ��칫����)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5894,N'admin',N'2013/11/9 11:02:30',N'�û��޸����̱�����(ID��31)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5895,N'admin',N'2013/11/9 11:02:36',N'�û��鿴���̱�����(ID��31)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5896,N'admin',N'2013/11/9 11:06:07',N'�û��鿴���߿�����Ϣ(admin)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5897,N'admin',N'2013/11/9 11:07:46',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5898,N'admin',N'2013/11/9 11:08:14',N'�鿴��Ŀ��Ϣ(XXXչ)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5899,N'admin',N'2013/11/9 11:11:56',N'�鿴�ļ���Ϣ(�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5900,N'admin',N'2013/11/9 11:12:23',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5901,N'admin',N'2013/11/11 8:39:33',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5902,N'admin',N'2013/11/11 8:41:55',N'�û�������û�(liyiyang)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5903,N'admin',N'2013/11/11 8:42:08',N'�鿴�û���Ϣ(������)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5904,N'liyiyang',N'2013/11/11 8:42:33',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5905,N'admin',N'2013/11/11 8:42:52',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5906,N'admin',N'2013/11/11 8:43:50',N'�û���ӽ�ɫ��Ϣ(��Ŀ����)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5907,N'admin',N'2013/11/11 8:44:47',N'�û��޸Ľ�ɫ��Ϣ(��Ŀ����)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5908,N'admin',N'2013/11/11 8:45:36',N'�û�������û�(zhoujun)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5909,N'admin',N'2013/11/11 8:46:04',N'�û���������Ա��(zhoujun)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5910,N'admin',N'2013/11/11 8:47:05',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5911,N'admin',N'2013/11/11 8:47:58',N'�û��޸Ŀ���ʱ������',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5912,N'liyiyang',N'2013/11/11 8:49:07',N'�û���½ϵͳ',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5913,N'admin',N'2013/11/11 8:49:47',N'�û�������û�(zhushuisheng)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5914,N'admin',N'2013/11/11 8:50:13',N'�û���������Ա��(zhushuisheng)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5915,N'zhoujun',N'2013/11/11 8:50:55',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5916,N'zhoujun',N'2013/11/11 8:51:52',N'�û��鿴��ɫ��Ϣ(��Ŀ����)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5917,N'liyiyang',N'2013/11/11 8:53:12',N'�û��޸���������',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5918,N'liyiyang',N'2013/11/11 8:53:52',N'�û��޸�������ʾ��Ϣ(������־)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5919,N'liyiyang',N'2013/11/11 8:55:11',N'�û���ӹ�����־��Ϣ(hello first day)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5920,N'liyiyang',N'2013/11/11 8:56:27',N'�û���ӹ�����־��Ϣ(test)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5921,N'liyiyang',N'2013/11/11 8:56:54',N'�鿴�ļ���Ϣ(�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5922,N'liyiyang',N'2013/11/11 9:02:34',N'�û�����ϵͳ���Ѳ���',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5923,N'liyiyang',N'2013/11/11 9:02:55',N'�û���ӳ���������Ϣ(13131)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5924,N'liyiyang',N'2013/11/11 9:08:14',N'�û����ǩ���ļ�����Ϣ(as)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5925,N'liyiyang',N'2013/11/11 9:11:39',N'�û���ӹ����ƻ���Ϣ(fsd)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5926,N'liyiyang',N'2013/11/11 9:12:17',N'�û���ӹ����㱨��Ϣ(th)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5927,N'liyiyang',N'2013/11/11 9:12:22',N'�鿴�����㱨��Ϣ(th)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5928,N'liyiyang',N'2013/11/11 9:13:52',N'�û��鿴�ʼ�(�����µĹ�����Ҫ����(admin--���ĵǼ�����(2012/10/7)))',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5929,N'liyiyang',N'2013/11/11 9:14:21',N'�û�����ļ�����Ϣ(ol.)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5930,N'liyiyang',N'2013/11/11 9:15:16',N'�û�����ļ���Ϣ(Snap12.png)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5931,N'liyiyang',N'2013/11/11 9:15:24',N'�鿴�ļ���Ϣ(Snap12.png)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5932,N'liyiyang',N'2013/11/11 9:16:44',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5933,N'liyiyang',N'2013/11/11 9:19:36',N'�û��������(�ͻ��ֳ��������⣬ͬʱ��ϵפ�㹤��ʦ)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5934,N'liyiyang',N'2013/11/11 9:20:30',N'�û��鿴����ѧϰ��Ϣ(�۶��Ƽ�Ա����ְѧϰ����)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5935,N'liyiyang',N'2013/11/11 9:21:29',N'�û�������߿�����Ϣ(�۶�Ա���״�֪ʶ�ʴ���)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5936,N'liyiyang',N'2013/11/11 9:21:34',N'�û��鿴���߿�����Ϣ(liyiyang)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5937,N'liyiyang',N'2013/11/11 9:22:40',N'�û���ӻ�Ա��Ϣ( vcb)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5938,N'liyiyang',N'2013/11/11 9:23:04',N'�û���ӿͻ���Ϣ(op)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5939,N'liyiyang',N'2013/11/11 9:24:40',N'�û�������۶�����Ϣ(l;)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5940,N'liyiyang',N'2013/11/11 9:25:18',N'�û��鿴�տ�ƻ���Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5941,N'liyiyang',N'2013/11/11 9:26:12',N'�û��鿴��Ʒ��Ϣ(����������)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5942,N'liyiyang',N'2013/11/11 9:26:44',N'�û��鿴����ƻ���Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5943,N'liyiyang',N'2013/11/11 9:26:58',N'�û��鿴��Ӧ����Ϣ(�������)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5944,N'liyiyang',N'2013/11/11 9:27:04',N'�û��鿴��Ӧ����ϵ����Ϣ(�������)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5945,N'liyiyang',N'2013/11/11 9:27:21',N'�û��鿴��Ӧ����ϵ����Ϣ(�������)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5946,N'liyiyang',N'2013/11/11 9:28:02',N'�û����Ӧ�ռƻ���Ϣ(X)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5947,N'liyiyang',N'2013/11/11 9:28:14',N'�û��鿴Ӧ����Ϣ(X)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5948,N'liyiyang',N'2013/11/11 9:28:20',N'�û��鿴��������Ϣ(sdf)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5949,N'liyiyang',N'2013/11/11 9:29:59',N'�û���ӽ����ƶ���Ϣ(vds)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5950,N'liyiyang',N'2013/11/11 9:30:03',N'�û��鿴�����ƶ���Ϣ(vds)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5951,N'liyiyang',N'2013/11/11 9:30:37',N'�û��鿴���������Ϣ(������־����)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5952,N'liyiyang',N'2013/11/11 9:31:39',N'�û��鿴���������Ϣ(��Ŀ������Ϣ����)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5953,N'liyiyang',N'2013/11/11 9:31:45',N'�û��鿴���������Ϣ(��Ա��Ϣ����)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5954,N'liyiyang',N'2013/11/11 9:31:48',N'�û��鿴���������Ϣ(������־)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5955,N'liyiyang',N'2013/11/11 9:31:52',N'�û��鿴���������Ϣ(��Ӧ����Ϣ����)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5956,N'liyiyang',N'2013/11/11 9:32:10',N'�û������̳������Ϣ(jh.)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5957,N'liyiyang',N'2013/11/11 9:32:42',N'�û��鿴��̳������Ϣ(ͨ�����ҵ��������룬ͨ�������˽�����ͨ����ʵ�����롣)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5958,N'liyiyang',N'2013/11/11 9:33:21',N'�û��鿴��̳������Ϣ(ͨ�����ҵ��������룬ͨ�������˽�����ͨ����ʵ�����롣)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5959,N'liyiyang',N'2013/11/11 9:33:29',N'�û��鿴��̳������Ϣ(ʮ��İٶ���һ���������ҵ��ʮ��İٶ���һ�����㵽�ڵ�ͻ�ơ�)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5960,N'liyiyang',N'2013/11/11 9:33:58',N'�û��鿴��̳������Ϣ(ʮ��İٶ���һ���������ҵ��ʮ��İٶ���һ�����㵽�ڵ�ͻ�ơ�)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5961,N'liyiyang',N'2013/11/11 9:39:49',N'�鿴�û���Ϣ(�Ź���)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5962,N'liyiyang',N'2013/11/11 9:40:06',N'�鿴�û���Ϣ(��Ϊ��)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5963,N'liyiyang',N'2013/11/11 10:22:43',N'�û���½ϵͳ',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5964,N'admin',N'2013/11/11 10:24:23',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5965,N'admin',N'2013/11/11 10:28:56',N'�û��޸Ľ�ɫ��Ϣ(��Ŀ����)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5966,N'liyiyang',N'2013/11/11 10:30:15',N'�û�������ʼ�(dg)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5967,N'liyiyang',N'2013/11/11 10:30:44',N'�û�������ʼ�(reg)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5968,N'liyiyang',N'2013/11/11 10:34:48',N'�û�������ڲ��ֻ�����(sdf)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5969,N'liyiyang',N'2013/11/11 13:20:12',N'�û���½ϵͳ',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5970,N'admin',N'2013/11/12 9:29:46',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5971,N'liyiyang',N'2013/11/12 11:33:29',N'�û���½ϵͳ',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5972,N'admin',N'2013/11/12 14:07:01',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5973,N'liyiyang',N'2013/11/12 14:50:43',N'�û���½ϵͳ',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5974,N'liyiyang',N'2013/11/12 14:54:16',N'�û���ӹ����㱨��Ϣ(�������Դ���νṹ�㱨)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5975,N'liyiyang',N'2013/11/12 14:54:23',N'�鿴�����㱨��Ϣ(�������Դ���νṹ�㱨)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5976,N'admin',N'2013/11/13 10:54:54',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5977,N'admin',N'2013/11/13 10:55:14',N'�û���½ϵͳ',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5978,N'admin',N'2013/11/13 10:55:26',N'�鿴�ļ���Ϣ(bug��¼HUQIBIN.docx)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5979,N'admin',N'2013/11/13 10:56:56',N'�û���½ϵͳ',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5980,N'admin',N'2013/11/13 10:57:40',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2013/11/13))',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5981,N'admin',N'2013/11/13 10:57:47',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2013/11/13))',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5982,N'admin',N'2013/11/13 13:35:43',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5983,N'admin',N'2013/11/13 13:36:35',N'�û��鿴н�������Ϣ(��������)',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5984,N'admin',N'2013/11/13 13:36:37',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5985,N'admin',N'2013/11/13 13:36:44',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5986,N'admin',N'2013/11/13 13:36:49',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5987,N'liyiyang',N'2013/11/14 16:48:45',N'�û���½ϵͳ',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5988,N'liyiyang',N'2013/11/14 16:51:06',N'�û���Ӵ����ļ�(����ѧϰ����)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5989,N'liyiyang',N'2013/11/14 16:51:10',N'�û��鿴�ļ�(����ѧϰ����)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5990,N'liyiyang',N'2013/11/14 16:51:26',N'�û�ɾ�����ӻ�ǩ�ļ�',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5991,N'liyiyang',N'2013/11/14 16:51:52',N'�û���Ӵ����ļ�(����ѧϰ�ƻ�)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5992,N'liyiyang',N'2013/11/14 17:12:59',N'�û���½ϵͳ',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5993,N'liyiyang',N'2013/11/14 17:13:07',N'�û��鿴�ļ�(����ѧϰ�ƻ�)',N'192.168.0.142')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5994,N'admin',N'2013/11/19 9:59:49',N'�û���½ϵͳ',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5995,N'admin',N'2013/11/19 11:43:49',N'�û��鿴�Ծ������Ϣ(�۶�Ա���״�֪ʶ�ʴ���--����Ծ�)',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5996,N'admin',N'2013/11/19 11:43:58',N'�û��鿴���߿�����Ϣ(admin)',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5997,N'admin',N'2013/11/19 14:08:49',N'�û������˹��ľ�(liyiyang)',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5998,N'admin',N'2013/11/19 14:09:15',N'�û������˹��ľ�(liyiyang)',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 5999,N'admin',N'2013/11/19 17:59:56',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6000,N'admin',N'2013/12/5 15:22:26',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6001,N'admin',N'2013/12/12 10:29:09',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6002,N'admin',N'2013/12/12 10:44:05',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6003,N'admin',N'2013/12/12 10:48:49',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6004,N'admin',N'2013/12/12 10:58:36',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6005,N'admin',N'2013/12/12 11:00:09',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6006,N'admin',N'2013/12/12 11:03:29',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6007,N'admin',N'2013/12/12 14:46:23',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6008,N'NoLogin',N'2013/12/12 18:16:35',N'�û�������ⲿ�ֻ�����(����һ���������˺ŷ��͵Ķ��š�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6009,N'admin',N'2013/12/12 18:19:00',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6010,N'admin',N'2013/12/12 18:19:41',N'�û�������ⲿ�ֻ�����(zheshi���˺Ŷ��Ų��ԡ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6011,N'admin',N'2013/12/13 8:38:54',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6012,N'admin',N'2013/12/13 8:43:35',N'�û�������ⲿ�ֻ�����(���˺Ŷ��Ų���0843��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6013,N'admin',N'2013/12/13 16:54:32',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6014,N'admin',N'2013/12/13 17:00:42',N'�û�������ⲿ�ֻ�����(�������˺ŷ��Ͷ��Ų��ԡ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6015,N'admin',N'2013/12/13 17:03:45',N'�û�������ⲿ�ֻ�����(�������˺ŷ��Ͷ��Ų��ԡ�1703)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6016,N'admin',N'2013/12/13 17:14:33',N'�û�������ⲿ�ֻ�����(���˺�tp01���Ͷ��Ų���.)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6017,N'admin',N'2013/12/13 17:18:56',N'�û�������ⲿ�ֻ�����(���˺ŷ��Ͷ����ٲ��ԡ�1718)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6018,N'admin',N'2013/12/13 17:20:48',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6019,N'admin',N'2013/12/13 17:21:26',N'�û�������ⲿ�ֻ�����(���˺ŷ��Ͷ��Ų��ԡ�1721)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6020,N'admin',N'2013/12/13 17:30:30',N'�û�������ⲿ�ֻ�����(�����˺ŷ��Ͷ��Ų��ԡ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6021,N'admin',N'2013/12/13 17:31:54',N'�û�������ⲿ�ֻ�����(�����˺ŷ��Ͷ��Ų��ԡ�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6022,N'admin',N'2013/12/13 18:53:21',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6023,N'admin',N'2014/1/2 16:33:32',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6024,N'admin',N'2014/1/2 16:34:41',N'�û�������ⲿ�ֻ�����(����һ��OA֪ͨ���ԵĶ��š�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6025,N'admin',N'2014/1/2 16:36:45',N'�û��鿴����������Ϣ(admin--��Դ��������(2012-03-2))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6026,N'admin',N'2014/1/2 16:41:43',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6027,N'admin',N'2014/1/2 16:42:04',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6028,N'admin',N'2014/1/4 8:50:10',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6029,N'admin',N'2014/1/4 8:54:40',N'�鿴�û���Ϣ(��ȫʤ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6030,N'admin',N'2014/1/4 8:57:22',N'�û�ɾ���û���Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6031,N'admin',N'2014/1/4 8:57:28',N'�û�ɾ���û���Ϣ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6032,N'admin',N'2014/1/4 9:05:59',N'�û��޸��û���Ϣ(�Ź���)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6033,N'admin',N'2014/1/4 9:06:16',N'�û��޸��û���Ϣ(������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6034,N'admin',N'2014/1/4 9:06:23',N'�鿴�û���Ϣ(������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6035,N'admin',N'2014/1/4 9:17:22',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2014/1/4))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6036,N'admin',N'2014/1/4 17:00:17',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2014/1/4))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6037,N'admin',N'2014/1/4 17:01:32',N'�û����Ͷ���(������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6038,N'admin',N'2014/1/4 17:01:32',N'�û�������ڲ��ֻ�����(����һ��OA֪ͨ���ԵĶ��š�1701��)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6039,N'admin',N'2014/1/4 17:06:24',N'�û����Ͷ���(������,�Ź���)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6040,N'admin',N'2014/1/4 17:06:40',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2014/1/4))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6041,N'admin',N'2014/1/4 17:06:50',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6042,N'admin',N'2014/1/4 17:07:02',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/1/4))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6043,N'admin',N'2014/1/4 17:11:18',N'�û����Ͷ���(������)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6044,N'admin',N'2014/1/4 17:11:18',N'�û�����¹�����Ϣ(admin--�ɹ���������(2014/1/4))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6045,N'admin',N'2014/1/5 9:57:07',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6046,N'admin',N'2014/1/6 9:18:50',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6047,N'admin',N'2014/1/6 9:18:53',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6048,N'admin',N'2014/1/6 9:20:18',N'�û�������ⲿ�ֻ�����(����һ��OA�ⲿ���ŷ��Ͳ��ԣ������̡�)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6049,N'admin',N'2014/1/6 11:07:01',N'�û�������ⲿ�ֻ�����(����OAϵͳʹ����ͨ���緢�͵Ĳ��Զ��š�1106)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6050,N'admin',N'2014/1/13 10:58:54',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6051,N'admin',N'2014/1/13 10:59:08',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6052,N'admin',N'2014/1/15 11:28:11',N'�û���½ϵͳ',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6053,N'admin',N'2014/1/15 15:56:59',N'�û���½ϵͳ',N'192.168.0.165')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6054,N'admin',N'2014/1/16 10:35:01',N'�û���½ϵͳ',N'183.230.8.153')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6055,N'admin',N'2014/1/16 10:36:58',N'�û���½ϵͳ',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6056,N'admin',N'2014/1/16 10:39:39',N'�鿴��Ŀ��Ϣ(XXXչ)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6057,N'admin',N'2014/1/16 10:40:01',N'�û���½ϵͳ',N'27.10.81.200')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6058,N'admin',N'2014/1/16 10:40:06',N'�鿴������Ϣ(XXXչ)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6059,N'admin',N'2014/1/16 10:44:07',N'�û��鿴�ʼ�(test)',N'27.10.81.200')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6060,N'admin',N'2014/1/16 10:49:28',N'�û���½ϵͳ',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6061,N'admin',N'2014/1/16 10:52:00',N'�û���½ϵͳ',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6062,N'admin',N'2014/1/16 10:54:08',N'�û�������ʼ�(xxzxzx)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6063,N'admin',N'2014/1/16 10:54:21',N'�û��鿴�ʼ�(xxzxzx)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6064,N'admin',N'2014/1/16 10:54:35',N'�û��鿴�ʼ�(xxzxzx)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6065,N'admin',N'2014/1/16 10:55:57',N'�û�������ʼ�(������ϵ)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6066,N'admin',N'2014/1/16 10:56:29',N'�û��鿴�ʼ�(������ϵ)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6067,N'admin',N'2014/1/16 10:58:58',N'�û��鿴���������Ϣ(�ͻ���ϵ��¼����)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6068,N'admin',N'2014/1/16 10:59:02',N'�û��鿴���������Ϣ(������־����)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6069,N'admin',N'2014/1/16 11:12:31',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6070,N'admin',N'2014/1/16 11:28:26',N'�û��鿴���߿�����Ϣ(admin)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6071,N'admin',N'2014/1/16 11:28:26',N'�û��鿴���߿�����Ϣ(admin)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6072,N'admin',N'2014/1/16 11:29:03',N'�û��鿴���߿�����Ϣ(liyiyang)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6073,N'admin',N'2014/1/16 11:44:30',N'�û������Ŀ��Ϣ(5rt5rt)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6074,N'admin',N'2014/1/16 11:46:46',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6075,N'admin',N'2014/1/16 11:47:45',N'�û�������ʼ�(112222)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6076,N'admin',N'2014/1/16 11:49:48',N'�û�������ʼ�(112222)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6077,N'admin',N'2014/1/16 11:49:53',N'�û��鿴�ʼ�(112222)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6078,N'admin',N'2014/1/16 11:50:42',N'�û��鿴���������Ϣ(ҵ�񱨱�)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6079,N'admin',N'2014/1/16 15:24:36',N'�û��������(��λ����������ܽ���)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6080,N'admin',N'2014/1/16 16:44:53',N'�û��鿴��Ч������Ϣ(�۶��Ƽ�Ա��3�·ݼ�Ч���˻���)',N'218.64.89.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6081,N'admin',N'2014/1/23 10:44:54',N'�û���½ϵͳ',N'183.1.162.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6082,N'admin',N'2014/1/23 10:50:49',N'�û��鿴���̱�����(ID��28)',N'183.1.162.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6083,N'admin',N'2014/1/23 10:58:31',N'�û��鿴���̶�����Ϣ(Ա���������)',N'183.1.162.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6084,N'admin',N'2014/1/23 13:06:16',N'�û��鿴�ʼ�(112222)',N'183.1.162.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6085,N'admin',N'2014/1/23 13:07:11',N'�û��鿴����������Ϣ(admin--�ɹ���������(2014/1/4))',N'183.1.162.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6086,N'admin',N'2014/1/23 13:08:24',N'�û�������̶�����Ϣ(��������)',N'183.1.162.103')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6087,N'admin',N'2014/2/11 8:56:18',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6088,N'admin',N'2014/2/11 10:06:19',N'�û���½ϵͳ',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6089,N'admin',N'2014/2/11 10:08:07',N'�鿴�û���Ϣ(������)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6090,N'admin',N'2014/2/11 10:08:07',N'�鿴�û���Ϣ(������)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6091,N'admin',N'2014/2/11 10:08:08',N'�鿴�û���Ϣ(������)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6092,N'admin',N'2014/2/11 10:08:09',N'�鿴�û���Ϣ(������)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6093,N'admin',N'2014/2/11 10:08:09',N'�鿴�û���Ϣ(liyiyang)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6094,N'admin',N'2014/2/11 10:08:10',N'�鿴�û���Ϣ(������)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6095,N'admin',N'2014/2/11 10:08:10',N'�鿴�û���Ϣ(admin)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6096,N'admin',N'2014/2/11 10:08:11',N'�鿴�û���Ϣ(�ܱ�)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6097,N'admin',N'2014/2/11 10:08:11',N'�鿴�û���Ϣ(����)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6098,N'admin',N'2014/2/11 10:08:12',N'�鿴�û���Ϣ(������)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6099,N'admin',N'2014/2/11 10:08:12',N'�鿴�û���Ϣ(��ȫʤ)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6100,N'admin',N'2014/2/11 10:08:13',N'�鿴�û���Ϣ(majh)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6101,N'admin',N'2014/2/11 10:08:13',N'�鿴�û���Ϣ(������)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6102,N'admin',N'2014/2/11 10:08:42',N'�û��鿴���º�ͬ��Ϣ(��Ϊ��)',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6103,N'admin',N'2014/2/11 10:18:25',N'�û��鿴����������Ϣ(admin--��Դ��������(2012-03-2))',N'116.239.8.130')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6104,N'admin',N'2014/2/19 9:00:50',N'�û���½ϵͳ',N'222.175.222.26')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6105,N'admin',N'2014/2/19 9:23:22',N'�û���½ϵͳ',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6106,N'admin',N'2014/2/19 9:26:44',N'�û�������ⲿ�ֻ�����(�����ֻ����Ź��ܣ�)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6107,N'admin',N'2014/2/19 9:28:01',N'�û��鿴�ʼ�(112222)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6108,N'admin',N'2014/2/19 9:31:04',N'�û���½ϵͳ',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6109,N'admin',N'2014/2/19 9:34:35',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6110,N'admin',N'2014/2/19 9:34:56',N'�鿴�ļ���Ϣ(�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6111,N'admin',N'2014/2/19 9:37:58',N'�û��鿴���������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6112,N'admin',N'2014/2/19 9:40:27',N'�û�����������Ϣ()',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6113,N'admin',N'2014/2/19 9:42:13',N'�û��鿴�ʼ�(��תվ�ļ���������)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6114,N'admin',N'2014/2/19 9:43:19',N'�û���½ϵͳ',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6115,N'admin',N'2014/2/19 9:43:51',N'�鿴�ļ���Ϣ(�½� Microsoft Excel ������.xls)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6116,N'admin',N'2014/2/19 9:44:00',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6117,N'admin',N'2014/2/19 9:44:05',N'�鿴�ļ���Ϣ(�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6118,N'admin',N'2014/2/19 9:44:10',N'�鿴�ļ���Ϣ(�½� Microsoft Excel ������.xls)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6119,N'admin',N'2014/2/19 9:44:32',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6120,N'admin',N'2014/2/19 9:44:41',N'�鿴�ļ���Ϣ(�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6121,N'admin',N'2014/2/19 9:44:45',N'�鿴�ļ���Ϣ(�½� Microsoft Excel ������.xls)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6122,N'admin',N'2014/2/19 9:47:20',N'�û�����������Ϣ()',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6123,N'admin',N'2014/2/19 9:47:21',N'�û�������(admin--Ա���������(2012-03-2))',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6124,N'admin',N'2014/2/19 9:55:01',N'�û��鿴�ʼ�(������ϵ)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6125,N'admin',N'2014/2/19 10:01:30',N'�û�����ϵͳ���Ѳ���',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6126,N'admin',N'2014/2/19 10:01:43',N'�鿴����������Ϣ(��ת����Ϣ���������ת�ش���)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6127,N'admin',N'2014/2/19 10:02:57',N'�鿴�û���Ϣ(liyiyang)',N'221.204.94.196')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6128,N'admin',N'2014/2/19 10:43:39',N'�û��鿴���������Ϣ(������Ϣ����)',N'222.175.222.26')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6129,N'NoLogin',N'2014/2/19 10:43:40',N'�û��鿴���������Ϣ(������Ϣ����)',N'119.147.146.189')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6130,N'NoLogin',N'2014/2/19 10:44:45',N'�û��鿴���������Ϣ(������Ϣ����)',N'119.147.146.189')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6131,N'admin',N'2014/2/19 11:42:48',N'�û��鿴���̱���Ϣ(�ճ��칫����)',N'222.175.222.26')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6132,N'NoLogin',N'2014/2/19 11:42:48',N'�û��鿴���̱���Ϣ(�ճ��칫����)',N'119.147.146.189')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6133,N'NoLogin',N'2014/2/19 11:43:07',N'�û��鿴���̱���Ϣ(�ճ��칫����)',N'119.147.146.189')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6134,N'admin',N'2014/2/19 11:50:09',N'�û���ӽڵ㶨����Ϣ(�쵼����)',N'222.175.222.26')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6135,N'admin',N'2014/2/19 11:54:36',N'�û�������̶�����Ϣ(11)',N'222.175.222.26')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6136,N'admin',N'2014/2/19 11:56:39',N'�û��鿴���º�ͬ��Ϣ(��Ϊ��)',N'222.175.222.26')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6137,N'admin',N'2014/2/19 11:59:22',N'�û���½ϵͳ',N'222.175.222.26')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6138,N'admin',N'2014/2/19 13:12:49',N'�û���½ϵͳ',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6139,N'admin',N'2014/2/19 13:36:37',N'�û��鿴����������Ϣ(admin--�ɹ���������(2014/1/4))',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6140,N'admin',N'2014/2/19 13:40:53',N'�û���½ϵͳ',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6141,N'admin',N'2014/2/19 13:40:54',N'�û��鿴���̱���Ϣ(�ճ��칫����)',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6142,N'admin',N'2014/2/19 13:40:57',N'�û��鿴���̱�����(ID��31)',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6143,N'admin',N'2014/2/19 13:41:02',N'�û��鿴���̱�����(ID��28)',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6144,N'admin',N'2014/2/19 13:41:13',N'�û��鿴���̱�����(ID��27)',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6145,N'admin',N'2014/2/19 13:41:16',N'�û��鿴���̱�����(ID��15)',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6146,N'admin',N'2014/2/19 13:45:36',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6147,N'admin',N'2014/2/19 14:02:04',N'�û���½ϵͳ',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6148,N'admin',N'2014/2/19 14:13:22',N'�û���½ϵͳ',N'222.175.222.26')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6149,N'admin',N'2014/2/19 14:44:49',N'�û���½ϵͳ',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6150,N'admin',N'2014/2/19 14:46:56',N'�û��鿴�˵�������Ϣ(���˰칫)',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6151,N'admin',N'2014/2/19 14:52:31',N'�û��鿴����������Ϣ(admin--��ְ��������(2012-03-2))',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6152,N'admin',N'2014/2/19 15:13:27',N'�û��鿴��ɫ��Ϣ(��Ŀ����)',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6153,N'admin',N'2014/2/19 15:31:23',N'�û���½ϵͳ',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6154,N'admin',N'2014/2/19 15:34:52',N'�û��鿴���������Ϣ(���ñ���)',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6155,N'admin',N'2014/2/19 15:57:19',N'�û���½ϵͳ',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6156,N'admin',N'2014/2/19 15:58:57',N'�û��鿴����ѧϰ��Ϣ(ghvv)',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6157,N'admin',N'2014/2/19 16:50:59',N'�û���½ϵͳ',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6158,N'admin',N'2014/2/19 16:51:22',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6159,N'admin',N'2014/2/19 16:51:24',N'�û��鿴������Ʒ��Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6160,N'admin',N'2014/2/19 16:51:39',N'�û��鿴������Ʒ��Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'60.217.122.237')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6161,N'admin',N'2014/2/19 17:05:30',N'�û���½ϵͳ',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6162,N'admin',N'2014/2/19 17:09:18',N'�û��鿴�ļ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'221.2.160.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6163,N'admin',N'2014/2/20 20:56:06',N'�û���½ϵͳ',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6164,N'admin',N'2014/2/20 20:56:31',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6165,N'admin',N'2014/2/20 20:56:36',N'�û��鿴����������Ϣ(admin--�ɹ���������(2014/1/4))',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6166,N'admin',N'2014/2/20 20:57:34',N'�û��鿴�ʼ�(�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������))',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6167,N'admin',N'2014/2/20 21:06:03',N'�û���½ϵͳ',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6168,N'admin',N'2014/2/20 21:07:00',N'�û���½ϵͳ',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6169,N'admin',N'2014/2/20 21:07:10',N'�û��鿴�ʼ�(��תվ�ļ���������)',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6170,N'admin',N'2014/2/20 21:08:09',N'�û��޸ı��������Ϣ(ҵ�񱨱�)',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6171,N'admin',N'2014/2/20 21:14:33',N'�û���½ϵͳ',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6172,N'admin',N'2014/2/20 21:20:57',N'�û���½ϵͳ',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6173,N'admin',N'2014/2/20 21:22:12',N'�û��㱨����������Ϣ(dfg)',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6174,N'admin',N'2014/2/20 21:23:11',N'�鿴����������Ϣ(��ת����Ϣ���������ת�ش���)',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6175,N'admin',N'2014/2/20 21:23:18',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6176,N'admin',N'2014/2/20 21:23:52',N'�û��鿴�ʼ�(�����µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������))',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6177,N'admin',N'2014/2/20 21:24:06',N'�û�������ʼ�(Re�������µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������))',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6178,N'admin',N'2014/2/20 21:24:09',N'�û��鿴�ʼ�(�����ƶ����ճ̰�������ʱ�䵽��(test2))',N'163.125.215.106')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6179,N'admin',N'2014/2/20 21:35:24',N'�û���½ϵͳ',N'221.239.246.233')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6180,N'admin',N'2014/2/20 21:36:22',N'�û���ӱ�������(5rt5rt)',N'221.239.246.233')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6181,N'admin',N'2014/2/20 21:36:54',N'�û��鿴���̱���Ϣ(���ñ�����)',N'221.239.246.233')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6182,N'admin',N'2014/2/20 21:37:02',N'�û��鿴���̱�����(ID��16)',N'221.239.246.233')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6183,N'admin',N'2014/2/20 21:42:29',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'221.239.246.233')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6184,N'admin',N'2014/2/21 23:18:14',N'�û���½ϵͳ',N'163.125.171.12')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6185,N'admin',N'2014/2/21 23:18:32',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'163.125.171.12')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6186,N'admin',N'2014/2/21 23:18:39',N'�û��鿴������Ʒ��Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'163.125.171.12')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6187,N'admin',N'2014/2/21 23:36:51',N'�û���½ϵͳ',N'163.125.171.12')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6188,N'admin',N'2014/2/22 16:18:49',N'�û���½ϵͳ',N'36.250.224.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6189,N'admin',N'2014/2/22 16:18:49',N'�û���½ϵͳ',N'36.250.224.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6190,N'admin',N'2014/2/22 16:19:28',N'�û��鿴�ʼ�(112222)',N'36.250.224.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6191,N'admin',N'2014/2/22 16:20:23',N'�û���½ϵͳ',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6192,N'admin',N'2014/2/22 16:21:24',N'�û��鿴���̱���Ϣ(���ĵǼ�-����)',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6193,N'admin',N'2014/2/22 16:21:36',N'�û��鿴���̱�����(ID��27)',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6194,N'admin',N'2014/2/22 16:26:19',N'�û��鿴���̱�����(ID��27)',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6195,N'admin',N'2014/2/22 16:27:23',N'�û���½ϵͳ',N'36.250.224.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6196,N'admin',N'2014/2/22 16:27:25',N'�û���½ϵͳ',N'36.250.224.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6197,N'admin',N'2014/2/22 16:31:47',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6198,N'admin',N'2014/2/22 16:32:06',N'�û�������û�(test)',N'36.250.224.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6199,N'test',N'2014/2/22 16:32:39',N'�û���½ϵͳ',N'36.250.224.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6200,N'admin',N'2014/2/22 16:44:40',N'�û���ӹ���֪ͨ��Ϣ(������Ϣ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6201,N'admin',N'2014/2/22 16:45:32',N'�û���ӹ���֪ͨ��Ϣ(������Ϣ2)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6202,N'admin',N'2014/2/22 16:47:17',N'�û���½ϵͳ',N'36.250.224.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6203,N'admin',N'2014/2/22 16:57:30',N'�û���ӹ���֪ͨ��Ϣ(������Ϣ3)',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6204,N'admin',N'2014/2/24 10:50:05',N'�û���½ϵͳ',N'123.235.0.242')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6205,N'admin',N'2014/2/24 10:57:58',N'�û���½ϵͳ',N'222.175.11.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6206,N'admin',N'2014/2/24 10:59:40',N'�û��鿴�ʼ�(���Ĺ����Ѿ�����������(admin--Ա���������(2012-03-2)))',N'123.235.0.242')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6207,N'admin',N'2014/2/24 11:33:37',N'�û���½ϵͳ',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6208,N'admin',N'2014/2/24 13:33:08',N'�û���½ϵͳ',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6209,N'admin',N'2014/2/25 14:27:24',N'�û���½ϵͳ',N'113.102.163.212')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6210,N'admin',N'2014/2/25 14:27:51',N'�û��鿴����������Ϣ(admin--�ɹ���������(2013/1/7))',N'113.102.163.212')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6211,N'NoLogin',N'2014/2/25 14:27:53',N'�û��鿴����������Ϣ(admin--�ɹ���������(2013/1/7))',N'119.147.146.189')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6212,N'NoLogin',N'2014/2/25 14:28:44',N'�û��鿴����������Ϣ(admin--�ɹ���������(2013/1/7))',N'119.147.146.195')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6213,N'admin',N'2014/2/25 14:43:06',N'�û���½ϵͳ',N'113.102.163.212')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6214,N'admin',N'2014/2/25 14:44:01',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'113.102.163.212')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6215,N'admin',N'2014/2/25 14:47:19',N'�û���½ϵͳ',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6216,N'admin',N'2014/2/25 14:49:46',N'�û���½ϵͳ',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6217,N'admin',N'2014/2/25 14:49:59',N'�û��鿴��ѵ��Ϣ(��ҵӪ����Ʒ��ս�Լƻ�--�۶��Ƽ�)',N'113.102.163.212')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6218,N'NoLogin',N'2014/2/25 14:57:52',N'�û��鿴����������Ϣ(admin--�ɹ���������(2013/1/7))',N'101.226.89.120')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6219,N'admin',N'2014/2/25 14:59:34',N'�û��鿴����������Ϣ(admin--Ա���������(2012-03-2))',N'27.10.78.59')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6220,N'NoLogin',N'2014/2/25 15:14:01',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'112.64.235.87')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6221,N'admin',N'2014/2/27 13:34:01',N'�û���½ϵͳ',N'222.132.237.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6222,N'admin',N'2014/2/27 13:34:50',N'�û��鿴���̱���Ϣ(�ɹ����뵥)',N'222.132.237.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6223,N'admin',N'2014/2/27 13:35:50',N'�û�������̱���Ϣ(aaa)',N'222.132.237.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6224,N'admin',N'2014/2/27 13:36:18',N'�û��鿴���̶�����Ϣ(���ñ�������)',N'222.132.237.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6225,N'admin',N'2014/2/27 13:39:24',N'�û���½ϵͳ',N'222.132.237.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6226,N'test',N'2014/2/27 23:13:30',N'�û���½ϵͳ',N'58.254.4.70')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6227,N'admin',N'2014/2/28 9:40:12',N'�û���½ϵͳ',N'192.168.0.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6228,N'admin',N'2014/2/28 9:40:44',N'�û�ɾ���˵�������Ϣ',N'192.168.0.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6229,N'admin',N'2014/2/28 9:40:50',N'�û���½ϵͳ',N'192.168.0.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6230,N'admin',N'2014/2/28 14:49:12',N'�û���½ϵͳ',N'222.132.237.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6231,N'admin',N'2014/2/28 14:49:37',N'�û�ɾ������������Ϣ',N'222.132.237.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6232,N'admin',N'2014/2/28 14:49:42',N'�û�ɾ������������Ϣ',N'222.132.237.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6233,N'admin',N'2014/2/28 14:51:36',N'�û����������ֶ�(�ڵ�ID��39)',N'222.132.237.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6234,N'admin',N'2014/3/3 10:44:44',N'�û���½ϵͳ',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6235,N'admin',N'2014/3/3 10:45:43',N'�û��鿴�ļ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6236,N'NoLogin',N'2014/3/3 10:46:03',N'�û��鿴�ļ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'119.147.146.189')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6237,N'NoLogin',N'2014/3/3 10:46:46',N'�û��鿴�ļ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'119.147.146.189')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6238,N'admin',N'2014/3/3 10:49:45',N'�û���Ӵ����ļ�(����)',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6239,N'admin',N'2014/3/3 10:49:51',N'�û��鿴�ļ�(����)',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6240,N'admin',N'2014/3/3 10:52:13',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6241,N'admin',N'2014/3/3 10:55:23',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6242,N'admin',N'2014/3/3 10:56:53',N'�û��鿴���̱�����(ID��31)',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6243,N'admin',N'2014/3/3 10:57:04',N'�û��鿴���̱�����(ID��28)',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6244,N'admin',N'2014/3/3 10:57:41',N'�û�������̱���Ϣ(����)',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6245,N'admin',N'2014/3/3 10:58:13',N'�û�������̱���Ϣ(�칫��Ʒ���뵥)',N'121.31.6.51')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6246,N'admin',N'2014/3/3 11:01:58',N'�û��鿴���̱�����(ID��30)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6247,N'admin',N'2014/3/3 11:02:13',N'�û��鿴���̱�����(ID��29)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6248,N'admin',N'2014/3/3 11:13:26',N'�û���½ϵͳ',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6249,N'admin',N'2014/3/3 11:13:33',N'�û��鿴�ʼ�(�����µ��ļ���Ҫ���գ�(����))',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6250,N'admin',N'2014/3/3 11:14:25',N'�û��鿴�ɹ�������Ʒ��Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6251,N'admin',N'2014/3/3 11:27:35',N'�û���½ϵͳ',N'27.10.79.21')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6252,N'admin',N'2014/3/3 11:40:46',N'�û��޸����̱�����(ID��34)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6253,N'admin',N'2014/3/3 11:41:16',N'�û��鿴���̱�����(ID��34)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6254,N'admin',N'2014/3/3 11:55:22',N'�û�������̶�����Ϣ(������־)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6255,N'admin',N'2014/3/3 12:06:24',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6256,N'admin',N'2014/3/3 12:06:56',N'�û��鿴�ļ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6257,N'admin',N'2014/3/3 12:07:16',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6258,N'admin',N'2014/3/3 12:07:44',N'�û��鿴����������Ϣ(admin--Ա���������(2012-03-2))',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6259,N'admin',N'2014/3/3 12:09:23',N'�û��鿴����������Ϣ(admin--������������(2012-03-2))',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6260,N'admin',N'2014/3/3 12:10:12',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6261,N'admin',N'2014/3/3 12:10:29',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6262,N'admin',N'2014/3/3 12:11:03',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012-03-2))',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6263,N'admin',N'2014/3/3 12:11:53',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6264,N'admin',N'2014/3/3 12:23:34',N'�û��鿴���̶�����Ϣ(���ĵǼ�����-����-����)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6265,N'admin',N'2014/3/3 12:24:20',N'�û��鿴���̶�����Ϣ(���ĵǼ�����-����-����)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6266,N'admin',N'2014/3/3 12:24:44',N'�û��鿴���̶�����Ϣ(���ĵǼ�����-����-����)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6267,N'admin',N'2014/3/3 12:27:21',N'�û���ӽڵ㶨����Ϣ(����)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6268,N'admin',N'2014/3/3 12:28:13',N'�û���ӽڵ㶨����Ϣ(���)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6269,N'admin',N'2014/3/3 12:29:05',N'�û��޸Ľڵ㶨����Ϣ(�������)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6270,N'admin',N'2014/3/3 12:33:15',N'�û��鿴�ڵ㶨����Ϣ(�쵼���)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6271,N'admin',N'2014/3/3 12:35:59',N'�û��鿴���������Ϣ(���ñ���)',N'121.31.6.48')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6272,N'admin',N'2014/3/4 4:36:41',N'�û���½ϵͳ',N'121.31.6.46')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6273,N'admin',N'2014/3/4 4:37:05',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'121.31.6.46')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6274,N'admin',N'2014/3/4 18:11:49',N'�û���½ϵͳ',N'153.119.200.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6275,N'admin',N'2014/3/4 18:14:12',N'�û��鿴���̱�����(ID��33)',N'153.119.200.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6276,N'admin',N'2014/3/4 18:17:11',N'�û�������̶�����Ϣ(����)',N'153.119.200.219')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6277,N'admin',N'2014/3/5 8:41:18',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6278,N'admin',N'2014/3/5 8:41:54',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6279,N'admin',N'2014/3/5 8:41:54',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6280,N'admin',N'2014/3/5 8:42:31',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6281,N'admin',N'2014/3/5 10:52:21',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6282,N'admin',N'2014/3/5 10:55:21',N'�û��鿴���º�ͬ��Ϣ(��Ϊ��)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6283,N'admin',N'2014/3/5 11:05:02',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6284,N'admin',N'2014/3/5 11:19:18',N'�鿴�û���Ϣ(admin)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6285,N'admin',N'2014/3/5 11:19:40',N'�û��鿴��ɫ��Ϣ(��������Ա)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6286,N'admin',N'2014/3/5 11:28:09',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6287,N'admin',N'2014/3/5 11:29:36',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6288,N'admin',N'2014/3/5 11:36:14',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6289,N'test',N'2014/3/5 11:36:42',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6290,N'admin',N'2014/3/5 11:36:54',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6291,N'admin',N'2014/3/5 11:37:07',N'�û��鿴��ɫ��Ϣ(һ��Ա��)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6292,N'admin',N'2014/3/5 11:38:29',N'�û��޸Ľ�ɫ��Ϣ(һ��Ա��)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6293,N'test',N'2014/3/5 11:38:39',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6294,N'test',N'2014/3/5 11:41:06',N'�û��޸���������',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6295,N'admin',N'2014/3/5 11:43:10',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6296,N'admin',N'2014/3/5 11:45:38',N'�û�������ڲ��ֻ�����(aaaaa)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6297,N'admin',N'2014/3/5 11:45:44',N'�û�������ڲ��ֻ�����(aaaaa)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6298,N'admin',N'2014/3/5 11:46:02',N'�û����Ͷ���(admin)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6299,N'admin',N'2014/3/5 11:46:02',N'�û�������ڲ��ֻ�����(aaaaa)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6300,N'admin',N'2014/3/5 11:46:20',N'�û�������ڲ��ֻ�����(abcd)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6301,N'admin',N'2014/3/5 11:46:28',N'�û�������ڲ��ֻ�����(abcd)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6302,N'admin',N'2014/3/5 11:47:02',N'�鿴����������Ϣ(��ת����Ϣ���������ת�ش���)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6303,N'admin',N'2014/3/5 11:52:01',N'�û����ͶƱ��Ϣ(���)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6304,N'admin',N'2014/3/5 11:52:42',N'�û�������ڲ��ֻ�����(dfdfd)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6305,N'admin',N'2014/3/5 11:54:14',N'�û�������ʼ�(aaaaa)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6306,N'admin',N'2014/3/5 14:48:29',N'�û���½ϵͳ',N'27.10.79.21')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6307,N'admin',N'2014/3/5 16:20:14',N'�û���½ϵͳ',N'124.248.205.78')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6308,N'admin',N'2014/3/5 17:33:00',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6309,N'admin',N'2014/3/6 9:45:45',N'�û���½ϵͳ',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6310,N'admin',N'2014/3/6 9:48:01',N'�û��鿴�ʼ�(���Ĺ����Ѿ�����������(admin--Ա���������(2012-03-2)))',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6311,N'admin',N'2014/3/6 9:48:39',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6312,N'admin',N'2014/3/6 9:49:56',N'�û��鿴��������Ϣ(����)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6313,N'admin',N'2014/3/6 9:50:00',N'�û��鿴���̶�����Ϣ(���ĵǼ�����-����)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6314,N'admin',N'2014/3/6 9:51:07',N'�鿴����������Ϣ(��ת����Ϣ���������ת�ش���)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6315,N'admin',N'2014/3/6 9:52:22',N'�û��鿴���̶�����Ϣ(test)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6316,N'admin',N'2014/3/6 9:54:25',N'�û��鿴�ļ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6317,N'admin',N'2014/3/6 9:55:07',N'�鿴�����㱨��Ϣ(�������Դ���νṹ�㱨)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6318,N'admin',N'2014/3/6 9:55:27',N'�û��鿴�ʼ�(�����µ��ļ���Ҫ���գ�(����))',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6319,N'admin',N'2014/3/6 9:56:35',N'�û��鿴�ʼ�(Re�������µ�������Ҫִ�У�(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������))',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6320,N'admin',N'2014/3/6 9:56:46',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6321,N'admin',N'2014/3/6 9:56:50',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6322,N'admin',N'2014/3/6 9:56:53',N'�鿴�����㱨��Ϣ(�Ը��˽��ڹ����ش����쵼�㱨)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6323,N'admin',N'2014/3/6 9:57:06',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6324,N'admin',N'2014/3/6 9:58:48',N'�û���Ӳ�����Ϣ(xxx)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6325,N'admin',N'2014/3/6 10:05:29',N'�鿴�û���Ϣ(test)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6326,N'admin',N'2014/3/6 10:11:12',N'�û���������Ա��(����)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6327,N'admin',N'2014/3/6 10:12:58',N'�û��鿴���̶�����Ϣ(Ա���������)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6328,N'admin',N'2014/3/6 10:13:03',N'�û��鿴���̶�����Ϣ(���ñ�������)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6329,N'admin',N'2014/3/6 10:13:12',N'�û��鿴���̶�����Ϣ(���ĵǼ�����)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6330,N'admin',N'2014/3/6 10:13:53',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2014/3/6))',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6331,N'admin',N'2014/3/6 10:14:02',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6332,N'admin',N'2014/3/6 10:15:05',N'�û��鿴��Ч������Ϣ(���Ŵ��)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6333,N'admin',N'2014/3/6 10:15:12',N'�û��鿴���º�ͬ��Ϣ(��Ϊ��)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6334,N'admin',N'2014/3/6 10:15:29',N'�鿴�û���Ϣ(liyiyang)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6335,N'admin',N'2014/3/6 10:16:28',N'�鿴�����㱨��Ϣ(�Ը��˽��ڹ����ش����쵼�㱨)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6336,N'admin',N'2014/3/6 10:17:02',N'�鿴�û���Ϣ(test)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6337,N'admin',N'2014/3/6 10:18:18',N'�û��鿴��Ա��Ϣ(�ź�)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6338,N'NoLogin',N'2014/3/6 10:18:46',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'180.153.214.181')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6339,N'NoLogin',N'2014/3/6 10:20:00',N'�û��鿴���̶�����Ϣ(���ĵǼ�����-����)',N'180.153.211.172')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6340,N'NoLogin',N'2014/3/6 10:22:22',N'�û��鿴���̶�����Ϣ(test)',N'101.226.66.174')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6341,N'NoLogin',N'2014/3/6 10:24:25',N'�û��鿴�ļ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'180.153.206.23')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6342,N'NoLogin',N'2014/3/6 10:26:53',N'�鿴�����㱨��Ϣ(�Ը��˽��ڹ����ش����쵼�㱨)',N'180.153.214.199')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6343,N'admin',N'2014/3/6 10:33:46',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6344,N'NoLogin',N'2014/3/6 10:35:29',N'�鿴�û���Ϣ(test)',N'180.153.114.197')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6345,N'admin',N'2014/3/6 10:43:29',N'�û���½ϵͳ',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6346,N'NoLogin',N'2014/3/6 10:45:05',N'�û��鿴��Ч������Ϣ(���Ŵ��)',N'180.153.161.55')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6347,N'NoLogin',N'2014/3/6 10:48:21',N'�û��鿴��Ա��Ϣ(�ź�)',N'101.226.33.221')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6348,N'admin',N'2014/3/6 11:14:08',N'�û���½ϵͳ',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6349,N'admin',N'2014/3/6 11:14:40',N'�û����ÿ�д�ֶ�(�ڵ�ID��79)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6350,N'admin',N'2014/3/6 11:19:15',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6351,N'admin',N'2014/3/6 11:23:23',N'�û��޸����̱�����(ID��16)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6352,N'admin',N'2014/3/6 11:23:41',N'�û��鿴���̱�����(ID��20)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6353,N'admin',N'2014/3/6 11:23:48',N'�û��鿴���̱�����(ID��16)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6354,N'admin',N'2014/3/6 11:24:48',N'�û��鿴���̱���Ϣ(Ա����ٵ�)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6355,N'admin',N'2014/3/6 11:24:55',N'�û��鿴���̱�����(ID��26)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6356,N'admin',N'2014/3/6 11:25:02',N'�û��鿴���̱���Ϣ(��ְ���뵥)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6357,N'admin',N'2014/3/6 11:26:45',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2014/3/6))',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6358,N'admin',N'2014/3/6 11:26:49',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6359,N'admin',N'2014/3/6 11:29:22',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6360,N'admin',N'2014/3/6 11:30:02',N'�鿴�����㱨��Ϣ(�Ը��˽��ڹ����ش����쵼�㱨)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6361,N'admin',N'2014/3/6 11:30:30',N'�û��鿴�ͻ���Ϣ(����������Ź�ҵ��Ʒ���޹�˾)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6362,N'admin',N'2014/3/6 11:30:43',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6363,N'admin',N'2014/3/6 11:33:02',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'220.173.142.209')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6364,N'admin',N'2014/3/6 14:59:14',N'�û��鿴���̱�����(ID��23)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6365,N'admin',N'2014/3/6 15:41:21',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6366,N'admin',N'2014/3/6 15:41:41',N'�û��鿴���̶�����Ϣ(��������)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6367,N'admin',N'2014/3/6 15:41:59',N'�û��鿴���̶�����Ϣ(�ɹ���������)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6368,N'admin',N'2014/3/6 15:43:55',N'�û��鿴�ڵ㶨����Ϣ(�������)',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6369,N'admin',N'2014/3/6 16:55:49',N'�û��޸Ľڵ㶨����Ϣ(�������)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6370,N'admin',N'2014/3/6 16:56:49',N'�û��޸Ľ�ɫ��Ϣ(һ��Ա��)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6371,N'test',N'2014/3/6 16:57:09',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6372,N'admin',N'2014/3/6 16:58:02',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6373,N'admin',N'2014/3/6 22:18:51',N'�û���½ϵͳ',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6374,N'admin',N'2014/3/6 22:22:59',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6375,N'admin',N'2014/3/6 22:26:10',N'�û���½ϵͳ',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6376,N'admin',N'2014/3/6 22:30:25',N'�û���ӹ����ƻ���Ϣ(wqewqe)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6377,N'admin',N'2014/3/6 22:30:31',N'�鿴�����ƻ���Ϣ(wqewqe)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6378,N'admin',N'2014/3/6 22:30:49',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6379,N'admin',N'2014/3/6 22:32:29',N'�鿴�����㱨��Ϣ(�Ը��˽��ڹ����ش����쵼�㱨)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6380,N'admin',N'2014/3/6 22:33:05',N'�û��鿴���������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6381,N'admin',N'2014/3/6 22:36:12',N'�û��鿴�ʼ�(�����ƶ����ճ̰�������ʱ�䵽��(test1))',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6382,N'admin',N'2014/3/6 22:39:12',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6383,N'admin',N'2014/3/6 22:41:05',N'�û��鿴��̳������Ϣ(ͨ�����ҵ��������룬ͨ�������˽�����ͨ����ʵ�����롣)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6384,N'admin',N'2014/3/6 22:41:46',N'�û��鿴��̳������Ϣ(ʮ��İٶ���һ���������ҵ��ʮ��İٶ���һ�����㵽�ڵ�ͻ�ơ�)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6385,N'admin',N'2014/3/6 22:44:51',N'�鿴�û���Ϣ(test)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6386,N'admin',N'2014/3/6 22:45:20',N'�û��鿴���̱���Ϣ(�ɹ����뵥)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6387,N'admin',N'2014/3/6 22:45:28',N'�û��鿴���̱���Ϣ(�������뵥)',N'1.204.19.180')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6388,N'admin',N'2014/3/7 13:15:11',N'�û���½ϵͳ',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6389,N'admin',N'2014/3/7 13:18:59',N'�û��޸����̱�����(ID��14)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6390,N'admin',N'2014/3/7 13:20:14',N'�û��޸����̱�����(ID��23)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6391,N'admin',N'2014/3/7 13:20:41',N'�û����ÿ�д�ֶ�(�ڵ�ID��51)',N'115.239.183.158')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6392,N'admin',N'2014/3/7 15:41:48',N'�û���½ϵͳ',N'182.151.94.133')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6393,N'admin',N'2014/3/7 15:42:21',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'182.151.94.133')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6394,N'admin',N'2014/3/7 15:43:40',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'182.151.94.133')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6395,N'admin',N'2014/3/7 22:13:26',N'�û���½ϵͳ',N'122.235.247.232')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6396,N'admin',N'2014/3/7 22:25:33',N'�û��鿴��ɫ��Ϣ(һ��Ա��)',N'122.235.247.232')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6397,N'admin',N'2014/3/7 22:26:54',N'�û���½ϵͳ',N'111.123.130.76')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6398,N'admin',N'2014/3/7 22:33:08',N'�û���½ϵͳ',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6399,N'admin',N'2014/3/7 22:34:03',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6400,N'admin',N'2014/3/7 22:34:27',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6401,N'admin',N'2014/3/7 22:35:08',N'�û��鿴�ɹ�������Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6402,N'admin',N'2014/3/7 22:35:22',N'�û��鿴�ɹ�������Ʒ��Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6403,N'admin',N'2014/3/7 22:35:29',N'�û��鿴�ɹ�������Ʒ��Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6404,N'admin',N'2014/3/7 22:37:45',N'�û��鿴Ӧ����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6405,N'admin',N'2014/3/7 22:44:27',N'�û��鿴���̱���Ϣ(Ա����ٵ�)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6406,N'admin',N'2014/3/7 22:52:43',N'�û��鿴���۶�����Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6407,N'admin',N'2014/3/7 22:52:57',N'�û���½ϵͳ',N'122.235.247.232')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6408,N'admin',N'2014/3/7 22:53:02',N'�û��鿴���̱���Ϣ(�ճ��칫����)',N'111.123.130.76')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6409,N'admin',N'2014/3/7 22:53:12',N'�û��鿴������Ʒ��Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6410,N'admin',N'2014/3/7 22:53:20',N'�û��鿴������Ʒ��Ϣ(����Ϣ���ͻ�OA�ɹ���ͬ)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6411,N'admin',N'2014/3/7 22:53:43',N'�鿴�����ƻ���Ϣ(wqewqe)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6412,N'admin',N'2014/3/7 22:53:47',N'�鿴�����㱨��Ϣ(�Ը��˽��ڹ����ش����쵼�㱨)',N'1.204.21.96')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6413,N'admin',N'2014/3/7 22:58:25',N'�û���½ϵͳ',N'122.235.243.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6414,N'admin',N'2014/3/7 22:59:27',N'�û���½ϵͳ',N'122.235.243.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6415,N'admin',N'2014/3/7 22:59:36',N'�鿴�����ƻ���Ϣ(wqewqe)',N'122.235.243.175')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6416,N'admin',N'2014/3/7 23:05:52',N'�û���½ϵͳ',N'122.235.247.232')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6417,N'admin',N'2014/3/8 9:06:01',N'�û���½ϵͳ',N'27.10.75.198')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6418,N'admin',N'2014/3/11 14:32:00',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6419,N'admin',N'2014/3/11 14:45:01',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6420,N'admin',N'2014/3/11 14:46:34',N'�û�������۶�����Ϣ(ˮ����Ե�1)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6421,N'admin',N'2014/3/11 14:51:00',N'�û�������۶�����Ϣ(ˮ����Ե�2)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6422,N'admin',N'2014/3/11 17:11:33',N'�û���½ϵͳ',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6423,N'admin',N'2014/3/11 17:14:34',N'�û��鿴�ط���Ϣ(����������Ź�ҵ��Ʒ���޹�˾)',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6424,N'admin',N'2014/3/11 17:25:28',N'�û��鿴���º�ͬ��Ϣ(��Ϊ��)',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6425,N'admin',N'2014/3/11 17:27:42',N'�û���½ϵͳ',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6426,N'admin',N'2014/3/11 17:30:14',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6427,N'admin',N'2014/3/11 17:30:15',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6428,N'admin',N'2014/3/11 17:33:20',N'�û���½ϵͳ',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6429,N'admin',N'2014/3/11 17:47:07',N'�û��鿴�˵�������Ϣ(���˰칫)',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6430,N'admin',N'2014/3/11 17:47:49',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6431,N'admin',N'2014/3/11 20:22:55',N'�û���½ϵͳ',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6432,N'admin',N'2014/3/11 20:23:47',N'�û��鿴�ͻ���Ϣ(����������Ź�ҵ��Ʒ���޹�˾)',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6433,N'admin',N'2014/3/11 20:24:36',N'�û��鿴�ط���Ϣ(����������Ź�ҵ��Ʒ���޹�˾)',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6434,N'admin',N'2014/3/11 20:25:11',N'�û���ӻطü�¼(����������Ź�ҵ��Ʒ���޹�˾)',N'123.120.13.146')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6435,N'admin',N'2014/3/12 17:42:23',N'�û���½ϵͳ',N'123.120.28.18')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6436,N'admin',N'2014/3/12 18:34:56',N'�û���½ϵͳ',N'221.222.207.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6437,N'admin',N'2014/3/15 13:54:40',N'�û���½ϵͳ',N'14.116.120.7')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6438,N'admin',N'2014/3/15 13:56:44',N'�û������ʼ�����',N'14.116.120.7')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6439,N'admin',N'2014/3/15 13:59:18',N'�û��鿴�ʼ�(��תվ�ļ���������)',N'14.116.120.7')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6440,N'admin',N'2014/3/15 14:02:08',N'�û���½ϵͳ',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6441,N'admin',N'2014/3/15 14:04:05',N'�û��鿴�ʼ�(test)',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6442,N'admin',N'2014/3/15 14:06:38',N'�û������ʼ�����',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6443,N'admin',N'2014/3/15 14:22:18',N'�û������ʼ�����',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6444,N'admin',N'2014/3/15 14:23:51',N'�û������ʼ�����',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6445,N'admin',N'2014/3/15 14:24:04',N'�û������ʼ�����',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6446,N'admin',N'2014/3/15 14:24:17',N'�û��鿴�ʼ�(test)',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6447,N'admin',N'2014/3/15 14:24:29',N'�û������ʼ�����',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6448,N'admin',N'2014/3/15 14:24:49',N'�û������ʼ�����',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6449,N'admin',N'2014/3/15 14:28:22',N'�û������ʼ�����',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6450,N'admin',N'2014/3/15 14:45:38',N'�û���½ϵͳ',N'27.10.16.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6451,N'admin',N'2014/3/15 16:09:13',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6452,N'admin',N'2014/3/15 16:17:09',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6453,N'admin',N'2014/3/17 11:12:44',N'�û���½ϵͳ',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6454,N'admin',N'2014/3/17 11:14:01',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6455,N'admin',N'2014/3/17 11:14:11',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6456,N'admin',N'2014/3/17 11:14:34',N'�û��鿴����������Ϣ(admin--Ա���������(2012-03-2))',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6457,N'admin',N'2014/3/17 11:14:55',N'�û��鿴����������Ϣ(admin--������������(2012-03-2))',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6458,N'admin',N'2014/3/17 11:20:18',N'�û��鿴��ɫ��Ϣ(��Ŀ����)',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6459,N'admin',N'2014/3/17 11:20:45',N'�û��鿴���������Ϣ(���ñ���)',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6460,N'admin',N'2014/3/17 11:20:55',N'�û��鿴���������Ϣ(������־����)',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6461,N'admin',N'2014/3/17 15:04:49',N'�û���½ϵͳ',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6462,N'admin',N'2014/3/17 15:06:37',N'�鿴�ļ���Ϣ(�½� Microsoft Excel ������.xls)',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6463,N'admin',N'2014/3/17 15:10:00',N'�û���½ϵͳ',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6464,N'admin',N'2014/3/17 15:10:40',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6465,N'admin',N'2014/3/17 15:12:30',N'�û��鿴�ļ�(����)',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6466,N'admin',N'2014/3/17 15:26:59',N'�û���½ϵͳ',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6467,N'admin',N'2014/3/17 15:33:51',N'�û��鿴��ѵЧ����Ϣ(��ҵӪ����Ʒ��ս�Լƻ�--�۶��Ƽ�)',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6468,N'admin',N'2014/3/17 15:35:08',N'�û��鿴����������¼��Ϣ(��λ����)',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6469,N'admin',N'2014/3/17 15:36:32',N'�û��鿴��������Ϣ(̫��ϵ��������ϵ�ǣ�)',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6470,N'admin',N'2014/3/17 15:38:04',N'�û��鿴����ѧϰ��Ϣ(��ҵ�Ļ���Ӫ����·˼��)',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6471,N'admin',N'2014/3/17 15:38:48',N'�û��鿴��ѵЧ����Ϣ(��ҵӪ����Ʒ��ս�Լƻ�--�۶��Ƽ�)',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6472,N'admin',N'2014/3/17 15:39:34',N'�û��鿴���̶�����Ϣ(��������)',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6473,N'admin',N'2014/3/17 15:41:06',N'�û��鿴��������Ϣ(����)',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6474,N'admin',N'2014/3/17 16:55:48',N'�û���½ϵͳ',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6475,N'admin',N'2014/3/17 16:56:06',N'�û���½ϵͳ',N'27.10.73.13')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6476,N'admin',N'2014/3/17 17:04:01',N'�鿴��Ŀ��Ϣ(XXXչ)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6477,N'admin',N'2014/3/17 17:04:33',N'�û��鿴���������Ϣ(���ñ���)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6478,N'admin',N'2014/3/17 17:06:57',N'�û��鿴���̱�����(ID��28)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6479,N'admin',N'2014/3/17 17:07:04',N'�û��鿴���̱�����(ID��14)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6480,N'admin',N'2014/3/17 17:08:37',N'�û���½ϵͳ',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6481,N'admin',N'2014/3/17 17:09:19',N'�û��鿴���̶�����Ϣ(��������)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6482,N'admin',N'2014/3/17 17:10:47',N'�û��鿴���̱�����(ID��31)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6483,N'admin',N'2014/3/17 17:13:10',N'�û���½ϵͳ',N'221.3.213.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6484,N'admin',N'2014/3/17 17:21:48',N'�û�ɾ���ռ����е��ʼ�',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6485,N'admin',N'2014/3/17 17:24:53',N'�û��鿴�ʼ�(���Ĺ����Ѿ�����������(admin--���ĵǼ�����(2012/10/7)))',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6486,N'admin',N'2014/3/17 17:26:01',N'�鿴�տ���Ϣ(XXXչ)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6487,N'admin',N'2014/3/17 17:49:27',N'�û��鿴�ļ�(����)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6488,N'admin',N'2014/3/17 17:51:30',N'�û�ɾ���ռ����е��ʼ�',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6489,N'admin',N'2014/3/17 17:54:44',N'�û��޸ĵ�λ��Ϣ',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6490,N'admin',N'2014/3/17 18:27:53',N'�û���½ϵͳ',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6491,N'admin',N'2014/3/17 18:29:39',N'�û���½ϵͳ',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6492,N'admin',N'2014/3/17 18:30:40',N'�û���½ϵͳ',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6493,N'admin',N'2014/3/17 18:32:31',N'�û��鿴���̶�����Ϣ(������������)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6494,N'admin',N'2014/3/17 18:33:56',N'�û��鿴���̶�����Ϣ(������������)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6495,N'admin',N'2014/3/17 18:34:35',N'�û��鿴���̶�����Ϣ(������������)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6496,N'admin',N'2014/3/17 18:35:16',N'�û��鿴����ѧϰ��Ϣ(��ҵ�Ļ���Ӫ����·˼��)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6497,N'admin',N'2014/3/17 18:35:30',N'�û��鿴ѧϰ�ĵ���Ϣ(ѧϰ��ҵ�Ļ����иС�)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6498,N'admin',N'2014/3/17 18:35:39',N'�û��鿴ѧϰ�ĵ���Ϣ(ѧϰ��ҵ�Ļ����иС�)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6499,N'admin',N'2014/3/17 18:36:54',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6500,N'admin',N'2014/3/17 18:45:15',N'�û��鿴���̱�����(ID��24)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6501,N'admin',N'2014/3/17 18:46:55',N'�û��鿴���̱�����(ID��15)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6502,N'admin',N'2014/3/17 18:47:04',N'�û��鿴���̱�����(ID��14)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6503,N'admin',N'2014/3/18 11:05:39',N'�û���½ϵͳ',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6504,N'admin',N'2014/3/18 11:08:26',N'�鿴�û���Ϣ(test)',N'119.146.78.10')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6505,N'admin',N'2014/3/18 11:12:10',N'�û���½ϵͳ',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6506,N'admin',N'2014/3/18 11:12:26',N'�û��鿴��Ʒ��Ϣ(����������)',N'36.40.63.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6507,N'admin',N'2014/3/18 11:15:52',N'�û���½ϵͳ',N'116.1.254.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6508,N'admin',N'2014/3/18 11:17:48',N'�û��鿴���̱�����(ID��26)',N'116.1.254.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6509,N'admin',N'2014/3/18 11:19:13',N'�û��鿴�ʼ�(�����µ��ļ���Ҫ���գ�(����))',N'116.1.254.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6510,N'admin',N'2014/3/18 11:21:51',N'�û���½ϵͳ',N'183.30.202.230')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6511,N'admin',N'2014/3/18 11:30:57',N'�û���½ϵͳ',N'183.30.202.230')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6512,N'admin',N'2014/3/18 14:34:16',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6513,N'admin',N'2014/3/18 14:34:25',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6514,N'admin',N'2014/3/18 14:34:59',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6515,N'admin',N'2014/3/18 14:35:11',N'�鿴�����ƻ���Ϣ(�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6516,N'admin',N'2014/3/18 15:11:33',N'�û���½ϵͳ',N'116.1.254.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6517,N'admin',N'2014/3/18 15:15:03',N'�û��鿴�ʼ�(�����µ��ļ���Ҫ���գ�(����))',N'116.1.254.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6518,N'admin',N'2014/3/18 15:18:22',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'116.1.254.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6519,N'admin',N'2014/3/18 15:19:08',N'�û��鿴���̱���Ϣ(��ְ���뵥)',N'116.1.254.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6520,N'admin',N'2014/3/18 15:27:27',N'�û��鿴���̱���Ϣ(Ա����ٵ�)',N'116.1.254.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6521,N'admin',N'2014/3/18 16:02:56',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'116.1.254.37')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6522,N'admin',N'2014/3/19 10:15:59',N'�û���½ϵͳ',N'223.199.183.210')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6523,N'admin',N'2014/3/19 10:21:54',N'�û���½ϵͳ',N'223.199.183.210')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6524,N'admin',N'2014/3/19 10:22:45',N'�û���½ϵͳ',N'27.10.73.13')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6525,N'admin',N'2014/3/19 10:25:21',N'�û���½ϵͳ',N'27.10.73.13')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6526,N'admin',N'2014/3/19 10:30:42',N'�鿴�ļ���Ϣ(�½� Microsoft Excel ������.xls)',N'223.199.183.210')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6527,N'admin',N'2014/3/19 10:48:57',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6528,N'admin',N'2014/3/19 10:49:03',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6529,N'admin',N'2014/3/19 10:50:22',N'�û��޸Ĺ���֪ͨ��Ϣ(���°�OA��������칫ϵͳ��ʽ�Ƴ�)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6530,N'admin',N'2014/3/19 10:50:31',N'�û��޸Ĺ�����־��Ϣ(�۶�-��ҵ�ۺϹ���ƽ̨-�������ܰ칫ϵͳ)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6531,N'admin',N'2014/3/19 10:50:41',N'�û��޸Ĺ�����־��Ϣ(��ҵ�ۺϹ���ƽ̨-�������ܰ칫ϵͳ)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6532,N'admin',N'2014/3/19 10:51:12',N'�û��鿴���������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6533,N'admin',N'2014/3/19 10:51:17',N'�û��鿴���������Ϣ(ssdf)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6534,N'admin',N'2014/3/19 10:51:29',N'�û��鿴���������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6535,N'admin',N'2014/3/19 10:51:58',N'�û�ɾ�����������Ϣ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6536,N'admin',N'2014/3/19 10:53:58',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6537,N'admin',N'2014/3/19 10:56:09',N'�û���½ϵͳ',N'223.199.183.210')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6538,N'admin',N'2014/3/19 10:57:13',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6539,N'admin',N'2014/3/19 10:57:36',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6540,N'admin',N'2014/3/19 10:57:39',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6541,N'admin',N'2014/3/19 10:57:39',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6542,N'admin',N'2014/3/19 11:01:32',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6543,N'admin',N'2014/3/19 11:04:15',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6544,N'admin',N'2014/3/19 11:12:55',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6545,N'admin',N'2014/3/19 14:17:25',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6546,N'admin',N'2014/3/19 14:17:53',N'�鿴�ļ���Ϣ(����۶��Ƽ����޹�˾��ϵ��ʽ.doc)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6547,N'admin',N'2014/3/19 14:23:07',N'�û���½ϵͳ',N'192.168.0.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6548,N'admin',N'2014/3/19 14:29:13',N'�û���½ϵͳ',N'223.199.183.210')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6549,N'admin',N'2014/3/19 14:34:56',N'�û���½ϵͳ',N'27.10.73.13')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6550,N'admin',N'2014/3/19 15:33:42',N'�û���½ϵͳ',N'114.246.92.147')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6551,N'admin',N'2014/3/19 15:38:35',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'114.246.92.147')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6552,N'admin',N'2014/3/20 13:17:19',N'�û���½ϵͳ',N'27.10.73.13')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6553,N'admin',N'2014/3/20 13:17:49',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6554,N'admin',N'2014/3/20 13:23:49',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6555,N'admin',N'2014/3/20 13:23:57',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6556,N'admin',N'2014/3/20 13:39:45',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6557,N'admin',N'2014/3/20 13:40:52',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6558,N'admin',N'2014/3/20 13:42:28',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6559,N'admin',N'2014/3/20 13:44:34',N'�û��޸Ľڵ㶨����Ϣ(�쵼���)',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6560,N'test',N'2014/3/20 13:45:24',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6561,N'admin',N'2014/3/20 13:45:48',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6562,N'admin',N'2014/3/20 13:47:20',N'�û��޸Ľڵ㶨����Ϣ(�쵼���)',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6563,N'admin',N'2014/3/20 13:50:41',N'�û���½ϵͳ',N'192.168.0.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6564,N'admin',N'2014/3/20 13:51:03',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6565,N'NoLogin',N'2014/3/20 13:53:57',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'180.153.206.27')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6566,N'admin',N'2014/3/20 14:03:40',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6567,N'admin',N'2014/3/20 14:11:05',N'�û��޸Ľڵ㶨����Ϣ(�쵼���)',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6568,N'NoLogin',N'2014/3/20 14:12:28',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'112.64.235.254')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6569,N'admin',N'2014/3/20 14:15:12',N'�û�����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6570,N'admin',N'2014/3/20 14:28:08',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6571,N'admin',N'2014/3/20 14:29:48',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6572,N'admin',N'2014/3/20 14:31:34',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6573,N'admin',N'2014/3/20 14:32:02',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6574,N'admin',N'2014/3/20 14:41:22',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6575,N'admin',N'2014/3/20 14:55:00',N'�û���½ϵͳ',N'58.19.244.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6576,N'admin',N'2014/3/20 15:23:53',N'�û���½ϵͳ',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6577,N'admin',N'2014/3/20 15:24:02',N'�û���½ϵͳ',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6578,N'admin',N'2014/3/20 15:25:34',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2014/3/20))',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6579,N'admin',N'2014/3/20 15:26:05',N'�û��鿴��Ʒ��Ϣ(����������)',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6580,N'admin',N'2014/3/20 15:26:30',N'�û��鿴��������Ϣ(sdf)',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6581,N'admin',N'2014/3/20 15:38:09',N'�û���½ϵͳ',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6582,N'admin',N'2014/3/20 15:38:51',N'�û��鿴���������Ϣ(����ȥ�ͻ��ֳ�ʵʩ����ѵ��������)',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6583,N'admin',N'2014/3/20 15:43:00',N'�û���½ϵͳ',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6584,N'admin',N'2014/3/20 15:43:55',N'�û��鿴�ʼ�(�����µ��ļ���Ҫ���գ�(����))',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6585,N'admin',N'2014/3/20 15:52:01',N'�û������ѷ����ֻ������е���Ϣ',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6586,N'admin',N'2014/3/20 15:56:29',N'�û���½ϵͳ',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6587,N'admin',N'2014/3/20 15:58:56',N'�û���½ϵͳ',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6588,N'admin',N'2014/3/20 16:00:59',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/20))',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6589,N'admin',N'2014/3/20 16:03:16',N'�û��鿴�ļ�(����)',N'60.18.151.136')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6590,N'admin',N'2014/3/20 17:14:53',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6591,N'admin',N'2014/3/20 17:17:57',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6592,N'����',N'2014/3/20 17:19:21',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6593,N'����',N'2014/3/20 17:22:07',N'�û�����������Ϣ(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6594,N'test',N'2014/3/20 17:22:25',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6595,N'test',N'2014/3/20 17:24:06',N'�û�����������Ϣ(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6596,N'test',N'2014/3/20 17:24:28',N'�û�������(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6597,N'admin',N'2014/3/20 17:25:03',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6598,N'����',N'2014/3/20 17:25:58',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6599,N'����',N'2014/3/20 17:26:47',N'�û�����������Ϣ(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6600,N'����',N'2014/3/20 17:26:48',N'�û�������(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6601,N'admin',N'2014/3/20 17:27:01',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6602,N'admin',N'2014/3/20 17:39:31',N'�û�����������Ϣ(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6603,N'admin',N'2014/3/20 17:39:47',N'�û�����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6604,N'admin',N'2014/3/20 17:39:55',N'�û�����������Ϣ(admin--���ĵǼ�����(2014/3/6))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6605,N'admin',N'2014/3/20 17:40:49',N'�û��޸Ľڵ㶨����Ϣ(���Ĺ鵵)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6606,N'admin',N'2014/3/20 17:41:07',N'�û��޸Ľڵ㶨����Ϣ(�쵼���)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6607,N'admin',N'2014/3/20 17:42:48',N'�û�����¹�����Ϣ(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6608,N'admin',N'2014/3/20 17:43:51',N'�鿴�û���Ϣ(����)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6609,N'����',N'2014/3/20 17:45:26',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6610,N'����',N'2014/3/20 17:45:56',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6611,N'����',N'2014/3/20 17:46:14',N'�û�������(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6612,N'admin',N'2014/3/20 17:50:05',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6613,N'NoLogin',N'2014/3/20 17:50:05',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'112.64.235.86')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6614,N'admin',N'2014/3/20 17:53:11',N'�û�����¹�����Ϣ(admin--test(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6615,N'admin',N'2014/3/20 17:53:54',N'�û�ɾ������������Ϣ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6616,N'admin',N'2014/3/20 18:12:20',N'�û��鿴���̶�����Ϣ(��������)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6617,N'admin',N'2014/3/20 18:12:56',N'�û��޸����̶�����Ϣ(�칫��Ʒ��������)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6618,N'NoLogin',N'2014/3/20 18:13:47',N'�鿴�û���Ϣ(����)',N'112.65.193.14')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6619,N'admin',N'2014/3/20 18:14:02',N'�û���ӽڵ㶨����Ϣ(����)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6620,N'admin',N'2014/3/20 18:17:17',N'�û���ӽڵ㶨����Ϣ(����)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6621,N'admin',N'2014/3/20 18:18:32',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6622,N'admin',N'2014/3/20 18:19:52',N'�û���ӽڵ㶨����Ϣ(ǩ��)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6623,N'admin',N'2014/3/20 18:20:20',N'�û���ӽڵ㶨����Ϣ(�鵵)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6624,N'admin',N'2014/3/20 18:23:25',N'�û��޸����̶�����Ϣ(ʹʹʹ)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6625,N'admin',N'2014/3/20 18:24:03',N'�û��鿴��������Ϣ(����)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6626,N'admin',N'2014/3/20 18:24:22',N'�û��鿴���̱�����(ID��31)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6627,N'admin',N'2014/3/20 18:29:48',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6628,N'admin',N'2014/3/20 18:31:49',N'�û��޸����̱���Ϣ(�ճ��칫����)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6629,N'admin',N'2014/3/20 18:32:36',N'�û�����¹�����Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6630,N'����',N'2014/3/20 18:34:14',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6631,N'����',N'2014/3/20 18:34:33',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6632,N'����',N'2014/3/20 18:34:40',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6633,N'test',N'2014/3/20 18:34:53',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6634,N'test',N'2014/3/20 18:35:06',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6635,N'test',N'2014/3/20 18:35:24',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6636,N'����',N'2014/3/20 18:35:37',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6637,N'����',N'2014/3/20 18:35:48',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6638,N'����',N'2014/3/20 18:35:48',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6639,N'admin',N'2014/3/20 18:36:06',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6640,N'admin',N'2014/3/20 18:36:17',N'�û����ù���ί����Ϣ(��ί���ˣ�)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6641,N'admin',N'2014/3/20 18:36:49',N'�û�ɾ������������Ϣ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6642,N'admin',N'2014/3/20 18:37:07',N'�û�ɾ������������Ϣ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6643,N'admin',N'2014/3/20 18:38:37',N'�û��޸����̱�����(ID��31)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6644,N'admin',N'2014/3/20 18:40:51',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6645,N'admin',N'2014/3/20 18:41:41',N'�û��޸Ľڵ㶨����Ϣ(����)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6646,N'admin',N'2014/3/20 18:42:10',N'�û��޸Ľڵ㶨����Ϣ(ǩ��)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6647,N'admin',N'2014/3/20 18:42:51',N'�û����ÿ�д�ֶ�(�ڵ�ID��86)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6648,N'admin',N'2014/3/20 18:43:11',N'�û����ÿ�д�ֶ�(�ڵ�ID��87)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6649,N'admin',N'2014/3/20 18:43:22',N'�û����ÿ�д�ֶ�(�ڵ�ID��88)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6650,N'admin',N'2014/3/20 18:46:39',N'�û�����¹�����Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6651,N'admin',N'2014/3/20 18:47:46',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6652,N'admin',N'2014/3/20 18:49:27',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6653,N'test',N'2014/3/20 18:50:48',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6654,N'test',N'2014/3/20 18:51:07',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6655,N'test',N'2014/3/20 18:51:11',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6656,N'admin',N'2014/3/20 18:51:44',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6657,N'admin',N'2014/3/20 18:52:04',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6658,N'admin',N'2014/3/20 18:52:07',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6659,N'admin',N'2014/3/20 19:13:00',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6660,N'admin',N'2014/3/20 19:14:53',N'�û��޸Ĳ�����Ϣ(��Ʒ���۲�)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6661,N'admin',N'2014/3/20 19:22:49',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6662,N'admin',N'2014/3/20 19:24:53',N'�û�����ճ̰�����Ϣ(kkk)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6663,N'admin',N'2014/3/20 19:52:39',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6664,N'admin',N'2014/3/20 19:53:22',N'�û��鿴����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6665,N'admin',N'2014/3/20 19:53:29',N'�û�ɾ������������Ϣ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6666,N'admin',N'2014/3/20 19:53:50',N'�û��޸Ľڵ㶨����Ϣ(����)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6667,N'admin',N'2014/3/20 19:54:08',N'�û�����¹�����Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6668,N'admin',N'2014/3/20 19:54:27',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6669,N'admin',N'2014/3/20 19:54:34',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6670,N'admin',N'2014/3/20 19:58:06',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6671,N'admin',N'2014/3/20 19:58:27',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6672,N'admin',N'2014/3/20 19:58:48',N'�û�ɾ������������Ϣ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6673,N'admin',N'2014/3/20 19:59:26',N'�û��޸Ľڵ㶨����Ϣ(����)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6674,N'test',N'2014/3/20 19:59:43',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6675,N'test',N'2014/3/20 19:59:57',N'�û�����¹�����Ϣ(test--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6676,N'admin',N'2014/3/20 20:00:09',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6677,N'admin',N'2014/3/20 20:02:38',N'�û�����������Ϣ(test--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6678,N'admin',N'2014/3/20 20:02:55',N'�û��޸Ľڵ㶨����Ϣ(����)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6679,N'test',N'2014/3/20 20:03:08',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6680,N'test',N'2014/3/20 20:03:23',N'�û�����¹�����Ϣ(test--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6681,N'admin',N'2014/3/20 20:03:35',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6682,N'admin',N'2014/3/20 20:05:39',N'�û�����������Ϣ(test--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6683,N'admin',N'2014/3/20 20:06:37',N'�û��޸Ľڵ㶨����Ϣ(�鵵)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6684,N'admin',N'2014/3/20 20:06:46',N'�û��޸Ľڵ㶨����Ϣ(ǩ��)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6685,N'admin',N'2014/3/20 20:07:20',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6686,N'admin',N'2014/3/20 20:07:48',N'�û��޸Ľڵ㶨����Ϣ(ǩ��)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6687,N'admin',N'2014/3/20 20:08:30',N'�û���ӽڵ㶨����Ϣ(3��ǩ)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6688,N'admin',N'2014/3/20 20:11:45',N'�û��޸��û���Ϣ(liyiyang)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6689,N'admin',N'2014/3/20 20:12:04',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6690,N'admin',N'2014/3/20 20:12:46',N'�û��޸��û���Ϣ(liyiyang)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6691,N'admin',N'2014/3/20 20:13:10',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6692,N'liyiyang',N'2014/3/20 20:13:32',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6693,N'admin',N'2014/3/20 20:14:08',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6694,N'admin',N'2014/3/20 20:14:45',N'�û��޸��û���Ϣ(������)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6695,N'admin',N'2014/3/20 20:14:56',N'�û��޸��û���Ϣ(������)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6696,N'admin',N'2014/3/20 20:15:10',N'�û��޸��û���Ϣ(������)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6697,N'admin',N'2014/3/20 20:15:31',N'�û��޸��û���Ϣ(majh)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6698,N'admin',N'2014/3/20 20:16:25',N'�û��޸Ľڵ㶨����Ϣ(ǩ��)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6699,N'admin',N'2014/3/20 20:16:32',N'�û��޸Ľڵ㶨����Ϣ(ǩ��)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6700,N'test',N'2014/3/20 20:16:55',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6701,N'test',N'2014/3/20 20:17:09',N'�û�����¹�����Ϣ(test--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6702,N'admin',N'2014/3/20 20:17:31',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6703,N'admin',N'2014/3/20 20:18:06',N'�û�����������Ϣ(test--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6704,N'admin',N'2014/3/20 20:18:09',N'�û�������(test--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6705,N'admin',N'2014/3/20 20:18:27',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6706,N'admin',N'2014/3/20 20:18:45',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6707,N'admin',N'2014/3/20 20:23:20',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6708,N'test',N'2014/3/20 20:24:02',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6709,N'test',N'2014/3/20 20:24:23',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6710,N'test',N'2014/3/20 20:24:49',N'�û�����������Ϣ(test--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6711,N'admin',N'2014/3/20 20:25:14',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6712,N'admin',N'2014/3/20 20:25:29',N'�û�����¹�����Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6713,N'admin',N'2014/3/20 20:26:15',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6714,N'admin',N'2014/3/20 20:26:20',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6715,N'admin',N'2014/3/20 20:26:29',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6716,N'admin',N'2014/3/20 20:26:58',N'�û��޸Ľڵ㶨����Ϣ(3��ǩ)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6717,N'admin',N'2014/3/20 20:27:09',N'�û�����¹�����Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6718,N'admin',N'2014/3/20 20:27:16',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6719,N'admin',N'2014/3/20 20:27:22',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6720,N'admin',N'2014/3/20 20:27:48',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6721,N'test',N'2014/3/20 20:28:18',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6722,N'test',N'2014/3/20 20:28:25',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6723,N'test',N'2014/3/20 20:30:18',N'�û��鿴����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6724,N'liyiyang',N'2014/3/20 20:30:36',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6725,N'liyiyang',N'2014/3/20 20:30:42',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6726,N'admin',N'2014/3/20 20:30:56',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6727,N'admin',N'2014/3/20 20:31:09',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6728,N'admin',N'2014/3/20 20:31:16',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6729,N'majh',N'2014/3/20 20:32:13',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6730,N'majh',N'2014/3/20 20:32:18',N'�û��鿴����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6731,N'majh',N'2014/3/20 20:32:27',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6732,N'liyiyang',N'2014/3/20 20:32:43',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6733,N'liyiyang',N'2014/3/20 20:32:55',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6734,N'liyiyang',N'2014/3/20 20:33:20',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6735,N'admin',N'2014/3/20 20:33:30',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6736,N'admin',N'2014/3/20 20:34:12',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6737,N'admin',N'2014/3/20 20:34:13',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6738,N'admin',N'2014/3/20 20:34:49',N'�û��鿴����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6739,N'admin',N'2014/3/20 20:52:49',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6740,N'admin',N'2014/3/20 20:53:06',N'�û�����¹�����Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6741,N'admin',N'2014/3/20 20:53:15',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6742,N'admin',N'2014/3/20 20:53:41',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6743,N'admin',N'2014/3/20 20:54:02',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6744,N'admin',N'2014/3/20 20:54:11',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6745,N'liyiyang',N'2014/3/20 20:55:17',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6746,N'liyiyang',N'2014/3/20 20:55:24',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6747,N'test',N'2014/3/20 20:55:51',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6748,N'test',N'2014/3/20 20:56:10',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6749,N'test',N'2014/3/20 20:56:14',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6750,N'majh',N'2014/3/20 20:57:40',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6751,N'majh',N'2014/3/20 20:57:50',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6752,N'majh',N'2014/3/20 20:57:59',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6753,N'majh',N'2014/3/20 20:58:14',N'�û�����������Ϣ()',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6754,N'majh',N'2014/3/20 20:58:27',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6755,N'liyiyang',N'2014/3/20 20:59:02',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6756,N'liyiyang',N'2014/3/20 20:59:10',N'�û�����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6757,N'liyiyang',N'2014/3/20 20:59:19',N'�û�������(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6758,N'NoLogin',N'2014/3/20 21:00:18',N'�û��鿴����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'101.226.33.218')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6759,N'liyiyang',N'2014/3/20 21:25:37',N'�û��鿴�ʲ���Ϣ(��������������)',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6760,N'admin',N'2014/3/20 21:44:53',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6761,N'admin',N'2014/3/20 21:53:41',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6762,N'admin',N'2014/3/20 21:53:58',N'�û�����¹�����Ϣ(admin--ʹʹʹ(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6763,N'admin',N'2014/3/20 22:16:26',N'�û���½ϵͳ',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6764,N'admin',N'2014/3/20 22:37:48',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2014/3/20))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6765,N'admin',N'2014/3/20 22:38:57',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012-03-2))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6766,N'admin',N'2014/3/20 22:39:07',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6767,N'admin',N'2014/3/20 22:39:27',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'58.50.163.31')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6768,N'NoLogin',N'2014/3/20 23:09:07',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'180.153.201.15')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6769,N'NoLogin',N'2014/3/20 23:09:26',N'�û��鿴����������Ϣ(admin--���ĵǼ�����(2012/10/7))',N'101.226.51.230')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6770,N'admin',N'2014/3/21 16:11:10',N'�û���½ϵͳ',N'1.24.223.50')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6771,N'admin',N'2014/3/21 16:12:15',N'�û���½ϵͳ',N'1.24.223.50')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6772,N'admin',N'2014/3/22 10:54:05',N'�û���½ϵͳ',N'116.114.122.182')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6773,N'admin',N'2014/3/22 10:55:21',N'�û���½ϵͳ',N'116.114.122.182')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6774,N'admin',N'2014/3/23 19:17:33',N'�û���½ϵͳ',N'116.25.86.123')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6775,N'admin',N'2014/3/23 19:22:56',N'�鿴�û���Ϣ(test)',N'116.25.86.123')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6776,N'admin',N'2014/3/23 19:23:42',N'�û��޸����µ�����Ϣ(�ܱ�)',N'116.25.86.123')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6777,N'admin',N'2014/3/24 11:47:03',N'�û���½ϵͳ',N'183.1.161.53')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6778,N'admin',N'2014/3/24 11:49:27',N'�û��鿴����������Ϣ(admin--ʹʹʹ(2014/3/20))',N'183.1.161.53')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6779,N'admin',N'2014/3/24 11:50:08',N'�û���½ϵͳ',N'14.147.91.46')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6780,N'admin',N'2014/3/24 11:51:16',N'�û���½ϵͳ',N'14.147.91.46')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6781,N'admin',N'2014/3/26 17:22:25',N'�û���½ϵͳ',N'119.34.29.186')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6782,N'admin',N'2014/3/26 17:22:41',N'�û��鿴�ļ�(����)',N'119.34.29.186')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6783,N'admin',N'2014/3/27 16:37:21',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6784,N'admin',N'2014/3/27 16:41:24',N'�û���½ϵͳ',N'27.11.55.41')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6785,N'admin',N'2014/3/27 21:03:33',N'�û���½ϵͳ',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6786,N'admin',N'2014/3/27 22:12:21',N'�û���½ϵͳ',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6787,N'admin',N'2014/3/27 22:27:49',N'�û��鿴��������Ϣ(����)',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6788,N'admin',N'2014/3/27 22:28:03',N'�û�ɾ�����̶�����Ϣ',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6789,N'admin',N'2014/3/27 22:31:00',N'�û��޸����̱�����(ID��14)',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6790,N'admin',N'2014/3/27 22:31:12',N'�û��鿴���̱���Ϣ(�ɹ����뵥)',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6791,N'admin',N'2014/3/27 22:31:20',N'�û��޸����̱�����(ID��25)',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6792,N'admin',N'2014/3/27 22:31:27',N'�û��޸����̱�����(ID��16)',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6793,N'admin',N'2014/3/27 22:31:36',N'�û��޸����̱�����(ID��19)',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6794,N'admin',N'2014/3/27 22:31:43',N'�û��޸����̱�����(ID��20)',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6795,N'admin',N'2014/3/27 22:35:28',N'�û�ɾ������������Ϣ',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6796,N'admin',N'2014/3/27 22:35:34',N'�û�ɾ������������Ϣ',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6797,N'admin',N'2014/3/27 22:36:51',N'�û�����¹�����Ϣ(admin--������������(2014/3/27))',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6798,N'admin',N'2014/3/27 22:41:10',N'�û�ɾ������������Ϣ',N'14.104.36.129')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6799,N'admin',N'2014/3/28 9:14:56',N'�û���½ϵͳ',N'192.168.0.188')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6800,N'admin',N'2014/3/28 10:07:37',N'�û���½ϵͳ',N'218.28.196.58')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6801,N'admin',N'2014/3/28 10:09:53',N'�û��鿴�ļ�(����۶��Ƽ����޹�˾��ϵ��ʽ)',N'218.28.196.58')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6802,N'admin',N'2014/3/28 10:18:23',N'�û���½ϵͳ',N'218.28.196.58')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6803,N'admin',N'2014/3/28 10:19:18',N'�û���½ϵͳ',N'218.28.196.58')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6804,N'admin',N'2014/3/28 10:20:56',N'�鿴�û���Ϣ(test)',N'218.28.196.58')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6805,N'admin',N'2014/3/28 16:12:00',N'�û���½ϵͳ',N'27.11.55.41')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6806,N'admin',N'2014/3/28 21:32:30',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6807,N'admin',N'2014/3/28 21:35:12',N'�û���ӹ���֪ͨ��Ϣ(�������л����֪ͨ)',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6808,N'admin',N'2014/3/30 23:22:10',N'�û���½ϵͳ',N'113.87.221.81')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6809,N'admin',N'2014/3/31 17:14:18',N'�û���½ϵͳ',N'192.168.0.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6810,N'admin',N'2014/3/31 17:14:59',N'�鿴��Ŀ��Ϣ(5rt5rt)',N'192.168.0.102')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6811,N'admin',N'2014/4/1 11:10:55',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6812,N'admin',N'2014/4/1 11:14:27',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6813,N'admin',N'2014/4/1 11:15:20',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6814,N'admin',N'2014/4/1 11:15:24',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6815,N'admin',N'2014/4/1 11:15:41',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6816,N'admin',N'2014/4/1 11:19:27',N'�û��鿴�ļ�(��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6817,N'admin',N'2014/4/1 11:23:34',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--������������(2014/3/27)-������ˮ�ţ�89))',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6818,N'admin',N'2014/4/1 11:24:39',N'�û��鿴���������Ϣ(���ñ���)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6819,N'admin',N'2014/4/1 11:25:30',N'�û��鿴���������Ϣ(���ñ���)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6820,N'admin',N'2014/4/1 11:34:37',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6821,N'admin',N'2014/4/1 11:39:38',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6822,N'admin',N'2014/4/1 11:39:52',N'�û��鿴����������Ϣ(admin--������������(2014/3/27))',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6823,N'admin',N'2014/4/1 11:41:33',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--������������(2014/3/27)-������ˮ�ţ�89))',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6824,N'admin',N'2014/4/1 11:42:08',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--������������(2014/3/27)-������ˮ�ţ�89))',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6825,N'admin',N'2014/4/1 11:44:06',N'�û��鿴�ʼ�(�����µĹ�����Ҫ����(admin--ʹʹʹ(2014/3/20)))',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6826,N'admin',N'2014/4/1 11:44:32',N'�û��鿴����������Ϣ(admin--������������(2014/3/27))',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6827,N'admin',N'2014/4/1 11:48:09',N'�鿴�û���Ϣ(������)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6828,N'admin',N'2014/4/1 11:49:16',N'�û�������û�(cc)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6829,N'cc',N'2014/4/1 11:49:27',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6830,N'admin',N'2014/4/1 11:49:46',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6831,N'admin',N'2014/4/1 11:54:45',N'�û�������ʼ�(tfd)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6832,N'cc',N'2014/4/1 11:54:54',N'�û�������ʼ�(heh)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6833,N'admin',N'2014/4/1 11:55:22',N'�û��鿴�ʼ�(heh)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6834,N'cc',N'2014/4/1 11:55:36',N'�û��鿴�ʼ�(tfd)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6835,N'cc',N'2014/4/1 11:55:57',N'�û��鿴�ʼ�(tfd)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6836,N'admin',N'2014/4/1 11:56:04',N'�û���½ϵͳ',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6837,N'cc',N'2014/4/1 11:59:49',N'�û��鿴�ʼ�(tfd)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6838,N'admin',N'2014/4/1 11:59:55',N'�û��鿴�ʼ�(heh)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6839,N'admin',N'2014/4/1 12:00:03',N'�û�������ʼ�(Re��heh)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6840,N'admin',N'2014/4/1 12:00:22',N'�û��鿴�ʼ�(Re��heh)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6841,N'cc',N'2014/4/1 12:00:26',N'�û��鿴�ʼ�(Re��heh)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6842,N'admin',N'2014/4/1 12:00:30',N'�û��鿴�ʼ�(heh)',N'27.16.97.215')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6843,N'NoLogin',N'2014/4/1 12:00:35',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--������������(2014/3/27)-������ˮ�ţ�89))',N'180.153.206.20')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6844,N'NoLogin',N'2014/4/1 12:02:19',N'�û��鿴���������Ϣ(���ñ���)',N'180.153.163.190')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6845,N'NoLogin',N'2014/4/1 12:26:51',N'�û��鿴����������Ϣ(admin--������������(2014/3/27))',N'101.226.33.216')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6846,N'NoLogin',N'2014/4/1 12:30:47',N'�鿴�û���Ϣ(������)',N'101.226.89.115')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6847,N'NoLogin',N'2014/4/1 12:40:58',N'�û��鿴�ʼ�(tfd)',N'101.226.51.227')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6848,N'admin',N'2014/4/2 14:56:52',N'�û���½ϵͳ',N'60.26.198.38')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6849,N'admin',N'2014/4/2 14:56:55',N'�û���½ϵͳ',N'60.26.198.38')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6850,N'admin',N'2014/4/2 14:58:51',N'�û���½ϵͳ',N'60.26.198.38')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6851,N'admin',N'2014/4/2 14:58:51',N'�û���½ϵͳ',N'60.26.198.38')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6852,N'admin',N'2014/4/2 15:05:04',N'�û���½ϵͳ',N'60.26.198.38')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6853,N'admin',N'2014/4/3 13:10:10',N'�û���½ϵͳ',N'123.138.40.249')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6854,N'admin',N'2014/4/3 13:11:41',N'�û��鿴���̱�����(ID��31)',N'123.138.40.249')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6855,N'admin',N'2014/4/4 17:08:46',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6856,N'admin',N'2014/4/4 17:09:42',N'�û�����ϵͳ���Ѳ���',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6857,N'admin',N'2014/4/4 17:09:48',N'�û�����ϵͳ���Ѳ���',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6858,N'admin',N'2014/4/4 17:21:37',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6859,N'admin',N'2014/4/5 10:41:23',N'�û���½ϵͳ',N'139.227.113.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6860,N'admin',N'2014/4/5 10:41:41',N'�û���½ϵͳ',N'139.227.113.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6861,N'admin',N'2014/4/5 12:43:33',N'�û���½ϵͳ',N'139.227.113.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6862,N'admin',N'2014/4/5 14:12:21',N'�û���½ϵͳ',N'139.227.113.25')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6863,N'admin',N'2014/4/5 21:11:47',N'�û���½ϵͳ',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6864,N'admin',N'2014/4/5 21:16:51',N'�û�����¹�����Ϣ(admin--�ɹ���������(2014/4/5))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6865,N'admin',N'2014/4/5 21:17:23',N'�û��鿴����������Ϣ(admin--�ɹ���������(2014/4/5))',N'127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6866,N'admin',N'2014/4/5 22:47:44',N'�û���½ϵͳ',N'223.198.50.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6867,N'admin',N'2014/4/5 22:48:26',N'�û���½ϵͳ',N'218.19.86.183')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6868,N'admin',N'2014/4/5 22:48:48',N'�鿴�û���Ϣ(cc)',N'218.19.86.183')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6869,N'admin',N'2014/4/5 22:49:00',N'�û���½ϵͳ',N'36.1.125.101')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6870,N'admin',N'2014/4/5 22:49:09',N'�û��鿴�ʼ�(�����µĳ��͹�����(admin--�ɹ���������(2014/4/5)))',N'218.19.86.183')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6871,N'admin',N'2014/4/5 22:49:29',N'�鿴�����ƻ���Ϣ(wqewqe)',N'218.19.86.183')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6872,N'admin',N'2014/4/5 22:49:37',N'�û�ɾ�������㱨',N'223.198.50.11')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6873,N'admin',N'2014/4/5 22:49:45',N'�û��鿴���۶�����Ϣ(ˮ����Ե�2)',N'218.19.86.183')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6874,N'admin',N'2014/4/5 22:53:44',N'�û��鿴�ʼ�(�����µĹ�����Ҫ����(admin--�ɹ���������(2014/4/5)))',N'218.19.86.183')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6875,N'admin',N'2014/6/4 20:26:11',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6876,N'admin',N'2014/6/4 20:28:52',N'�û��鿴�ʼ�(���д��칤��δ����ʱ���ѳ�ʱ��(admin--�ɹ���������(2014/4/5)-������ˮ�ţ�90))',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6877,N'admin',N'2014/6/4 20:31:09',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6878,N'admin',N'2014/6/4 20:33:17',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6879,N'admin',N'2014/6/4 22:02:15',N'�û���½ϵͳ',N'::1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 6880,N'admin',N'2014/6/4 22:35:41',N'�û���½ϵͳ',N'::1')

SET IDENTITY_INSERT [ERPRiZhi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSaveFileName]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSaveFileName]

CREATE TABLE [ERPSaveFileName] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[NowName] [varchar]  (50) NULL,
[OldName] [varchar]  (50) NULL)

ALTER TABLE [ERPSaveFileName] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSaveFileName] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSaveFileName] ON

INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 48,N'634661238427343750.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 49,N'634661239977500000.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 50,N'634661259488906250.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 51,N'634661259783593750.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 52,N'634661260632187500.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 53,N'634661290104062500.gif',N'gz.gif')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 54,N'634661290466093750.jpg',N'ty.jpg')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 55,N'634661290640625000.jpg',N'1.jpg')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 56,N'634661298167500000.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 57,N'634661300971718750.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 58,N'634661302797968750.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 59,N'634661310711250000.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 60,N'634661311256875000.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 61,N'634661311563437500.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 62,N'634661317728906250.xls',N'�½� Microsoft Excel ������.xls')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 63,N'634661317877031250.ppt',N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 64,N'634661321079687500.xls',N'�½� Microsoft Excel ������.xls')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 65,N'634661321234531250.ppt',N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 66,N'634661321370312500.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 67,N'634661321743593750.xls',N'�½� Microsoft Excel ������.xls')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 68,N'634661321857031250.ppt',N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 69,N'634661321979687500.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 70,N'634661322213906250.xls',N'�½� Microsoft Excel ������.xls')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 71,N'634661322334062500.ppt',N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 72,N'634661322632968750.xls',N'�½� Microsoft Excel ������.xls')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 73,N'634661322755781250.ppt',N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 74,N'634661323421562500.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 75,N'634662816264218750.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 76,N'634662817294843750.ppt',N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 77,N'634662818168125000.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 78,N'634662818220625000.xls',N'�½� Microsoft Excel ������.xls')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 79,N'634662845363593750.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 80,N'634662845655000000.ppt',N'�½� Microsoft PowerPoint ��ʾ�ĸ�.ppt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 81,N'634662845909843750.xls',N'�½� Microsoft Excel ������.xls')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 82,N'634662846448593750.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 83,N'634662873838593750.doc',N'����۶��Ƽ����޹�˾��ϵ��ʽ.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 84,N'634929798131431979.zip',N'WoExpressV2.zip')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 85,N'634929799017802677.doc',N'���ڵ�������-20121228.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 86,N'635014956048502360.jpg',N'C360_2013-04-13-20-35-56.jpg')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 87,N'635016624592612711.doc',N'��Ϣϵͳ�������� 2 �����򷽰���.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 88,N'635016625962862223.docx',N'����.docx')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 89,N'635016649997121196.jpg',N'Desert.jpg')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 90,N'635195902207907237.docx',N'bug��¼HUQIBIN.docx')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 91,N'635197581168330000.png',N'Snap12.png')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 92,N'635198648396877354.docx',N'�������Դ���νṹ�㱨.docx')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 93,N'635199369580761378.docx',N'CQMS�������˿�ʹ�ü����ݿ��������.docx')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 94,N'635199370308141378.docx',N'CQMS�������˿�ʹ�ü����ݿ��������.docx')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 95,N'635199370589861378.docx',N'CQMS�������˿�ʹ�ü����ݿ��������.docx')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 96,N'635199460319411378.txt',N'O.A1.����.txt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 97,N'635200447076861433.doc',N'ѧϰ�ƻ�.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 98,N'635254656790097549.xls',N'hgds-0521.xls')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 99,N'635254665496377549.txt',N'smslist.txt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 100,N'635254697854407549.gif',N'�ޱ���_06.gif')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 101,N'635286843248159656.ppt',N'��1��  Android��������.ppt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 102,N'635286843797549656.xlsx',N'���ó��.xlsx')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 103,N'635286850419929656.xlsx',N'EFFFBEʡ��������.xlsx')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 104,N'635294405415080000.docx',N'�½� Microsoft Word �ĵ�.docx')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 105,N'635309201526607599.doc',N'test.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 106,N'635309229237267599.doc',N'test.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 107,N'635309235805477599.doc',N'test.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 108,N'635309244422417599.doc',N'test.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 109,N'635309325318477599.doc',N'test.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 110,N'635309340921847599.doc',N'test.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 111,N'635309379455307599.doc',N'test.doc')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 112,N'635316392215240000.ppt',N'JQuery���.ppt')
INSERT [ERPSaveFileName] ([ID],[NowName],[OldName]) VALUES ( 113,N'635319500149170000.jpg',N'8636892_100840677165_2.jpg')

SET IDENTITY_INSERT [ERPSaveFileName] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSerils]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSerils]

CREATE TABLE [ERPSerils] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[SerilsStr] [varchar]  (200) NULL,
[DateStr] [varchar]  (200) NULL,
[UserNum] [varchar]  (50) NULL,
[DanWeiStr] [varchar]  (5000) NULL)

ALTER TABLE [ERPSerils] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSerils] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSerils] ON

INSERT [ERPSerils] ([ID],[SerilsStr],[DateStr],[UserNum],[DanWeiStr]) VALUES ( 1,N'BD',N'446D57B30605',N'CNSOFTWEB',N'78511BA2')

SET IDENTITY_INSERT [ERPSerils] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSheBei]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSheBei]

CREATE TABLE [ERPSheBei] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[SheBeiName] [varchar]  (50) NULL,
[YuanBianHao] [varchar]  (50) NULL,
[CaiWuBianHao] [varchar]  (50) NULL,
[JiBuBianHao] [varchar]  (50) NULL,
[SheBeiLeiBie] [varchar]  (50) NULL,
[XingHao] [varchar]  (50) NULL,
[XiangMu] [varchar]  (50) NULL,
[ChuChangBianHao] [varchar]  (50) NULL,
[ShiYongBuMen] [varchar]  (50) NULL,
[ShengChanChangJia] [varchar]  (50) NULL,
[DanWei] [varchar]  (50) NULL,
[DanJia] [varchar]  (50) NULL,
[SuYuanFangShi] [varchar]  (50) NULL,
[SuYaunDanWei] [varchar]  (50) NULL,
[SuYuanZhouQi] [varchar]  (50) NULL,
[ShangCiSuYuanDate] [varchar]  (50) NULL,
[JiHuaSuYaunDate] [varchar]  (50) NULL,
[ZhengShuBianHao] [varchar]  (50) NULL,
[CeLiangFanWei] [varchar]  (50) NULL,
[BuQueDingDu] [varchar]  (50) NULL,
[ShiYongCeLiangFanWei] [varchar]  (50) NULL,
[JingDu] [varchar]  (50) NULL,
[JieGuoPingJia] [varchar]  (50) NULL,
[PingJiaUser] [varchar]  (50) NULL,
[QianZiDate] [varchar]  (50) NULL,
[ZhengGai] [varchar]  (50) NULL,
[ChuCiSuYuanDate] [varchar]  (50) NULL,
[QiYongDate] [varchar]  (50) NULL,
[CunFangAddr] [varchar]  (50) NULL,
[GuanLiUser] [varchar]  (50) NULL,
[JiFei] [varchar]  (50) NULL,
[ZhuangTai] [varchar]  (50) NULL,
[BeiZhu] [varchar]  (500) NULL,
[HeDuiUser] [varchar]  (50) NULL,
[TiXingDate] [varchar]  (50) NULL,
[TiXingUser] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL)

ALTER TABLE [ERPSheBei] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSheBei] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSheBei] ON

INSERT [ERPSheBei] ([ID],[SheBeiName],[YuanBianHao],[CaiWuBianHao],[JiBuBianHao],[SheBeiLeiBie],[XingHao],[XiangMu],[ChuChangBianHao],[ShiYongBuMen],[ShengChanChangJia],[DanWei],[DanJia],[SuYuanFangShi],[SuYaunDanWei],[SuYuanZhouQi],[ShangCiSuYuanDate],[JiHuaSuYaunDate],[ZhengShuBianHao],[CeLiangFanWei],[BuQueDingDu],[ShiYongCeLiangFanWei],[JingDu],[JieGuoPingJia],[PingJiaUser],[QianZiDate],[ZhengGai],[ChuCiSuYuanDate],[QiYongDate],[CunFangAddr],[GuanLiUser],[JiFei],[ZhuangTai],[BeiZhu],[HeDuiUser],[TiXingDate],[TiXingUser],[UserName],[TimeStr]) VALUES ( 3,N'GXBS00026',N'HB-28095',N'CW-09807',N'HJK-090901',N'�̶��ʲ�',N'RAYST20XBAP',N'����������������ʾ������',N'12510120',N'�ۺϲ�',N'������ܼ�⼼���������޹�˾',N'̨',N'61000',N'У׼',N'�ʼ�Ժ',N'12',N'2011-3-1',N'2012-3-1',N'TC05�ֵ�2011060215',N'23��510��',N'��1%',N'25��360',N'��1%',N'�ϸ�',N'����',N'2011-3-1',N'��',N'2011-3-1',N'2011-3-1',N'A��801',N'��ȫʤ',N'450',N'����',N'��',N'��ȫʤ',N'2012-3-1',N'admin',N'admin',N'2012/3/2 9:47:51')

SET IDENTITY_INSERT [ERPSheBei] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPShenPi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPShenPi]

CREATE TABLE [ERPShenPi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ContentStr] [varchar]  (5000) NULL,
[TimeStr] [datetime]  NULL,
[UserName] [varchar]  (50) NULL)

ALTER TABLE [ERPShenPi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPShenPi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPShenPi] ON

INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 1,N'ͬ����ļ���д����',N'2011/11/28 18:11:19',N'admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 2,N'��ͬ�⣬���᰸����ȡ��������������',N'2011/11/28 18:12:14',N'admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 3,N'��ת�����񲿴��������ġ�',N'2011/11/28 18:12:45',N'admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 4,N'��ת����Ϣ���������ת�ش���',N'2011/11/28 18:14:28',N'admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 5,N'13131',N'2013/11/11 9:02:55',N'liyiyang')

SET IDENTITY_INSERT [ERPShenPi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPShiShi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPShiShi]

CREATE TABLE [ERPShiShi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProjectName] [varchar]  (200) NULL,
[ProjectSerils] [varchar]  (50) NULL,
[ShiShiTime] [varchar]  (50) NULL,
[ShiShiRen] [varchar]  (50) NULL,
[ShiShiContent] [varchar]  (500) NULL,
[WanGongLiang] [varchar]  (50) NULL,
[PingJia] [varchar]  (50) NULL,
[XiaoJie] [varchar]  (8000) NULL,
[WenTi] [varchar]  (8000) NULL,
[YuJiJieJueRiQi] [varchar]  (50) NULL,
[WenTiJieDa] [varchar]  (8000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPShiShi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPShiShi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPShiShi] ON


SET IDENTITY_INSERT [ERPShiShi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPShouKuan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPShouKuan]

CREATE TABLE [ERPShouKuan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProjectName] [varchar]  (200) NULL,
[ProjectSerils] [varchar]  (50) NULL,
[JieDuanName] [varchar]  (50) NULL,
[ShouKuanE] [varchar]  (50) NULL,
[FaPiaoHao] [varchar]  (50) NULL,
[ShouKuanDate] [varchar]  (50) NULL,
[DaoKuanDate] [varchar]  (50) NULL,
[ShengYuE] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPShouKuan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPShouKuan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPShouKuan] ON

INSERT [ERPShouKuan] ([ID],[ProjectName],[ProjectSerils],[JieDuanName],[ShouKuanE],[FaPiaoHao],[ShouKuanDate],[DaoKuanDate],[ShengYuE],[UserName],[TimeStr]) VALUES ( 4,N'XXXչ',N'XM001',N'����',N'123',N'1231',N'2013-4-15',N'2013-4-24',N'123',N'admin',N'2013/4/15 23:26:52')

SET IDENTITY_INSERT [ERPShouKuan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSongYang]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSongYang]

CREATE TABLE [ERPSongYang] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CustomName] [varchar]  (100) NULL,
[SongYangLiaoHao] [varchar]  (500) NULL,
[SongYangType] [varchar]  (500) NULL,
[SongYangShuLiang] [varchar]  (50) NULL,
[SongYangDanJia] [varchar]  (50) NULL,
[SongYangJinE] [varchar]  (50) NULL,
[SongYangResult] [varchar]  (5000) NULL,
[SongYangTime] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[IFShare] [varchar]  (5000) NULL,
[CusBakA] [varchar]  (8000) NULL,
[CusBakB] [varchar]  (8000) NULL,
[CusBakC] [varchar]  (8000) NULL,
[CusBakD] [varchar]  (8000) NULL,
[CusBakE] [varchar]  (8000) NULL)

ALTER TABLE [ERPSongYang] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSongYang] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSongYang] ON

INSERT [ERPSongYang] ([ID],[CustomName],[SongYangLiaoHao],[SongYangType],[SongYangShuLiang],[SongYangResult],[SongYangTime],[UserName],[TimeStr],[CusBakE]) VALUES ( 7,N'����������Ź�ҵ��Ʒ���޹�˾',N'BD-YP-001',N'��������',N'1',N'��ʾЧ���ܺã��ͻ�����',N'2012-3-1',N'admin',N'2012/3/2 11:49:24',N'2012-3-1')

SET IDENTITY_INSERT [ERPSongYang] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSupplyLink]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSupplyLink]

CREATE TABLE [ERPSupplyLink] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[SupplysName] [varchar]  (50) NULL,
[LinkManName] [varchar]  (50) NULL,
[ZhiWei] [varchar]  (50) NULL,
[Sex] [varchar]  (50) NULL,
[ShengRi] [datetime]  NULL,
[AiHao] [varchar]  (200) NULL,
[IFFirstLink] [varchar]  (50) NULL,
[YouBian] [varchar]  (50) NULL,
[DiZhi] [varchar]  (500) NULL,
[JobTel] [varchar]  (50) NULL,
[JiaTingTel] [varchar]  (50) NULL,
[MobTel] [varchar]  (50) NULL,
[EmailStr] [varchar]  (50) NULL,
[QQorMsn] [varchar]  (50) NULL,
[BackInfo] [varchar]  (5000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPSupplyLink] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSupplyLink] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSupplyLink] ON

INSERT [ERPSupplyLink] ([ID],[SupplysName],[LinkManName],[ZhiWei],[Sex],[ShengRi],[AiHao],[IFFirstLink],[YouBian],[DiZhi],[JobTel],[JiaTingTel],[MobTel],[EmailStr],[QQorMsn],[UserName],[TimeStr]) VALUES ( 3,N'�������',N'������',N'����',N'��',N'1990/1/1 0:00:00',N'����',N'��',N'400000',N'�������山�����˹�ҵ԰',N'023-67466469',N'023-67466469',N'13696432490',N'9618195@qq.com',N'9618195',N'admin',N'2012/3/2 12:04:03')

SET IDENTITY_INSERT [ERPSupplyLink] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSupplys]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSupplys]

CREATE TABLE [ERPSupplys] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[SupplysName] [varchar]  (50) NULL,
[Serils] [varchar]  (50) NULL,
[JianCheng] [varchar]  (50) NULL,
[DianHua] [varchar]  (50) NULL,
[MobTel] [varchar]  (50) NULL,
[ChuanZhen] [varchar]  (50) NULL,
[URLStr] [varchar]  (50) NULL,
[EmailStr] [varchar]  (50) NULL,
[DiQu] [varchar]  (50) NULL,
[YouBian] [varchar]  (50) NULL,
[Address] [varchar]  (500) NULL,
[KaiHuHang] [varchar]  (200) NULL,
[ZhangHao] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPSupplys] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSupplys] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSupplys] ON

INSERT [ERPSupplys] ([ID],[SupplysName],[Serils],[JianCheng],[DianHua],[MobTel],[ChuanZhen],[URLStr],[DiQu],[UserName],[TimeStr]) VALUES ( 2,N'�������',N'LX-001',N'�������',N'023-67466469',N'13696432490',N'023-67466469',N'http://www.cnsoftweb.com',N'������',N'admin',N'2012/3/2 12:02:40')

SET IDENTITY_INSERT [ERPSupplys] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSystemSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSystemSetting]

CREATE TABLE [ERPSystemSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileType] [varchar]  (8000) NULL)

ALTER TABLE [ERPSystemSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSystemSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSystemSetting] ON

INSERT [ERPSystemSetting] ([ID],[FileType]) VALUES ( 1,N'|doc||jpg||xls||cad||rar||zip||wps||wps||ppt||txt||gif||png||docx||xlsx||pptx|')

SET IDENTITY_INSERT [ERPSystemSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTalkInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTalkInfo]

CREATE TABLE [ERPTalkInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TalkRoomName] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[ContentStr] [varchar]  (8000) NULL)

ALTER TABLE [ERPTalkInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTalkInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTalkInfo] ON

INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 25,N'������',N'admin',N'������',N'2012/3/2 12:30:37',N'��Һ�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 26,N'������',N'admin',N'������',N'2012/3/2 12:30:52',N'���ε�����ϣ����Ҷ����գ�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 27,N'��͹���',N'liyiyang',N'������',N'2013/11/11 9:34:28',N'''
jklk')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 28,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:34:39',N'kl.lk')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 29,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:34:51',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 30,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:34:55',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 31,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:34:56',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 32,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:34:57',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 33,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:34:58',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 34,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:00',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 35,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:00',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 36,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:01',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 37,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:03',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 38,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:04',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 39,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:05',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 40,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:06',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 41,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:08',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr]) VALUES ( 42,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:08')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 43,N'��͹���',N'liyiyang',N'klk',N'2013/11/11 9:35:10',N's')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 44,N'���ѽ��',N'admin',N'������',N'2014/3/6 22:42:21',N'dsfas')

SET IDENTITY_INSERT [ERPTalkInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTalkOnlineUser]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTalkOnlineUser]

CREATE TABLE [ERPTalkOnlineUser] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TalkRoomName] [varchar]  (500) NULL,
[LoginUser] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPTalkOnlineUser] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTalkOnlineUser] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTalkOnlineUser] ON

INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 14,N'������',N'admin',N'2012/3/2 12:30:31')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 15,N'��͹���',N'liyiyang',N'2013/11/11 9:35:21')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 16,N'�����ˮ',N'liyiyang',N'2013/11/11 9:35:38')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 17,N'���й�ͨ',N'liyiyang',N'2013/11/11 9:35:47')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 18,N'���й�ͨ',N'admin',N'2014/2/20 21:17:58')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 19,N'�������',N'admin',N'2014/2/24 10:56:47')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 20,N'���ѽ��',N'admin',N'2014/3/6 22:43:14')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 21,N'��������ͨ',N'admin',N'2014/3/6 22:47:13')

SET IDENTITY_INSERT [ERPTalkOnlineUser] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTalkSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTalkSetting]

CREATE TABLE [ERPTalkSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TalkName] [varchar]  (5000) NULL)

ALTER TABLE [ERPTalkSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTalkSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTalkSetting] ON

INSERT [ERPTalkSetting] ([ID],[TalkName]) VALUES ( 1,N'���ѽ��|������|�������|��͹���|���й�ͨ|��������|�����ˮ|��������ͨ|����һ�鹵ͨ|���۶��鹵ͨ|������Ա��ͨ|�쵼Э��')

SET IDENTITY_INSERT [ERPTalkSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTaskFP]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTaskFP]

CREATE TABLE [ERPTaskFP] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TaskTitle] [varchar]  (500) NULL,
[TaskContent] [text]  NULL,
[FromUser] [varchar]  (50) NULL,
[ToUserList] [varchar]  (8000) NULL,
[XinXiGouTong] [text]  NULL,
[JinDu] [decimal]  (18,2) NULL,
[WanCheng] [varchar]  (8000) NULL,
[NowState] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[KSSJ] [datetime]  NULL,
[JSSJ] [datetime]  NULL,
[SFFK] [nvarchar]  (10) NULL,
[FKSJ] [datetime]  NULL)

ALTER TABLE [ERPTaskFP] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTaskFP] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTaskFP] ON

INSERT [ERPTaskFP] ([ID],[TaskTitle],[TaskContent],[FromUser],[ToUserList],[XinXiGouTong],[JinDu],[WanCheng],[NowState],[TimeStr],[KSSJ],[JSSJ],[SFFK],[FKSJ]) VALUES ( 4,N'����ȥ�ͻ��ֳ�ʵʩ����ѵ��������',N'<P>�ͷ���Ҫ��ʱ��ͻ���ɹ�ͨ��ע����Ȱ��š����κ�������ʱ�㱨��</P><P>������ע�⼼��ʵʩ����ѵ����ͻ�Э�̺þ���ʱ�䡣</P><P>��������ʱ��ɿ������񣬾�����ɲ��Թ�����</P>',N'admin',N'����,������,admin,��ȫʤ',N'�㱨�û���admin&nbsp;&nbsp;ʱ�䣺2012-02-29 16:44:50&nbsp;&nbsp;���½��ȣ�<img src="../images/vote_bg.gif" width=45  height=10 />&nbsp;45%<br>��������������ѵ��ϣ��ȴ��ͻ�Ԥ��ʱ�䡣<br>�㱨���ݣ�������ѵʵʩ��ϡ�<hr style="height:1px; color: #006600;">�㱨�û���admin&nbsp;&nbsp;ʱ�䣺2012-02-29 16:44:04&nbsp;&nbsp;���½��ȣ�<img src="../images/vote_bg.gif" width=20  height=10 />&nbsp;20%<br>���������Ѿ���ͻ���Ǣ��ϣ��ȴ�������һ����ϵʱ�䣬��������ɣ��ȴ�ʵʩ��<br>�㱨���ݣ������Ѿ���ϣ��ȴ�ʵʩ����ѵ���������Ѿ�׼�����ơ�<hr style="height:1px; color: #006600;">��ʾ�û���admin&nbsp;&nbsp;ʱ�䣺2012-02-29 16:42:58&nbsp;&nbsp;����״̬������ִ��<br>��ʾ���ݣ���ҿ�ʼŬ��ִ�а�<hr style="height:1px; color: #006600;">',45.00,N'������ѵ��ϣ��ȴ��ͻ�Ԥ��ʱ�䡣',N'����ִ��',N'2012/2/29 16:42:33',N'2013/1/16 0:00:00',N'2013/1/17 0:00:00',N'�ѷ�',N'2013/1/17 13:55:00')
INSERT [ERPTaskFP] ([ID],[TaskTitle],[TaskContent],[FromUser],[ToUserList],[JinDu],[WanCheng],[NowState],[TimeStr],[KSSJ],[JSSJ],[SFFK],[FKSJ]) VALUES ( 5,N'ssdf',N'sdfsfs',N'admin',N'admin',0.00,N'����',N'�������',N'2013/1/17 14:39:38',N'2013/1/18 0:00:00',N'2013/1/9 0:00:00',N'�ѷ�',N'2013/1/17 14:42:00')

SET IDENTITY_INSERT [ERPTaskFP] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTelFile]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTelFile]

CREATE TABLE [ERPTelFile] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[FromUser] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[FileType] [varchar]  (50) NULL,
[ToUser] [varchar]  (8000) NULL,
[YiJieShouRen] [varchar]  (8000) NULL,
[ContentStr] [text]  NULL,
[FuJianStr] [varchar]  (1000) NULL,
[ChuanYueYiJian] [text]  NULL,
[QianShouHouIDList] [varchar]  (8000) NULL,
[ChuanYueHouIDList1] [varchar]  (8000) NULL)

ALTER TABLE [ERPTelFile] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTelFile] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTelFile] ON

INSERT [ERPTelFile] ([ID],[TitleStr],[FromUser],[TimeStr],[FileType],[ToUser],[YiJieShouRen],[ContentStr],[FuJianStr],[ChuanYueYiJian],[QianShouHouIDList],[ChuanYueHouIDList1]) VALUES ( 8,N'��λOAϵͳ���°���ʽ�Ƴ�����ӭʹ��',N'admin',N'2012/2/29 16:30:47',N'��ͨ',N'����,������,admin',N'admin',N'<SPAN id=Label6><P>��λͬ�ʣ����Ǻã�</P><P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P></SPAN>',N'634661298167500000.doc',N'<font color=#001EFF>admin(2012-02-29 16:31:47)��</font>���λͬ�ʣ�����ʹ�ã����κ����ʼ�ʱ��ϵ���ǡ�<hr height=1px><font color=#001EFF>admin(2012-02-29 16:35:48)��</font>��ϵ�绰��023-67466469  13696432490<hr height=1px><font color=#001EFF>admin(2014/4/1 11:19:31)��</font><hr height=1px><font color=#001EFF>admin(2014/4/1 11:19:38)��</font><hr height=1px>',N'0,4,4',N'5')
INSERT [ERPTelFile] ([ID],[TitleStr],[FromUser],[TimeStr],[FileType],[ToUser],[ContentStr],[FuJianStr],[QianShouHouIDList],[ChuanYueHouIDList1]) VALUES ( 9,N'����۶��Ƽ����޹�˾��ϵ��ʽ',N'admin',N'2012/2/29 16:35:04',N'����',N'����,������,admin,��ȫʤ,������,������,��Ϊ��,�Ź���,������,�ܱ�,������',N'����۶��Ƽ����޹�˾��ϵ��ʽ',N'634661300971718750.doc',N'0',N'6')
INSERT [ERPTelFile] ([ID],[TitleStr],[FromUser],[TimeStr],[ToUser],[FuJianStr],[QianShouHouIDList],[ChuanYueHouIDList1]) VALUES ( 11,N'����ѧϰ�ƻ�',N'liyiyang',N'2013/11/14 16:51:52',N'zhoujun',N'635200447076861433.doc',N'0',N'0')
INSERT [ERPTelFile] ([ID],[TitleStr],[FromUser],[TimeStr],[FileType],[ToUser],[YiJieShouRen],[FuJianStr],[QianShouHouIDList],[ChuanYueHouIDList1]) VALUES ( 12,N'����',N'admin',N'2014/3/3 10:49:45',N'��ͨ',N'����,������,admin,��ȫʤ,majh,liyiyang,test,������,������,��Ϊ��,�Ź���,������,�ܱ�,������',N'admin',N'635294405415080000.docx',N'0,0',N'0')

SET IDENTITY_INSERT [ERPTelFile] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTiKu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTiKu]

CREATE TABLE [ERPTiKu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (200) NULL,
[ItemsA] [varchar]  (200) NULL,
[ItemsB] [varchar]  (200) NULL,
[ItemsC] [varchar]  (200) NULL,
[ItemsD] [varchar]  (200) NULL,
[ItemsE] [varchar]  (200) NULL,
[ItemsF] [varchar]  (200) NULL,
[ItemsG] [varchar]  (200) NULL,
[ItemsH] [varchar]  (200) NULL,
[AnswerStr] [varchar]  (8000) NULL,
[TiKuID] [int]  NULL,
[FenLeiStr] [varchar]  (20) NULL)

ALTER TABLE [ERPTiKu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTiKu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTiKu] ON

INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 41,N'��������ֱϽ�У�����',N'��ȷ',N'����',N'A',1,N'�ж���')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 42,N'�۶��Ƽ��Ǹ߿Ƽ���ҵ��',N'��ȷ',N'����',N'A',1,N'�ж���')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 43,N'�ƺӵ���Դ���Ϻ���',N'��ȷ',N'����',N'B',1,N'�ж���')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 44,N'���ײ�����150���꣬����',N'��ȷ',N'����',N'B',1,N'�ж���')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 45,N'�۶�OAϵͳ�ر���ã�֧�ְ۶���',N'��ȷ',N'����',N'A',1,N'�ж���')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 46,N'��������������ĸ�����̨������',N'���յ���̨',N'��������̨',N'��������̨',N'�������̨',N'D',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[ItemsE],[ItemsF],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 47,N'�۶��Ƽ����ڳ����ǣ�',N'����',N'�ɶ�',N'����',N'����',N'�人',N'����',N'A',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 48,N'�����ĸ����������ޣ�',N'������',N'�й�',N'����',N'ī����',N'B',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 49,N'��������������ߵ�ɽ�壿',N'ϲ������ɽ',N'��֪��ʲôɽ',N'̩ɽ',N'��ɽ',N'A',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 50,N'�����ĸ���������ݿ������',N'CAD',N'PS',N'MSSQL',N'WMI',N'C',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 51,N'������Щ���й����ڣ�',N'̩ɽ',N'��ɽ',N'ŦԼ',N'ī����',N'AB',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 52,N'������Щ���������ڣ�',N'����',N'�ֶ�',N'����',N'����',N'CD',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 53,N'�����ְ���ǣ�',N'ά�������ƽ',N'��չ����',N'�ٽ���ᷢչ',N'���ڷ��ٸ�ǿ',N'ABCD',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[ItemsE],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 54,N'�ߴ�������Щ��',N'������',N'������',N'����',N'�ڸɴ���',N'���Ƿ���',N'ABC',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[ItemsA],[ItemsB],[ItemsC],[ItemsD],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 55,N'·����һ�����ʲô���ܣ�',N'·��',N'����',N'��������',N'DMZָ��',N'ABCD',1,N'����ѡ����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 56,N'�й����׶��ǣ�',N'����',1,N'�����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 57,N'����ʡ��ʡ���ǣ�',N'�Ϸ�',1,N'�����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 58,N'������һ����ǣ�',N'�й�',1,N'�����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 59,N'������������ϵ�����ǣ�',N'̫��ϵ',1,N'�����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 60,N'̫��ϵ��������ϵ�ǣ�',N'����ϵ',1,N'�����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 61,N'��Ҫ����̫�������֮��Ĺ�ϵ��',N'�����ޱ�׼�𰸣��ľ�����������֡�',1,N'�����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 62,N'��Ҫ�����Ŵ����ִ��Ĳ�ͬ��',N'������ҪĿ�ĵ���ʶ���㣬��������֡�',1,N'�����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 63,N'���Ϲ���������ʲô?',N'ά�������ƽ��Э�̽����ͳһ����',1,N'�����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 64,N'�й��Ŵ�����Щ������',N'�Ŵ�����ֻҪд��10�����ϼ��ɡ�',1,N'�����')
INSERT [ERPTiKu] ([ID],[TitleStr],[AnswerStr],[TiKuID],[FenLeiStr]) VALUES ( 65,N'���ӵ�ִ��������ʲô��',N'������Ϊ���Σ��������˺�һ��',1,N'�����')

SET IDENTITY_INSERT [ERPTiKu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTiKuKaoShi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTiKuKaoShi]

CREATE TABLE [ERPTiKuKaoShi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[ShiJuanID] [int]  NULL,
[ShiJuanName] [varchar]  (500) NULL)

ALTER TABLE [ERPTiKuKaoShi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTiKuKaoShi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTiKuKaoShi] ON

INSERT [ERPTiKuKaoShi] ([ID],[UserName],[TimeStr],[ShiJuanID],[ShiJuanName]) VALUES ( 6,N'admin',N'2012/3/2 11:26:32',6,N'�۶�Ա���״�֪ʶ�ʴ���--����Ծ�')
INSERT [ERPTiKuKaoShi] ([ID],[UserName],[TimeStr],[ShiJuanID],[ShiJuanName]) VALUES ( 7,N'admin',N'2013/4/13 23:51:54',6,N'�۶�Ա���״�֪ʶ�ʴ���--����Ծ�')
INSERT [ERPTiKuKaoShi] ([ID],[UserName],[TimeStr],[ShiJuanID],[ShiJuanName]) VALUES ( 8,N'admin',N'2013/4/13 23:56:51',6,N'�۶�Ա���״�֪ʶ�ʴ���--����Ծ�')
INSERT [ERPTiKuKaoShi] ([ID],[UserName],[TimeStr],[ShiJuanID],[ShiJuanName]) VALUES ( 9,N'admin',N'2013/4/13 23:57:33',6,N'�۶�Ա���״�֪ʶ�ʴ���--����Ծ�')
INSERT [ERPTiKuKaoShi] ([ID],[UserName],[TimeStr],[ShiJuanID],[ShiJuanName]) VALUES ( 10,N'liyiyang',N'2013/11/11 9:21:29',5,N'�۶�Ա���״�֪ʶ�ʴ���')

SET IDENTITY_INSERT [ERPTiKuKaoShi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTiKuKaoShiJieGuo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTiKuKaoShiJieGuo]

CREATE TABLE [ERPTiKuKaoShiJieGuo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[KaoShiID] [int]  NULL,
[TiMuID] [int]  NULL,
[DaAn] [varchar]  (8000) NULL,
[UserDaAn] [varchar]  (8000) NULL,
[DeFen] [decimal]  (10,1) NULL)

ALTER TABLE [ERPTiKuKaoShiJieGuo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTiKuKaoShiJieGuo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTiKuKaoShiJieGuo] ON

INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 54,6,41,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 55,6,42,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 56,6,43,N'B',N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 57,6,44,N'B',N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 58,6,45,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 59,6,46,N'D',N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 60,6,47,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 61,6,48,N'B',N'B',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 62,6,49,N'A',N'B',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 63,6,50,N'C',N'B',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 64,6,51,N'AB',N'AB',4.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 65,6,52,N'CD',N'ABCD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 66,6,53,N'ABCD',N'BC',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 67,6,54,N'ABC',N'BC',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 68,6,55,N'ABCD',N'ABCD',4.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 69,6,56,N'����',N'����',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 70,6,57,N'�Ϸ�',N'�Ϸ�',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 71,6,58,N'�й�',N'�й�',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 72,6,59,N'̫��ϵ',N'�����',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 73,6,60,N'����ϵ',N'̫��ϵ',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 74,6,61,N'�����ޱ�׼�𰸣��ľ�����������֡�',N'�������ĸ��ϵ����������������֮��Ĺ�ϵ��',8.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 75,6,62,N'������ҪĿ�ĵ���ʶ���㣬��������֡�',N'�Ŵ�û�е磬���Ծ�û����һ��',8.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 76,6,63,N'ά�������ƽ��Э�̽����ͳһ����',N'ά�������ƽ',9.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 77,6,64,N'�Ŵ�����ֻҪд��10�����ϼ��ɡ�',N'����Ԫ����',6.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 78,6,65,N'������Ϊ���Σ��������˺�һ��',N'��Ϊ����',10.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 79,8,41,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 80,8,42,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 81,8,43,N'B',N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 82,8,44,N'B',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 83,8,45,N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 84,8,46,N'D',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 85,8,47,N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 86,8,48,N'B',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 87,8,49,N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 88,8,50,N'C',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 89,8,51,N'AB',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 90,8,52,N'CD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 91,8,53,N'ABCD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 92,8,54,N'ABC',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 93,8,55,N'ABCD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 94,8,56,N'����',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 95,8,57,N'�Ϸ�',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 96,8,58,N'�й�',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 97,8,59,N'̫��ϵ',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 98,8,60,N'����ϵ',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 99,8,61,N'�����ޱ�׼�𰸣��ľ�����������֡�')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 100,8,62,N'������ҪĿ�ĵ���ʶ���㣬��������֡�')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 101,8,63,N'ά�������ƽ��Э�̽����ͳһ����')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 102,8,64,N'�Ŵ�����ֻҪд��10�����ϼ��ɡ�')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 103,8,65,N'������Ϊ���Σ��������˺�һ��')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 104,9,41,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 105,9,42,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 106,9,43,N'B',N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 107,9,44,N'B',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 108,9,45,N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 109,9,46,N'D',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 110,9,47,N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 111,9,48,N'B',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 112,9,49,N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 113,9,50,N'C',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 114,9,51,N'AB',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 115,9,52,N'CD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 116,9,53,N'ABCD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 117,9,54,N'ABC',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 118,9,55,N'ABCD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 119,9,56,N'����',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 120,9,57,N'�Ϸ�',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 121,9,58,N'�й�',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 122,9,59,N'̫��ϵ',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 123,9,60,N'����ϵ',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 124,9,61,N'�����ޱ�׼�𰸣��ľ�����������֡�')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 125,9,62,N'������ҪĿ�ĵ���ʶ���㣬��������֡�')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 126,9,63,N'ά�������ƽ��Э�̽����ͳһ����')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 127,9,64,N'�Ŵ�����ֻҪд��10�����ϼ��ɡ�')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 128,9,65,N'������Ϊ���Σ��������˺�һ��')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 129,10,41,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[UserDaAn],[DeFen]) VALUES ( 130,10,42,N'A',N'A',2.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 131,10,43,N'B',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 132,10,44,N'B',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 133,10,45,N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 134,10,46,N'D',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 135,10,47,N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 136,10,48,N'B',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 137,10,49,N'A',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 138,10,50,N'C',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 139,10,51,N'AB',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 140,10,52,N'CD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 141,10,53,N'ABCD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 142,10,54,N'ABC',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 143,10,55,N'ABCD',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 144,10,56,N'����',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 145,10,57,N'�Ϸ�',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 146,10,58,N'�й�',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 147,10,59,N'̫��ϵ',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 148,10,60,N'����ϵ',0.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn],[DeFen]) VALUES ( 149,10,61,N'�����ޱ�׼�𰸣��ľ�����������֡�',25.0)
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 150,10,62,N'������ҪĿ�ĵ���ʶ���㣬��������֡�')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 151,10,63,N'ά�������ƽ��Э�̽����ͳһ����')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 152,10,64,N'�Ŵ�����ֻҪд��10�����ϼ��ɡ�')
INSERT [ERPTiKuKaoShiJieGuo] ([ID],[KaoShiID],[TiMuID],[DaAn]) VALUES ( 153,10,65,N'������Ϊ���Σ��������˺�һ��')

SET IDENTITY_INSERT [ERPTiKuKaoShiJieGuo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTiKuShiJuan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTiKuShiJuan]

CREATE TABLE [ERPTiKuShiJuan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ShiJuanTitle] [varchar]  (100) NULL,
[IFSuiJiChuTi] [varchar]  (50) NULL,
[FenLeiShunXu] [varchar]  (200) NULL,
[KaoShiXianShi] [int]  NULL,
[PanDuanTiList] [varchar]  (2000) NULL,
[DanXuanTiList] [varchar]  (2000) NULL,
[DuoXuanTiList] [varchar]  (2000) NULL,
[TianKongTiList] [varchar]  (2000) NULL,
[JianDaTiList] [varchar]  (2000) NULL,
[PanDuanFenShu] [decimal]  (18,1) NULL,
[DanXuanFenShu] [decimal]  (18,1) NULL,
[DuoXuanFenShu] [decimal]  (18,1) NULL,
[TianKongFenShu] [decimal]  (18,1) NULL,
[JianDaFenShu] [decimal]  (18,1) NULL,
[BackInfo] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPTiKuShiJuan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTiKuShiJuan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTiKuShiJuan] ON

INSERT [ERPTiKuShiJuan] ([ID],[ShiJuanTitle],[IFSuiJiChuTi],[FenLeiShunXu],[KaoShiXianShi],[PanDuanTiList],[DanXuanTiList],[DuoXuanTiList],[TianKongTiList],[JianDaTiList],[PanDuanFenShu],[DanXuanFenShu],[DuoXuanFenShu],[TianKongFenShu],[JianDaFenShu],[UserName],[TimeStr]) VALUES ( 5,N'�۶�Ա���״�֪ʶ�ʴ���',N'��',N'�ж���|����ѡ����|����ѡ����|�����|�����',120,N'41,42,43,44,45',N'46,47,48,49,50',N'51,52,53,54,55',N'56,57,58,59,60',N'61,62,63,64,65',2.0,2.0,4.0,2.0,10.0,N'admin',N'2012/3/2 11:22:56')
INSERT [ERPTiKuShiJuan] ([ID],[ShiJuanTitle],[IFSuiJiChuTi],[FenLeiShunXu],[KaoShiXianShi],[PanDuanFenShu],[DanXuanFenShu],[DuoXuanFenShu],[TianKongFenShu],[JianDaFenShu],[UserName],[TimeStr]) VALUES ( 6,N'�۶�Ա���״�֪ʶ�ʴ���--����Ծ�',N'��',N'�ж���|����ѡ����|����ѡ����|�����|�����',120,2.0,2.0,4.0,2.0,10.0,N'admin',N'2012/3/2 11:24:02')

SET IDENTITY_INSERT [ERPTiKuShiJuan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTiKuShiJuanSet]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTiKuShiJuanSet]

CREATE TABLE [ERPTiKuShiJuanSet] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[DanXuanNum] [int]  NULL,
[DuoXuanNum] [int]  NULL,
[PanDuanNum] [int]  NULL,
[TianKongNum] [int]  NULL,
[JianDaNum] [int]  NULL,
[ShiJuanID] [int]  NULL,
[TiKuTypeID] [int]  NULL)

ALTER TABLE [ERPTiKuShiJuanSet] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTiKuShiJuanSet] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTiKuShiJuanSet] ON

INSERT [ERPTiKuShiJuanSet] ([ID],[DanXuanNum],[DuoXuanNum],[PanDuanNum],[TianKongNum],[JianDaNum],[ShiJuanID],[TiKuTypeID]) VALUES ( 1,2,2,2,2,2,4,1)
INSERT [ERPTiKuShiJuanSet] ([ID],[DanXuanNum],[DuoXuanNum],[PanDuanNum],[TianKongNum],[JianDaNum],[ShiJuanID],[TiKuTypeID]) VALUES ( 2,5,5,5,5,5,6,1)

SET IDENTITY_INSERT [ERPTiKuShiJuanSet] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTiKuType]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTiKuType]

CREATE TABLE [ERPTiKuType] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TiKuName] [varchar]  (500) NULL,
[PaiXu] [varchar]  (50) NULL)

ALTER TABLE [ERPTiKuType] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTiKuType] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTiKuType] ON

INSERT [ERPTiKuType] ([ID],[TiKuName],[PaiXu]) VALUES ( 1,N'������A����',N'A')
INSERT [ERPTiKuType] ([ID],[TiKuName],[PaiXu]) VALUES ( 2,N'������B����',N'B')

SET IDENTITY_INSERT [ERPTiKuType] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTongXunLu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTongXunLu]

CREATE TABLE [ERPTongXunLu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[IfShare] [varchar]  (50) NULL,
[TypeStr] [varchar]  (50) NULL,
[FenZu] [varchar]  (50) NULL,
[NameStr] [varchar]  (50) NULL,
[Sex] [varchar]  (50) NULL,
[BirthDay] [varchar]  (50) NULL,
[NiCheng] [varchar]  (50) NULL,
[ZhiWu] [varchar]  (50) NULL,
[PeiOu] [varchar]  (500) NULL,
[ZiNv] [varchar]  (500) NULL,
[DanWeiMingCheng] [varchar]  (500) NULL,
[DanWeiDiZhi] [varchar]  (500) NULL,
[DanWeiYouBian] [varchar]  (50) NULL,
[DanWieDianHua] [varchar]  (50) NULL,
[DanWeiChuanZhen] [varchar]  (50) NULL,
[JiaTingZhuZhi] [varchar]  (500) NULL,
[JiaTingYouBian] [varchar]  (50) NULL,
[JiaTingDianHua] [varchar]  (50) NULL,
[ShouJi] [varchar]  (50) NULL,
[XiaoLingTong] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[QQ] [varchar]  (50) NULL,
[Msn] [varchar]  (50) NULL,
[BackInfo] [text]  NULL)

ALTER TABLE [ERPTongXunLu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTongXunLu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTongXunLu] ON

INSERT [ERPTongXunLu] ([ID],[UserName],[IfShare],[TypeStr],[FenZu],[NameStr],[Sex],[BirthDay],[NiCheng],[ZhiWu],[PeiOu],[ZiNv],[DanWeiMingCheng],[DanWeiDiZhi],[DanWeiYouBian],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ]) VALUES ( 6,N'admin',N'��',N'����ͨѶ��',N'����',N'�����',N'��',N'2012-2-29',N'��',N'�칫������',N'��',N'��',N'���������ز�',N'�������山������',N'400000',N'023-67466469',N'023-67466469',N'�������山��',N'400000',N'023-67466469',N'13696432490',N'13696432490',N'9618195@qq.com',N'9618195')
INSERT [ERPTongXunLu] ([ID],[UserName],[IfShare],[TypeStr],[FenZu],[NameStr],[Sex],[BirthDay],[NiCheng],[ZhiWu],[PeiOu],[ZiNv],[DanWeiMingCheng],[DanWeiDiZhi],[DanWeiYouBian],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ]) VALUES ( 7,N'admin',N'��',N'����ͨѶ��',N'�ͻ�',N'������',N'��',N'2012-3-1',N'��',N'����ʦ',N'��',N'��',N'����С��켯��',N'������������',N'400000',N'023-67466469',N'023-67466469',N'�������山��',N'400000',N'023-67466469',N'13696432490',N'13696432490',N'9618195@qq.com',N'9618195')

SET IDENTITY_INSERT [ERPTongXunLu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTouSu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTouSu]

CREATE TABLE [ERPTouSu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[CustomName] [varchar]  (100) NULL,
[TouSuWho] [varchar]  (500) NULL,
[TouSuType] [varchar]  (500) NULL,
[ChuLiResult] [varchar]  (5000) NULL,
[TouSuTime] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[IFShare] [varchar]  (5000) NULL,
[CusBakA] [varchar]  (8000) NULL,
[CusBakB] [varchar]  (8000) NULL,
[CusBakC] [varchar]  (8000) NULL,
[CusBakD] [varchar]  (8000) NULL,
[CusBakE] [varchar]  (8000) NULL)

ALTER TABLE [ERPTouSu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTouSu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTouSu] ON

INSERT [ERPTouSu] ([ID],[CustomName],[TouSuWho],[TouSuType],[ChuLiResult],[TouSuTime],[UserName],[TimeStr]) VALUES ( 4,N'����������Ź�ҵ��Ʒ���޹�˾',N'Ͷ����ѵ��Ա����ѵʱ�ٵ�10����',N'�ͻ�Ͷ��',N'���ڲ�����',N'2012-3-2',N'admin',N'2012/3/2 11:48:41')

SET IDENTITY_INSERT [ERPTouSu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTreeList]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTreeList]

CREATE TABLE [ERPTreeList] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TextStr] [varchar]  (50) NULL,
[ImageUrlStr] [varchar]  (200) NULL,
[ValueStr] [varchar]  (50) NULL,
[NavigateUrlStr] [varchar]  (200) NULL,
[Target] [varchar]  (50) NULL,
[ParentID] [int]  NULL,
[QuanXianList] [varchar]  (200) NULL,
[PaiXuStr] [int]  NULL,
[ParentClass] [nvarchar]  (50) NULL)

ALTER TABLE [ERPTreeList] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTreeList] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTreeList] ON

INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 1,N'���˰칫',N'~/Controls/images/menus/bangong.png',N'���˰칫',N'rform',0,1,N'bangong_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 2,N'�ڲ��ʼ�',N'~/Controls/images/menus/mail/mail_box.png',N'�ڲ��ʼ�',N'rform',1,2)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 3,N'�ռ���',N'~/images/TreeImages/inbox.gif',N'001',N'../LanEmail/LanEmailShou.aspx',N'rform',2,N'A_���|D_ɾ��|E_����',3)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 4,N'�ݸ���',N'~/images/TreeImages/outbox.gif',N'002',N'../LanEmail/LanEmailCao.aspx',N'rform',2,N'A_���|M_����|D_ɾ��|E_����',4)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 5,N'��ɾ��',N'~/images/TreeImages/trash.gif',N'003',N'../LanEmail/LanEmailYiDel.aspx',N'rform',2,N'A_���|M_�ָ�|D_ɾ��|E_����',4)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 6,N'��λ����֪ͨ',N'~/images/TreeImages/notify.gif',N'004',N'../GongGao/GongGao.aspx?Type=��λ',N'rform',1,N'A_���|M_�޸�|D_ɾ��|E_����',6)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 7,N'ͶƱ',N'~/images/TreeImages/vote.gif',N'005',N'../GongGao/Vote.aspx',N'rform',1,N'A_���|M_�޸�|D_ɾ��|E_����',7)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 8,N'�ճ̰���',N'~/images/TreeImages/calendar.gif',N'006',N'../Work/RiCheng.aspx',N'rform',1,N'A_���|M_�޸�|D_ɾ��|E_����',8)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 9,N'������־',N'~/Controls/images/menus/phone_book.png',N'007',N'../Work/WorkRiZhi.aspx',N'rform',1,N'A_���|M_�޸�|D_ɾ��|E_����',9)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 10,N'ͨѶ��',N'~/images/TreeImages/address.gif',N'ͨѶ��',N'rform',1,10)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 11,N'����ͨѶ��',N'~/images/TreeImages/address.gif',N'008',N'../Work/TongXunLu.aspx?TypeStr=����ͨѶ��',N'rform',10,N'A_���|M_�޸�|D_ɾ��|E_����',11)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 12,N'����ͨѶ��',N'~/images/TreeImages/address.gif',N'009',N'../Work/TongXunLu.aspx?TypeStr=����ͨѶ��',N'rform',10,N'E_����',12)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 13,N'����ͨѶ��',N'~/images/TreeImages/address.gif',N'010',N'../Work/TongXunLu.aspx?TypeStr=����ͨѶ��',N'rform',10,N'A_���|M_�޸�|D_ɾ��|E_����',13)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 14,N'��������',N'~/images/TreeImages/person_info.gif',N'��������',N'rform',1,14)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 15,N'ϵͳ����',N'~/images/TreeImages/U01.gif',N'011',N'../Personal/SystemTiXing.aspx',N'rform',14,N'M_�޸�',15)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 16,N'�޸�����',N'~/images/TreeImages/U01.gif',N'012',N'../Personal/ChangPwd.aspx',N'rform',14,N'M_�޸�',16)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 17,N'��������',N'~/images/TreeImages/U01.gif',N'013',N'../Personal/MyShenPi.aspx',N'rform',14,N'A_���|M_�޸�|D_ɾ��|E_����',17)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 18,N'��������',N'~/Controls/images/menus/flow.gif',N'��������',N'rform',0,18,N'workflow_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 19,N'�½�����',N'~/Controls/images/menus/flow.gif',N'014',N'../NWorkFlow/NWorkToDoSelect.aspx',N'rform',18,19)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 20,N'�ҵĹ���',N'~/Controls/images/menus/flow.gif',N'015',N'../NWorkFlow/NWorkToDo.aspx',N'rform',18,N'D_ɾ��|E_����',20)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 21,N'���칤��',N'~/Controls/images/menus/flow.gif',N'016',N'../NWorkFlow/NowWorkFlow.aspx',N'rform',18,N'M_����|E_����',21)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 22,N'�Ѱ칤��',N'~/Controls/images/menus/flow.gif',N'017',N'../NWorkFlow/YiBanWork.aspx',N'rform',18,N'M_����|E_����',22)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 23,N'������ѯ',N'~/Controls/images/menus/flow.gif',N'018',N'../NWorkFlow/SerchWorkFlow.aspx',N'rform',18,N'E_����|F_����',23)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 24,N'�������',N'~/Controls/images/menus/flow.gif',N'019',N'../NWorkFlow/HelpWorkFlow.aspx',N'rform',18,N'M_����|D_ɾ��|E_����',24)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 25,N'�鵵����',N'~/Controls/images/menus/flow.gif',N'020',N'../NWorkFlow/OkWorkFlow.aspx',N'rform',18,N'D_ɾ��|E_����',25)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 26,N'����ί��',N'~/Controls/images/menus/flow.gif',N'021',N'../NWorkFlow/WorkWT.aspx',N'rform',18,N'M_�޸�',26)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 27,N'�����',N'~/images/TreeImages/system.gif',N'022',N'../NWorkFlow/NFormTypeFrame.aspx',N'rform',169,N'N_�����|A_���|M_�޸�|D_ɾ��|E_����',27)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 28,N'�������',N'~/images/TreeImages/erp.gif',N'023',N'../NWorkFlow/NWorkFlowFrame.aspx',N'rform',169,N'N_�ڵ����|A_���|M_�޸�|D_ɾ��|E_����',28)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 29,N'�������',N'~/images/TreeImages/system.gif',N'024',N'../NWorkFlow/NFormType.aspx',N'rform',169,N'A_���|M_�޸�|D_ɾ��|E_����',29)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 30,N'ӡ�¹���',N'~/images/TreeImages/@roll_manage.gif',N'ӡ�¹���',N'rform',18,30)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 31,N'����ӡ��',N'~/images/TreeImages/@roll_manage.gif',N'025',N'../WorkFlow/PublicSeal.aspx?Type=����ӡ��',N'rform',30,N'A_���|M_�޸�|D_ɾ��|E_����',31)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 32,N'˽��ӡ��',N'~/images/TreeImages/@roll_manage.gif',N'026',N'../WorkFlow/PublicSeal.aspx?Type=˽��ӡ��',N'rform',30,N'A_���|M_�޸�|D_ɾ��|E_����',32)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 33,N'����ʹ�ü�¼',N'~/images/TreeImages/@roll_manage.gif',N'027',N'../WorkFlow/PublicSealLog.aspx?Type=����ӡ��',N'rform',30,N'D_ɾ��|E_����',33)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 34,N'˽��ʹ�ü�¼',N'~/images/TreeImages/@roll_manage.gif',N'028',N'../WorkFlow/PublicSealLog.aspx?Type=˽��ӡ��',N'rform',30,N'D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 35,N'֪ʶ�ĵ�',N'~/Controls/images/menus/hrm/hrm-briefcase.png',N'֪ʶ�ĵ�',N'rform',0,35,N'jianzheng_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 36,N'�����ļ�',N'~/images/TreeImages/@hrms.gif',N'029',N'../DocCenter/DocCenter.aspx?Type=�����ļ�&DirID=0',N'rform',35,N'N_�½�|A_���|M_�޸�|D_ɾ��|E_����',36)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 37,N'��λ�ļ�',N'~/images/TreeImages/@roll_manage.gif',N'030',N'../DocCenter/DocCenter.aspx?Type=��λ�ļ�&DirID=0',N'rform',35,N'N_�½�|A_���|M_�޸�|D_ɾ��|E_����',37)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 38,N'��Ŀ�ļ�',N'~/images/TreeImages/@roll_manage.gif',N'031',N'../DocCenter/DocCenter.aspx?Type=��Ŀ�ļ�&DirID=0',N'rform',35,N'N_�½�|A_���|M_�޸�|D_ɾ��|E_����',38)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 39,N'���ӿ���',N'~/images/TreeImages/@roll_manage.gif',N'032',N'../DocCenter/DocCenter.aspx?Type=���ӿ���&DirID=0',N'rform',35,N'N_�½�|A_���|M_�޸�|D_ɾ��|E_����',39)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 40,N'��Ҫ�ļ�',N'~/images/TreeImages/@roll_manage.gif',N'033',N'../DocCenter/DocCenter.aspx?Type=��Ҫ�ļ�&DirID=0',N'rform',35,N'N_�½�|A_���|M_�޸�|D_ɾ��|E_����',40)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 41,N'�����ļ�',N'~/images/TreeImages/@roll_manage.gif',N'034',N'../DocCenter/DocCenter.aspx?Type=�����ļ�&DirID=0',N'rform',35,N'N_�½�|A_���|M_�޸�|D_ɾ��|E_����',41)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 42,N'֪ʶ��',N'~/images/TreeImages/@crmsetting.gif',N'035',N'../DocCenter/DocCenter.aspx?Type=֪ʶ��&DirID=0',N'rform',35,N'N_�½�|A_���|M_�޸�|D_ɾ��|E_����',42)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 43,N'�����ļ�',N'~/images/TreeImages/@crmsetting.gif',N'036',N'../DocCenter/DocCenter.aspx?Type=�����ļ�&DirID=0',N'rform',35,N'N_�½�|A_���|M_�޸�|D_ɾ��|E_����',43)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 44,N'�����ļ�',N'~/images/TreeImages/@hrms.gif',N'037',N'../DocCenter/DocCenter.aspx?Type=�����ļ�&DirID=0',N'rform',35,N'D_ɾ��|E_����',44)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 45,N'����վ',N'~/images/TreeImages/trash.gif',N'038',N'../DocCenter/DocHuiShou.aspx',N'rform',35,N'M_�ָ�|D_ɾ��|E_����',45)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 46,N'�ʲ�����',N'~/images/TreeImages/@asset.gif',N'�ʲ�����',N'rform',174,46)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 47,N'�ʲ���Ϣ����',N'~/images/TreeImages/contract.gif',N'039',N'../Office/GuDing.aspx',N'rform',46,N'A_���|M_�޸�|D_ɾ��|E_����',47)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 48,N'�ʲ��۾ɼ�¼',N'~/images/TreeImages/contract.gif',N'040',N'../Office/GuDingJiLu.aspx?GDName=',N'rform',46,N'A_���|M_�޸�|D_ɾ��|E_����',48)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 49,N'��ѵ����',N'~/images/TreeImages/address.gif',N'��ѵ����',N'rform',174,49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 50,N'��ѵ��Ϣ',N'~/images/TreeImages/@asset.gif',N'041',N'../DocFile/PeiXun.aspx',N'rform',49,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 51,N'��ѵ��־',N'~/images/TreeImages/@asset.gif',N'042',N'../DocFile/PeiXunRiJi.aspx?PeiXunName=',N'rform',49,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 52,N'Ч������',N'~/images/TreeImages/@asset.gif',N'043',N'../DocFile/PeiXunXiaoGuo.aspx?PeiXunName=',N'rform',49,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 53,N'������',N'~/images/TreeImages/@asset.gif',N'044',N'../DocFile/TiKuFrame.aspx',N'rform',199,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 54,N'�Ծ����',N'~/images/TreeImages/office_Product.gif',N'045',N'../DocFile/TiKuShiJuan.aspx',N'rform',199,N'N_������Ŀ|A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 55,N'���߿���',N'~/images/TreeImages/test.gif',N'046',N'../DocFile/TiKuKaoShi.aspx',N'rform',199,N'A_���|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 56,N'���Խ��',N'~/images/TreeImages/statistic.gif',N'047',N'../DocFile/TiKuKaoShiOK.aspx',N'rform',199,N'N_�˹��ľ�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 57,N'����ѧϰ',N'~/Controls/images/menus/phone_book.png',N'048',N'../DocFile/XueXi.aspx',N'rform',200,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 58,N'ѧϰ�ĵ�',N'~/Controls/images/menus/phone_book.png',N'049',N'../DocFile/XueXiXinDe.aspx',N'rform',200,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 59,N'�ĵù���',N'~/Controls/images/menus/phone_book.png',N'050',N'../DocFile/XueXiXinDeOK.aspx',N'rform',200,N'M_ǩע���|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 60,N'������Դ',N'~/Controls/images/menus/hrm/hrm.png',N'������Դ',N'rform',0,60,N'renshi_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 61,N'���µ���',N'~/images/TreeImages/hrms.gif',N'051',N'../SystemManage/RenShiInfo.aspx',N'rform',60,N'M_ά��|E_����',61)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 62,N'���º�ͬ',N'~/images/TreeImages/hrms.gif',N'052',N'../HR/RenShiHeTong.aspx',N'rform',60,N'A_���|M_�޸�|D_ɾ��|E_����',62)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 63,N'���ͼ�¼',N'~/images/TreeImages/score.gif',N'053',N'../HR/JiangCheng.aspx',N'rform',60,N'A_���|M_�޸�|D_ɾ��|E_����',63)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 64,N'�����ƶ�',N'~/images/TreeImages/score.gif',N'054',N'../DocFile/JiangChengZhiDu.aspx',N'rform',60,N'A_���|M_�޸�|D_ɾ��|E_����',64)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 65,N'���ڹ���',N'~/images/TreeImages/1hrms.gif',N'���ڹ���',N'rform',60,60)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 66,N'ӦƸ����',N'~/images/TreeImages/bbs2.gif',N'056',N'../DocFile/JianLi.aspx',N'rform',60,N'A_���|M_�޸�|D_ɾ��|E_����',66)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 67,N'���Թ���',N'~/images/TreeImages/bbs2.gif',N'057',N'../DocFile/MianShi.aspx',N'rform',60,N'A_���|M_�޸�|D_ɾ��|E_����',67)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 68,N'��Ч����',N'~/images/TreeImages/bbs2.gif',N'058',N'../DocFile/JiXiao.aspx',N'rform',60,N'A_���|M_�޸�|D_ɾ��|E_����',68)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 69,N'��Ч����',N'~/images/TreeImages/bbs2.gif',N'059',N'../DocFile/JiXiaoCanShu.aspx',N'rform',60,N'A_���|M_�޸�|D_ɾ��|E_����',69)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 70,N'н�����',N'~/images/TreeImages/bbs2.gif',N'060',N'../DocFile/XinChou.aspx',N'rform',60,N'A_���|M_�޸�|D_ɾ��|E_����',70)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 71,N'н�����',N'~/images/TreeImages/bbs2.gif',N'061',N'../DocFile/XinChouCanShu.aspx',N'rform',60,N'A_���|M_�޸�|D_ɾ��|E_����',71)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 72,N'�������',N'~/images/TreeImages/meeting.gif',N'�������',N'rform',174,49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 73,N'�Ҳ���Ļ���',N'~/images/TreeImages/@bbs.gif',N'062',N'../Meeting/MyMeeting.aspx',N'rform',72,N'E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 74,N'�ҷ���Ļ���',N'~/images/TreeImages/@crmsetting.gif',N'063',N'../Meeting/MeetingDengJi.aspx',N'rform',72,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 75,N'���л�����Ϣ',N'~/images/TreeImages/meeting.gif',N'064',N'../Meeting/Meeting.aspx',N'rform',72,N'D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 76,N'�����ѯ',N'~/images/TreeImages/contract.gif',N'065',N'../Meeting/MeetingSerch.aspx',N'rform',72,N'E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 125,N'��������',N'~/images/TreeImages/vehicle.gif',N'��������',N'rform',174,49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 126,N'������Ϣ����',N'~/images/TreeImages/source.gif',N'066',N'../Car/CarInfo.aspx',N'rform',125,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 128,N'����ʹ�ü�¼',N'~/images/TreeImages/person_info.gif',N'068',N'../Car/CarShiYong.aspx',N'rform',125,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 129,N'����ά����¼',N'~/images/TreeImages/person_info.gif',N'069',N'../Car/CarWeiHu.aspx',N'rform',125,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 130,N'�������շ���',N'~/images/TreeImages/person_info.gif',N'070',N'../Car/CarBaoXian.aspx',N'rform',125,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 131,N'������־��Ϣ',N'~/images/TreeImages/test.gif',N'071',N'../Car/CarLog.aspx',N'rform',125,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 132,N'����������¼',N'~/images/TreeImages/test.gif',N'072',N'../Car/CarBaoYang.aspx',N'rform',125,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 133,N'�������ͼ�¼',N'~/images/TreeImages/@office_Product.gif',N'073',N'../Car/CarJiaYou.aspx',N'rform',125,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 134,N'����Υ�¼�¼',N'~/images/TreeImages/@office_Product.gif',N'074',N'../Car/CarWeiZhang.aspx',N'rform',125,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 135,N'��������',N'~/Controls/images/menus/chart_organisation.png',N'��������',N'rform',0,136,N'tongji_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 136,N'�绰���Ų�ѯ',N'~/images/TreeImages/system.gif',N'075',N'http://www.ip138.com/post/',N'rform',135,136)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 137,N'���������ѯ',N'~/images/TreeImages/system.gif',N'076',N'http://www.ip138.com/post/',N'rform',135,137)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 138,N'�г�ʱ�̲�ѯ',N'~/images/TreeImages/system.gif',N'077',N'http://qq.ip138.com/train/',N'rform',135,138)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 139,N'������·��ѯ',N'~/images/TreeImages/system.gif',N'078',N'http://www.8684.cn/',N'rform',135,139)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 140,N'���ɷ����ѯ',N'~/images/TreeImages/system.gif',N'079',N'http://law.law-star.com/html/lawsearch.htm',N'rform',135,140)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 141,N'������Ϸ',N'~/images/TreeImages/game.gif',N'080',N'http://www.4399.com',N'rform',135,141)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 142,N'������',N'~/images/TreeImages/calendar2.gif',N'081',N'http://site.baidu.com/list/wannianli.htm',N'rform',135,142)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 143,N'����ʱ��',N'~/images/TreeImages/fldb.gif',N'082',N'http://www.hao123.com/haoserver/wotime.htm',N'rform',135,143)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 144,N'������ַ',N'~/images/TreeImages/fav.gif',N'083',N'http://www.hao123.com/',N'rform',135,144)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 145,N'ϵͳ����',N'~/Controls/images/menus/setting.png',N'ϵͳ����',N'rform',0,145,N'system_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 146,N'��λ��Ϣ����',N'~/Controls/images/menus/system/company_menu.png',N'084',N'../SystemManage/DanWeiInfo.aspx',N'rform',145,N'M_�޸�',146)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 147,N'������Ϣ����',N'~/Controls/images/menus/system/department_menu.png',N'085',N'../SystemManage/BuMenInfo.aspx?Type=&DirID=0',N'rform',145,N'A_���|M_�޸�|D_ɾ��|E_����',147)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 148,N'�û���Ϣ����',N'~/Controls/images/menus/system/authors.png',N'086',N'../SystemManage/SystemUser.aspx',N'rform',145,N'C_��������|A_���|M_�޸�|D_ɾ��|E_����',148)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 149,N'��ɫ��Ϣ����',N'~/Controls/images/menus/system/account.png',N'087',N'../SystemManage/SystemJiaoSe.aspx',N'rform',145,N'N_�����û�|A_���|M_�޸�|D_ɾ��|E_����',149)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 150,N'ϵͳ��־����',N'~/images/TreeImages/score.gif',N'088',N'../SystemManage/SystemLog.aspx',N'rform',145,N'D_ɾ��|E_����',150)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 151,N'�ļ��ϴ�����',N'~/images/TreeImages/test.gif',N'089',N'../SystemManage/SystemSetting.aspx',N'rform',145,N'M_�޸�',151)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 152,N'�����豸����',N'~/images/TreeImages/contact1.gif',N'090',N'../Office/SheBei.aspx',N'rform',46,N'A_���|M_�޸�|D_ɾ��|E_����',46)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 154,N'��ͷ�ļ�ģ��',N'~/images/TreeImages/score.gif',N'091',N'../SystemManage/RedHeadFile.aspx',N'rform',145,N'A_���|M_�޸�|D_ɾ��|E_����',149)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 155,N'Internet�ʼ�',N'~/images/TreeImages/webmail.gif',N'Internet�ʼ�',N'rform',1,4)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 156,N'�ռ���',N'~/images/TreeImages/inbox.gif',N'092',N'../NetMail/NetMailShou.aspx',N'rform',155,N'N_��ȡ|A_���|D_ɾ��|E_����',5)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 157,N'�ݸ���',N'~/images/TreeImages/outbox.gif',N'093',N'../NetMail/NetMailCao.aspx',N'rform',155,N'A_���|M_����|D_ɾ��|E_����',5)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 158,N'�ѷ���',N'~/images/TreeImages/sentbox.gif',N'094',N'../NetMail/NetMailYiFa.aspx',N'rform',155,N'D_ɾ��|E_����',5)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 159,N'��ɾ��',N'~/images/TreeImages/trash.gif',N'095',N'../NetMail/NetMailYiDel.aspx',N'rform',155,N'A_���|M_�ָ�|D_ɾ��|E_����',5)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 160,N'�ʼ�����',N'~/images/TreeImages/U01.gif',N'096',N'../Personal/MailSetting.aspx',N'rform',14,N'M_�޸�',16)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 161,N'�ֻ�����',N'~/images/TreeImages/mobile_sms.gif',N'097',N'../Mobile/MobileSms.aspx',N'rform',1,N'A_���|M_����|D_ɾ��|E_����',7)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 162,N'�ѷ���',N'~/images/TreeImages/sentbox.gif',N'098',N'../LanEmail/LanEmailYiFa.aspx',N'rform',2,N'D_ɾ��|E_����',4)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 163,N'ϵͳ�˵�ά��',N'~/images/TreeImages/test.gif',N'099',N'../SystemManage/TreeList.aspx',N'rform',145,N'A_���|M_�޸�|D_ɾ��|E_����',151)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 164,N'�����շ�',N'~/Controls/images/menus/customer/product.png',N'�����շ�',N'rform',0,34,N'jingyin_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 165,N'�����ļ�',N'~/images/TreeImages/test.gif',N'101',N'../TelFile/GetFile.aspx',N'rform',164,N'E_����',35)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 166,N'�����ļ�',N'~/images/TreeImages/test.gif',N'102',N'../TelFile/SendFile.aspx',N'rform',164,N'A_���|D_ɾ��|E_����',35)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 167,N'���շ���',N'~/images/TreeImages/picture.gif',N'103',N'../TelFile/JSDIC.aspx',N'rform',164,N'A_���|M_�޸�|D_ɾ��|E_����',35)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 168,N'���ķ���',N'~/images/TreeImages/picture.gif',N'104',N'../TelFile/CYDIC.aspx',N'rform',164,N'A_���|M_�޸�|D_ɾ��|E_����',35)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 169,N'��������',N'~/images/TreeImages/training.gif',N'��������',N'rform',18,29)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 170,N'���°�Ǽ�',N'~/images/TreeImages/1hrms.gif',N'105',N'../HR/ShangXiaBanDengJi.aspx',N'rform',65,60)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 171,N'��������',N'~/images/TreeImages/1hrms.gif',N'106',N'../HR/KaoQinSetting.aspx',N'rform',65,N'M_�޸�',60)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 172,N'������ϸ',N'~/images/TreeImages/1hrms.gif',N'107',N'../HR/KaoQinMingXi.aspx',N'rform',65,N'E_����',60)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 173,N'��ѯͳ��',N'~/images/TreeImages/1hrms.gif',N'108',N'../HR/KaoQingChaXunTongJi.aspx',N'rform',65,N'E_����',60)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 174,N'��չӦ��',N'~/Controls/images/menus/gongcheng.png',N'��չӦ��',N'rform',0,49,N'gongcheng_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 175,N'��������',N'~/Controls/images/menus/rizhi.png',N'��������',N'rform',0,34,N'gongzuo_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 176,N'�ҵļƻ�',N'~/images/TreeImages/work_plan.gif',N'109',N'../WorkPlan/MyWorkPlan.aspx',N'rform',175,N'A_���|M_�޸�|D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 177,N'Эͬ�ƻ�',N'~/images/TreeImages/work_plan.gif',N'110',N'../WorkPlan/ManageWorkPlan.aspx',N'rform',175,N'E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 178,N'�ҵĻ㱨',N'~/images/TreeImages/test.gif',N'111',N'../WorkPlan/HuiBao.aspx',N'rform',175,N'A_���|M_�޸�|D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 179,N'Эͬ�㱨',N'~/images/TreeImages/test.gif',N'112',N'../WorkPlan/HuiBaoOK.aspx',N'rform',175,N'E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 180,N'��֯����',N'~/Controls/images/menus/hrm/hrm.png',N'��֯����',N'rform',0,135,N'renshi_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 181,N'��λ��Ϣ��ѯ',N'~/images/TreeImages/@hrms.gif',N'113',N'../SystemManage/DanWeiInfoSerch.aspx',N'rform',180,135)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 182,N'������Ϣ��ѯ',N'~/images/TreeImages/@hrms.gif',N'114',N'../SystemManage/BuMenInfoSerch.aspx?DirID=0',N'rform',180,135)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 183,N'�û���Ϣ��ѯ',N'~/images/TreeImages/@hrms.gif',N'115',N'../SystemManage/SystemUserSerch.aspx',N'rform',180,135)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 184,N'��Ϣ����',N'~/Controls/images/menus/hrm/profile-create.png',N'��Ϣ����',N'rform',0,134,N'peixun_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 185,N'��̳BBS',N'~/images/TreeImages/bbs2.gif',N'116',N'../BBS/BanKuaiList.aspx',N'rform',184,134)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 186,N'�������',N'~/images/TreeImages/bbs2.gif',N'117',N'../BBS/SettingConfig.aspx',N'rform',184,N'A_���|M_�޸�|D_ɾ��|E_����',134)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 187,N'�ڲ�������',N'~/images/TreeImages/chatroom.gif',N'118',N'../TalkRoom/TalkRoomList.aspx',N'rform',184,N'D_ɾ��',134)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 188,N'����������',N'~/images/TreeImages/chatroom.gif',N'119',N'../TalkRoom/SettingConfig.aspx',N'rform',184,N'M_�޸�',134)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 189,N'ͼ�����',N'~/images/TreeImages/book.gif',N'ͼ�����',N'rform',174,49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 190,N'ͼ�����',N'~/images/TreeImages/book.gif',N'120',N'../Office/Book.aspx',N'rform',189,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 191,N'���Ĺ���',N'~/images/TreeImages/book.gif',N'121',N'../Office/BookJieHuan.aspx',N'rform',189,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 192,N'�������',N'~/images/TreeImages/file_folder.gif',N'�������',N'rform',174,49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 193,N'������',N'~/images/TreeImages/file_folder.gif',N'122',N'../DocFile/JuanKu.aspx',N'rform',192,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 194,N'��������',N'~/images/TreeImages/file_folder.gif',N'123',N'../DocFile/DangAn.aspx?JuanKuName=',N'rform',192,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 195,N'��������',N'~/images/TreeImages/file_folder.gif',N'124',N'../DocFile/DangAnDel.aspx',N'rform',192,N'M_�ָ�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 196,N'�칫��Ʒ�Ǽ�',N'~/images/TreeImages/office_Product.gif',N'125',N'../Office/Office.aspx',N'rform',46,N'A_���|M_�޸�|D_ɾ��|E_����',48)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 197,N'д�ʼ�',N'~/images/TreeImages/new_email.gif',N'126',N'../LanEmail/LanEmailAdd.aspx',N'rform',2,2)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 198,N'д�ʼ�',N'~/images/TreeImages/new_email.gif',N'127',N'../NetMail/NetEmailAdd.aspx',N'rform',155,4)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 199,N'���Թ���',N'~/images/TreeImages/1score.gif',N'���Թ���',N'rform',174,49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 200,N'ѧϰ����',N'~/images/TreeImages/comm.gif',N'ѧϰ����',N'rform',174,49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 201,N'������',N'~/images/TreeImages/theme.gif',N'128',N'../DocFile/TiKuType.aspx',N'rform',199,N'A_���|M_�޸�|D_ɾ��|E_����',49)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 202,N'��������',N'~/Controls/images/menus/chart_organisation.png',N'��������',N'rform',0,71,N'tongji_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 204,N'�������',N'~/images/TreeImages/training.gif',N'130',N'../ReportCenter/ReportType.aspx',N'rform',202,N'A_���|M_�޸�|D_ɾ��|E_����',71)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 205,N'�������',N'~/images/TreeImages/training.gif',N'131',N'../ReportCenter/ReportFrame.aspx',N'rform',202,N'A_���|M_�޸�|D_ɾ��|E_����',71)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 215,N'�ͻ���ϵ',N'~/Controls/images/menus/hrm/profile-create.png',N'�ͻ���ϵ',N'rform',0,59,N'peixun_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 216,N'��Ա����',N'~/images/TreeImages/customer.gif',N'��Ա����',N'rform',215,59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 217,N'�ҵĻ�Ա',N'~/images/TreeImages/hrms.gif',N'HY001',N'../HY/HuiYuan.aspx',N'rform',216,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 218,N'��Ա����',N'~/images/TreeImages/hrms.gif',N'HY002',N'../HY/HYManage.aspx',N'rform',216,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 219,N'�ҵĿͻ�',N'~/images/TreeImages/customer.gif',N'�ҵĿͻ�',N'rform',215,59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 220,N'�ͻ���Ϣ',N'~/images/TreeImages/hrms.gif',N'C001',N'../CRM/MyCustom.aspx',N'rform',219,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 221,N'�ͻ���ϵ��',N'~/images/TreeImages/hrms.gif',N'C002',N'../CRM/MyCustomLinkMan.aspx?CustomName=',N'rform',219,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 222,N'��ϵ��¼',N'~/images/TreeImages/hrms.gif',N'C003',N'../CRM/MyCustomLinkLog.aspx?CustomName=',N'rform',219,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 223,N'�����¼',N'~/images/TreeImages/hrms.gif',N'C004',N'../CRM/MyCustomNeed.aspx?CustomName=',N'rform',219,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 224,N'���ۼ�¼',N'~/images/TreeImages/hrms.gif',N'C005',N'../CRM/MyCustomPrice.aspx?CustomName=',N'rform',219,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 225,N'�����¼',N'~/images/TreeImages/hrms.gif',N'C006',N'../CRM/MyCustomService.aspx?CustomName=',N'rform',219,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 226,N'�طü�¼',N'~/images/TreeImages/training.gif',N'C007',N'../CRM/MyCustomBack.aspx?CustomName=',N'rform',219,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 227,N'Ͷ�߼�¼',N'~/images/TreeImages/training.gif',N'C008',N'../CRM/MyCustomHate.aspx?CustomName=',N'rform',219,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 228,N'������¼',N'~/images/TreeImages/training.gif',N'C018',N'../CRM/MySongYang.aspx?CustomName=',N'rform',219,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 229,N'�ͻ�����',N'~/images/TreeImages/customer.gif',N'�ͻ�����',N'rform',215,59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 230,N'�ͻ���Ϣ����',N'~/images/TreeImages/hrms.gif',N'C009',N'../CRM/CustomInfo.aspx',N'rform',229,N'M_�ͻ�ת��|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 231,N'��ϵ�˹���',N'~/images/TreeImages/hrms.gif',N'C010',N'../CRM/CustomLinkMan.aspx',N'rform',229,N'D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 232,N'��ϵ��¼����',N'~/images/TreeImages/hrms.gif',N'C011',N'../CRM/CustomLinkLog.aspx',N'rform',229,N'D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 233,N'�����¼����',N'~/images/TreeImages/hrms.gif',N'C012',N'../CRM/CustomNeed.aspx',N'rform',229,N'D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 234,N'���ۼ�¼����',N'~/images/TreeImages/hrms.gif',N'C013',N'../CRM/CustomPrice.aspx',N'rform',229,N'D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 235,N'�����¼����',N'~/images/TreeImages/hrms.gif',N'C014',N'../CRM/CustomService.aspx',N'rform',229,N'D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 236,N'�طü�¼����',N'~/images/TreeImages/training.gif',N'C015',N'../CRM/CustomBack.aspx',N'rform',229,N'D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 237,N'Ͷ�߼�¼����',N'~/images/TreeImages/training.gif',N'C016',N'../CRM/CustomHate.aspx',N'rform',229,N'D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 238,N'������¼����',N'~/images/TreeImages/training.gif',N'C019',N'../CRM/SongYang.aspx',N'rform',229,N'M_��������|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 239,N'�ʼ���ϢȺ��',N'~/images/TreeImages/training.gif',N'C017',N'../CRM/CustomMsg.aspx',N'rform',229,N'M_Ⱥ���ʼ�|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 240,N'�ͻ���Ϣͳ��',N'~/images/TreeImages/training.gif',N'C020',N'../CRM/CustomSum.aspx',N'rform',229,59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 241,N'�ͻ���������',N'~/images/TreeImages/training.gif',N'C021',N'../CRM/CustomSetting.aspx',N'rform',229,59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 242,N'��������',N'~/Controls/images/menus/personal/dutySetting.png',N'��������',N'rform',0,59,N'kaoqing_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 243,N'��Ʒ����',N'~/images/TreeImages/office_Product.gif',N'A009',N'../Sell/Product.aspx',N'rform',242,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 244,N'���۹���',N'~/images/TreeImages/picture.gif',N'���۹���',N'rform',242,59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 245,N'���ۺ�ͬ�Ǽ�',N'~/images/TreeImages/hrms.gif',N'A010',N'../Sell/ContractDengJi.aspx',N'rform',244,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 246,N'���ۺ�ͬ����',N'~/images/TreeImages/hrms.gif',N'A011',N'../Sell/Contract.aspx',N'rform',244,N'A_ͨ��|M_�ܾ�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 247,N'��ͬ��Ʒ��¼',N'~/images/TreeImages/hrms.gif',N'A012',N'../Sell/SellLog.aspx?HeTongName=',N'rform',244,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 248,N'�ɹ�����',N'~/images/TreeImages/picture.gif',N'�ɹ�����',N'rform',242,59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 249,N'�ɹ������Ǽ�',N'~/images/TreeImages/hrms.gif',N'A015',N'../Supply/BuyDengJi.aspx',N'rform',248,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 250,N'�ɹ���������',N'~/images/TreeImages/hrms.gif',N'A016',N'../Supply/BuyOrder.aspx',N'rform',248,N'A_ͨ��|M_�ܾ�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 251,N'������Ʒ��¼',N'~/images/TreeImages/hrms.gif',N'A017',N'../Supply/BuyLog.aspx?OrderName=',N'rform',248,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 252,N'��Ӧ�̹���',N'~/images/TreeImages/picture.gif',N'��Ӧ�̹���',N'rform',242,59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 253,N'��Ӧ�̹���',N'~/images/TreeImages/sale_manage.gif',N'A013',N'../Supply/Supplys.aspx',N'rform',252,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 254,N'��Ӧ����ϵ��',N'~/images/TreeImages/sale_manage.gif',N'A014',N'../Supply/SupplysLink.aspx?GongYingShang=',N'rform',252,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 255,N'��Ŀ����',N'~/Controls/images/menus/gongcheng.png',N'��Ŀ����',N'rform',0,59,N'gongcheng_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 256,N'��Ŀ��Ϣ',N'~/images/TreeImages/contact.gif',N'X001',N'../Project/ProjectManage.aspx?ProjectName=',N'rform',255,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 257,N'������Ϣ',N'~/images/TreeImages/contact.gif',N'X002',N'../Project/PingShen.aspx?ProjectName=',N'rform',255,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 258,N'��Ŀ����',N'~/images/TreeImages/finance.gif',N'X003',N'../Project/ProjectJinDu.aspx?ProjectName=',N'rform',255,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 259,N'�տ���Ϣ',N'~/images/TreeImages/finance.gif',N'X004',N'../Project/ShouKuan.aspx?ProjectName=',N'rform',255,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 260,N'��Ŀʵʩ',N'~/images/TreeImages/finance.gif',N'X005',N'../Project/ShiShiRiZhi.aspx?ProjectName=',N'rform',255,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 261,N'��������',N'~/Controls/images/menus/phone_book.png',N'X006',N'../Project/BaoXiaoShenQing.aspx?ProjectName=',N'rform',255,N'A_���|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 262,N'��������',N'~/Controls/images/menus/phone_book.png',N'X007',N'../Project/BaoXiaoGuanLi.aspx?ProjectName=',N'rform',255,N'A_ͨ��|D_�ܾ�|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 263,N'��Ŀë��',N'~/images/TreeImages/roll_manage.gif',N'X008',N'../Project/LiRuiGuanLi.aspx?ProjectName=',N'rform',255,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[PaiXuStr]) VALUES ( 264,N'����ͳ��',N'~/images/TreeImages/roll_manage.gif',N'X009',N'../Project/ShuJuTongJi.aspx?ProjectName=',N'rform',255,59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[PaiXuStr],[ParentClass]) VALUES ( 265,N'��������',N'~/Controls/images/menus/admin/car_apply.png',N'��������',N'rform',0,34,N'kaohe_icon')
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 266,N'�ҵ�����',N'~/images/TreeImages/address.gif',N'132',N'../Subaltern/Task.aspx',N'rform',265,N'N_����㱨|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 267,N'�������',N'~/images/TreeImages/@salary.gif',N'133',N'../Subaltern/TaskFP.aspx',N'rform',265,N'N_������ʾ|A_���|M_�޸�|D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 268,N'�����ճ�',N'~/images/TreeImages/contract.gif',N'134',N'../Subaltern/SubRiCheng.aspx',N'rform',265,N'D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 269,N'������־',N'~/images/TreeImages/new_email.gif',N'135',N'../Subaltern/SubRiZhi.aspx',N'rform',265,N'D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 270,N'�����ƻ�',N'~/images/TreeImages/customer.gif',N'136',N'../Subaltern/SubPlan.aspx',N'rform',265,N'D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 271,N'�����㱨',N'~/images/TreeImages/info.gif',N'137',N'../Subaltern/SubHuiBao.aspx',N'rform',265,N'D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 272,N'�����ʼ�',N'~/images/TreeImages/mailout.gif',N'138',N'../Subaltern/SubMail.aspx',N'rform',265,N'D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 273,N'�����ͻ�',N'~/images/TreeImages/@hrms.gif',N'139',N'../Subaltern/SubCustom.aspx',N'rform',265,N'D_ɾ��|E_����',34)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 279,N'�տ�ƻ�',N'~/Controls/images/menus/customer/product.png',N'A030',N'../Sell/Revice.aspx',N'rform',244,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 280,N'����ƻ�',N'~/Controls/images/menus/hrm/profile-create.png',N'A040',N'../Supply/FK.aspx',N'rform',248,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 281,N'����ģ��',N'~/Controls/images/menus/hrm/hrm.png',N'�˿����',N'rform',242,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 282,N'Ӧ��',N'~/Controls/images/menus/flow.gif',N'A050',N'../Financial/YS.aspx',N'rform',281,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 283,N'Ӧ��',N'~/Controls/images/menus/chart_organisation.png',N'A060',N'../Financial/YF.aspx',N'rform',281,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 284,N'����',N'~/Controls/images/menus/bangong.png',N'A070',N'../Financial/Reimburse.aspx',N'rform',281,N'A_���|M_�޸�|D_ɾ��|E_����',59)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 285,N'��Ŀ����',N'~/Controls/images/menus/flow.gif',N'A080',N'../Project/ProjectLX.aspx',N'rform',255,N'A_���|M_�޸�|D_ɾ��|E_����',58)
INSERT [ERPTreeList] ([ID],[TextStr],[ImageUrlStr],[ValueStr],[NavigateUrlStr],[Target],[ParentID],[QuanXianList],[PaiXuStr]) VALUES ( 286,N'���͹���',N'~/Controls/images/menus/flow.gif',N'133',N'../NWorkFlow/ChaoSongWorkFlow.aspx',N'rform',18,N'E_����',23)

SET IDENTITY_INSERT [ERPTreeList] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPUser]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPUser]

CREATE TABLE [ERPUser] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[UserPwd] [varchar]  (200) NULL,
[TrueName] [varchar]  (50) NULL,
[Serils] [varchar]  (50) NULL,
[Department] [varchar]  (50) NULL,
[JiaoSe] [varchar]  (50) NULL,
[ActiveTime] [datetime]  NULL,
[ZhiWei] [varchar]  (50) NULL,
[ZaiGang] [varchar]  (50) NULL,
[EmailStr] [varchar]  (50) NULL,
[IfLogin] [varchar]  (50) NULL,
[Sex] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[BirthDay] [varchar]  (50) NULL,
[MingZu] [varchar]  (50) NULL,
[SFZSerils] [varchar]  (50) NULL,
[HunYing] [varchar]  (50) NULL,
[ZhengZhiMianMao] [varchar]  (50) NULL,
[JiGuan] [varchar]  (50) NULL,
[HuKou] [varchar]  (500) NULL,
[XueLi] [varchar]  (50) NULL,
[ZhiCheng] [varchar]  (50) NULL,
[BiYeYuanXiao] [varchar]  (50) NULL,
[ZhuanYe] [varchar]  (50) NULL,
[CanJiaGongZuoTime] [varchar]  (50) NULL,
[JiaRuBenDanWeiTime] [varchar]  (50) NULL,
[JiaTingDianHua] [varchar]  (50) NULL,
[JiaTingAddress] [varchar]  (500) NULL,
[GangWeiBianDong] [text]  NULL,
[JiaoYueBeiJing] [text]  NULL,
[GongZuoJianLi] [text]  NULL,
[SheHuiGuanXi] [text]  NULL,
[JiangChengJiLu] [text]  NULL,
[ZhiWuQingKuang] [text]  NULL,
[PeiXunJiLu] [text]  NULL,
[DanBaoJiLu] [text]  NULL,
[NaoDongHeTong] [text]  NULL,
[SheBaoJiaoNa] [text]  NULL,
[TiJianJiLu] [text]  NULL,
[BeiZhuStr] [text]  NULL,
[FuJian] [varchar]  (5000) NULL,
[POP3UserName] [varchar]  (50) NULL,
[POP3UserPwd] [varchar]  (50) NULL,
[POP3Server] [varchar]  (50) NULL,
[POP3Port] [varchar]  (50) NULL,
[SMTPUserName] [varchar]  (50) NULL,
[SMTPUserPwd] [varchar]  (50) NULL,
[SMTPServer] [varchar]  (50) NULL,
[SMTPFromEmail] [varchar]  (50) NULL,
[TiXingTime] [varchar]  (50) NULL DEFAULT (600),
[IfTiXing] [varchar]  (50) NULL DEFAULT ('��'),
[DaoHangList] [text]  NULL,
[xKeGuanDep] [varchar]  (5000) NULL,
[XiaShuUser] [varchar]  (8000) NULL)

ALTER TABLE [ERPUser] WITH NOCHECK ADD  CONSTRAINT [PK_ERPUser] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPUser] ON

INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[EmailStr],[IfLogin],[Sex],[MingZu],[JiaTingDianHua],[POP3UserName],[POP3UserPwd],[POP3Server],[POP3Port],[SMTPUserName],[SMTPUserPwd],[SMTPServer],[SMTPFromEmail],[TiXingTime],[IfTiXing],[DaoHangList],[XiaShuUser]) VALUES ( 32,N'admin',N'B5C32B00080A8967',N'�ž���',N'001',N'������',N'��������Ա',N'2014/6/4 22:36:48',N'��������',N'�ڸ�',N'9618195@qq.com',N'��',N'��',N'����',N'18705103692',N'262047154',N'hal0catbin',N'pop.qq.com',N'995',N'262047154',N'hal0cabin',N'smtp.qq.com',N'262047154@qq.com',N'30',N'��',N'&nbsp; &nbsp;<a class="bai" target="rform" href="../LanEmail/LanEmailShou.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/inbox.gif" width="16" />&nbsp;�ռ���&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../Work/RiCheng.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/calendar.gif" width="16" />&nbsp;�ճ̰���&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../NWorkFlow/NWorkToDoSelect.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/workflow.gif" width="16" />&nbsp;�½�����&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../NWorkFlow/NWorkToDo.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/workflow.gif" width="16" />&nbsp;�ҵĹ���&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../NWorkFlow/NowWorkFlow.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/workflow.gif" width="16" />&nbsp;���칤��&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../Subaltern/Task.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/address.gif" width="16" />&nbsp;�ҵ�����&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../Subaltern/TaskFP.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/@salary.gif" width="16" />&nbsp;�������&nbsp;</a>',N'ȫ��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[TiXingTime],[IfTiXing],[DaoHangList]) VALUES ( 35,N'������',N'B5C32B00080A8967',N'������',N'002',N'����',N'һ��Ա��',N'2012/3/2 15:04:16',N'��������',N'�ڸ�',N'��',N'��',N'600',N'��',N'&nbsp; &nbsp;<a class="bai" target="rform" href="../LanEmail/LanEmailAdd.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/new_email.gif" width="16" />&nbsp;д�ʼ�&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../NWorkFlow/NWorkToDoSelect.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/workflow.gif" width="16" />&nbsp;�½�����&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../NWorkFlow/NWorkToDo.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/workflow.gif" width="16" />&nbsp;�ҵĹ���&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../NWorkFlow/NowWorkFlow.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/workflow.gif" width="16" />&nbsp;���칤��&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../Subaltern/Task.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/address.gif" width="16" />&nbsp;�ҵ�����&nbsp;</a>')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[JiaTingDianHua],[TiXingTime],[IfTiXing]) VALUES ( 36,N'��ȫʤ',N'B5C32B00080A8967',N'��ȫʤ',N'003',N'������',N'һ��Ա��,��Ŀ����',N'����ʦ',N'�ڸ�',N'��',N'��',N'18705103692',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[TiXingTime],[IfTiXing],[DaoHangList],[XiaShuUser]) VALUES ( 37,N'��Ϊ��',N'AF6BF0615BC5EB01EE4ABD8D94A6DCB7',N'��Ϊ��',N'008',N'�ܾ���',N'��������Ա',N'2012/3/2 15:34:03',N'�ܾ���',N'�ڸ�',N'��',N'��',N'600',N'��',N'&nbsp; &nbsp;<a class="bai" target="rform" href="../LanEmail/LanEmailAdd.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/new_email.gif" width="16" />&nbsp;д�ʼ�&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../LanEmail/LanEmailShou.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/inbox.gif" width="16" />&nbsp;�ռ���&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../NWorkFlow/NWorkToDoSelect.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/workflow.gif" width="16" />&nbsp;�½�����&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../NWorkFlow/NWorkToDo.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/workflow.gif" width="16" />&nbsp;�ҵĹ���&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../NWorkFlow/NowWorkFlow.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/workflow.gif" width="16" />&nbsp;���칤��&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../Subaltern/Task.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/address.gif" width="16" />&nbsp;�ҵ�����&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../Subaltern/TaskFP.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/@salary.gif" width="16" />&nbsp;�������&nbsp;</a>&nbsp; &nbsp;<a class="bai" target="rform" href="../Meeting/MyMeeting.aspx"><img align="absMiddle" height="16" border=0 src="../images/TreeImages/@bbs.gif" width="16" />&nbsp;�Ҳ���Ļ���&nbsp;</a>',N'ȫ��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[TiXingTime],[IfTiXing]) VALUES ( 38,N'������',N'B5C32B00080A8967',N'������',N'005',N'��Ʒ����',N'һ��Ա��',N'��������',N'�ڸ�',N'��',N'Ů',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[JiaTingDianHua],[TiXingTime],[IfTiXing],[XiaShuUser]) VALUES ( 39,N'����',N'B5C32B00080A8967',N'����',N'006',N'�ͷ���',N'һ��Ա��',N'2014/3/20 18:35:39',N'�ͷ�',N'�ڸ�',N'��',N'Ů',N'18705103692',N'600',N'��',N'ȫ��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[TiXingTime],[IfTiXing]) VALUES ( 40,N'������',N'B5C32B00080A8967',N'������',N'007',N'������',N'һ��Ա��',N'2013/1/7 14:10:49',N'��������',N'�ڸ�',N'��',N'��',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[JiaTingDianHua],[TiXingTime],[IfTiXing]) VALUES ( 41,N'�Ź���',N'B5C32B00080A8967',N'�Ź���',N'009',N'���Ӫ��',N'һ��Ա��',N'����ʦ',N'�ڸ�',N'��',N'��',N'18996271618',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[BirthDay],[MingZu],[TiXingTime],[IfTiXing]) VALUES ( 42,N'�ܱ�',N'B5C32B00080A8967',N'�ܱ�',N'010',N'�ۺϰ칫��',N'һ��Ա��',N'2012/7/5 23:26:23',N'����',N'�ڸ�',N'��',N'��',N'2014-3-13',N'����',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[TiXingTime],[IfTiXing]) VALUES ( 43,N'������',N'B5C32B00080A8967',N'������',N'011',N'���ϰ��´�',N'һ��Ա��',N'����ʦ',N'�ڸ�',N'��',N'��',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[JiaTingDianHua],[TiXingTime],[IfTiXing]) VALUES ( 44,N'������',N'B5C32B00080A8967',N'������',N'012',N'�ͷ���',N'һ��Ա��',N'�ͷ�',N'�ڸ�',N'��',N'Ů',N'18996271618',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[IfLogin],[TiXingTime],[IfTiXing]) VALUES ( 45,N'majh',N'B5C32B00080A8967',N'majh',N'0011',N'������',N'��λ�쵼',N'2014/3/20 20:58:41',N'��',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[TiXingTime],[IfTiXing]) VALUES ( 46,N'liyiyang',N'B5C32B00080A8967',N'������',N'025',N'������',N'��λ�쵼',N'2014/3/20 21:28:04',N'����ʵϰ��',N'�ڸ�',N'��',N'��',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[IfLogin],[Sex],[BackInfo],[TiXingTime],[IfTiXing]) VALUES ( 49,N'test',N'67C7C0406B7CA51B',N'test',N'201422',N'������',N'һ��Ա��',N'2014/3/20 20:56:53',N'����ʦ',N'�ڸ�',N'��',N'��',N'�õõ�',N'600',N'��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[IfLogin],[TiXingTime],[IfTiXing]) VALUES ( 50,N'cc',N'DF85F69C97A1A163',N'����',N'00001',N'�ͷ���',N'��������Ա',N'2014/4/1 12:41:03',N'��������',N'�ڸ�',N'��',N'600',N'��')

SET IDENTITY_INSERT [ERPUser] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPUserDesk]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPUserDesk]

CREATE TABLE [ERPUserDesk] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[ModelName] [varchar]  (50) NULL,
[LookNum] [int]  NULL DEFAULT (5))

ALTER TABLE [ERPUserDesk] WITH NOCHECK ADD  CONSTRAINT [PK_ERPUserDesk] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPUserDesk] ON

INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 603,N'������',N'���칤��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 604,N'������',N'�ڲ��ʼ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 605,N'������',N'��λ����֪ͨ',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 606,N'������',N'�Ҳ���Ļ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 607,N'������',N'�ҵĹ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 608,N'������',N'�ճ̰���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 609,N'�ܱ�',N'���칤��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 646,N'majh',N'���칤��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 647,N'majh',N'�Ҳ���Ļ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 648,N'majh',N'�ҵĹ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 649,N'majh',N'��λ����֪ͨ',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 650,N'majh',N'�����ļ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 651,N'majh',N'������־',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 652,N'admin',N'�ҵĹ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 653,N'admin',N'���칤��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 654,N'admin',N'�ڲ��ʼ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 655,N'admin',N'��λ����֪ͨ',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 656,N'admin',N'�Ҳ���Ļ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 657,N'admin',N'�ճ̰���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 658,N'admin',N'���������۵�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 659,N'admin',N'�������ɹ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 660,N'admin',N'���ɹ����۵�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 661,N'admin',N'�ҵ����۶���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 662,N'liyiyang',N'������־',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 663,N'liyiyang',N'�����ļ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 664,N'liyiyang',N'��Ŀ�ļ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 665,N'liyiyang',N'�����ļ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 666,N'liyiyang',N'�ճ̰���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 667,N'liyiyang',N'���칤��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 668,N'liyiyang',N'�ҵĹ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 669,N'test',N'�ճ̰���',5)

SET IDENTITY_INSERT [ERPUserDesk] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPVote]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPVote]

CREATE TABLE [ERPVote] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[ContentStr] [varchar]  (8000) NULL,
[ScoreStr] [varchar]  (800) NULL,
[TouPiaoRenList] [varchar]  (8000) NULL DEFAULT (''))

ALTER TABLE [ERPVote] WITH NOCHECK ADD  CONSTRAINT [PK_ERPVote] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPVote] ON

INSERT [ERPVote] ([ID],[TitleStr],[TimeStr],[UserName],[ContentStr],[ScoreStr],[TouPiaoRenList]) VALUES ( 3,N'���������ϰ�ʱ����������������ͶƱ��',N'2012/2/29 15:48:51',N'admin',N'����7:00---����4:00|
����7:30---����4:30|
����8:00---����5:00|
����9:00---����5:30',N'2|1|4|6',N'|liyiyang||admin||test|')
INSERT [ERPVote] ([ID],[TitleStr],[TimeStr],[UserName],[ContentStr],[ScoreStr],[TouPiaoRenList]) VALUES ( 4,N'���',N'2014/3/5 11:52:01',N'admin',N'dddddd',N'1',N'|admin|')

SET IDENTITY_INSERT [ERPVote] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkPlan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkPlan]

CREATE TABLE [ERPWorkPlan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[ContentStr] [text]  NULL,
[FuJianStr] [varchar]  (2000) NULL,
[UserName] [varchar]  (100) NULL,
[CanLookUser] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL)

ALTER TABLE [ERPWorkPlan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkPlan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkPlan] ON

INSERT [ERPWorkPlan] ([ID],[TitleStr],[ContentStr],[FuJianStr],[UserName],[CanLookUser],[TimeStr]) VALUES ( 3,N'�����ֳ�ʵʩ��ѵ�ƻ�����Ҫ���������ʵʩ',N'�����ֳ�ʵʩ��ѵ�ƻ����ȴ�����ʱ����',N'634661302797968750.doc',N'admin',N'admin,��ȫʤ,������',N'2012/2/29 16:38:21')
INSERT [ERPWorkPlan] ([ID],[TitleStr],[ContentStr],[UserName],[CanLookUser],[TimeStr]) VALUES ( 4,N'fsd',N'<p>ss</p>',N'liyiyang',N'sdf',N'2013/11/11 9:11:39')
INSERT [ERPWorkPlan] ([ID],[TitleStr],[ContentStr],[UserName],[CanLookUser],[TimeStr]) VALUES ( 5,N'wqewqe',N'<p>dsadsad</p>',N'admin',N'������',N'2014/3/6 22:30:25')

SET IDENTITY_INSERT [ERPWorkPlan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkRiZhi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkRiZhi]

CREATE TABLE [ERPWorkRiZhi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TitleStr] [varchar]  (1000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[TypeStr] [varchar]  (50) NULL,
[ContentStr] [text]  NULL)

ALTER TABLE [ERPWorkRiZhi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkRiZhi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkRiZhi] ON

INSERT [ERPWorkRiZhi] ([ID],[UserName],[TitleStr],[TimeStr],[TypeStr],[ContentStr]) VALUES ( 4,N'admin',N'��ҵ�ۺϹ���ƽ̨-�������ܰ칫ϵͳ',N'2012/2/29 16:02:41',N'������־',N'<p>��ӭʹ�á���ҵ�ۺϹ���ƽ̨---�������ܰ칫ϵͳ������ϵͳ���й���ȫ��ʵ�á���ȫ���ȶ��Ըߡ��ײ���������ά���򵥵��ص㣬���ö����������ͼ�����web�����������ݿ��ϵͳ���������ð�װ���û����ڰ�Сʱ�����а�װ��ϣ�����רҵ��Ա��������ά����B/S�ṹ��������Intranet/InternetӦ�ã��ͻ���ֻ�������������Ӱ칫ϵͳ�����۳������У����ǾӼҰ칫���������ܵ���Ӧ�֣�ʵ���޵������Ƶ�ȫ��칫��������Ϣ����ҵ������ļ��������ܹ������ȹ��ܡ�</p><p style="text-align:right;"><br /></p>')
INSERT [ERPWorkRiZhi] ([ID],[UserName],[TitleStr],[TimeStr],[TypeStr],[ContentStr]) VALUES ( 5,N'liyiyang',N'hello first day',N'2013/11/11 8:55:11',N's',N'<p>gl.</p>')
INSERT [ERPWorkRiZhi] ([ID],[UserName],[TitleStr],[TimeStr],[TypeStr],[ContentStr]) VALUES ( 6,N'liyiyang',N'test',N'2013/11/11 8:56:27',N's',N'<p>ss.</p>')

SET IDENTITY_INSERT [ERPWorkRiZhi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPXCDetails]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPXCDetails]

CREATE TABLE [ERPXCDetails] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[XCID] [int]  NULL,
[ItemsID] [int]  NULL,
[UserName] [varchar]  (50) NULL,
[NumStr] [varchar]  (50) NULL)

ALTER TABLE [ERPXCDetails] WITH NOCHECK ADD  CONSTRAINT [PK_ERPXCDetails] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPXCDetails] ON

INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 37,1,2,N'admin',N'10')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 38,1,3,N'admin',N'3000')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 39,1,4,N'admin',N'700')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 40,1,1,N'admin',N'4')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 41,1,2,N'������',N'40')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 42,1,3,N'������',N'30')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 43,1,4,N'������',N'20')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 44,1,1,N'������',N'10')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 45,1,2,N'��Ϊ��',N'50')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 46,1,3,N'��Ϊ��',N'600')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 47,1,4,N'��Ϊ��',N'7')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 48,1,1,N'��Ϊ��',N'8')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 49,2,5,N'admin',N'3000')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 50,2,6,N'admin',N'500')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 51,2,7,N'admin',N'500')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 52,2,8,N'admin',N'800')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 53,2,9,N'admin')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 54,2,10,N'admin',N'-300')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 55,2,5,N'������',N'2800')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 56,2,6,N'������',N'480')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 57,2,7,N'������',N'300')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 58,2,8,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 59,2,9,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 60,2,10,N'������',N'-100')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 61,2,5,N'������',N'3000')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 62,2,6,N'������',N'480')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 63,2,7,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 64,2,8,N'������',N'400')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 65,2,9,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 66,2,10,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 67,2,5,N'����',N'2500')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 68,2,6,N'����',N'500')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 69,2,7,N'����',N'400')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 70,2,8,N'����')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 71,2,9,N'����')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 72,2,10,N'����')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 73,2,5,N'��ȫʤ',N'3000')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 74,2,6,N'��ȫʤ',N'600')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 75,2,7,N'��ȫʤ')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 76,2,8,N'��ȫʤ')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 77,2,9,N'��ȫʤ',N'680')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 78,2,10,N'��ȫʤ')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 79,2,5,N'������',N'3000')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 80,2,6,N'������',N'800')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 81,2,7,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 82,2,8,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 83,2,9,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 84,2,10,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 85,2,5,N'������',N'3000')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 86,2,6,N'������',N'450')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 87,2,7,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 88,2,8,N'������',N'250')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 89,2,9,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 90,2,10,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 91,2,5,N'������',N'3000')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 92,2,6,N'������',N'630')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 93,2,7,N'������',N'200')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 94,2,8,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 95,2,9,N'������',N'780')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 96,2,10,N'������')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 97,2,5,N'�Ź���',N'3000')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 98,2,6,N'�Ź���',N'720')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 99,2,7,N'�Ź���')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 100,2,8,N'�Ź���')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 101,2,9,N'�Ź���')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 102,2,10,N'�Ź���',N'-120')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 103,2,5,N'��Ϊ��',N'3000')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 104,2,6,N'��Ϊ��',N'350')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 105,2,7,N'��Ϊ��',N'180')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 106,2,8,N'��Ϊ��',N'600')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 107,2,9,N'��Ϊ��',N'300')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 108,2,10,N'��Ϊ��')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 109,2,5,N'�ܱ�',N'2800')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName],[NumStr]) VALUES ( 110,2,6,N'�ܱ�',N'380')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 111,2,7,N'�ܱ�')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 112,2,8,N'�ܱ�')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 113,2,9,N'�ܱ�')
INSERT [ERPXCDetails] ([ID],[XCID],[ItemsID],[UserName]) VALUES ( 114,2,10,N'�ܱ�')

SET IDENTITY_INSERT [ERPXCDetails] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPXinChou]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPXinChou]

CREATE TABLE [ERPXinChou] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[XCName] [varchar]  (50) NULL,
[JianJie] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPXinChou] WITH NOCHECK ADD  CONSTRAINT [PK_ERPXinChou] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPXinChou] ON

INSERT [ERPXinChou] ([ID],[XCName],[JianJie],[UserName],[TimeStr]) VALUES ( 2,N'�۶��Ƽ����޹�˾3�·ݹ�������',N'�۶��Ƽ�3�·ݹ�������',N'admin',N'2012/3/2 12:29:04')

SET IDENTITY_INSERT [ERPXinChou] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPXinChouCanShu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPXinChouCanShu]

CREATE TABLE [ERPXinChouCanShu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ItemName] [varchar]  (50) NULL,
[BackInfo] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPXinChouCanShu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPXinChouCanShu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPXinChouCanShu] ON

INSERT [ERPXinChouCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 5,N'��������',N'A',N'admin',N'2012/3/2 12:24:46')
INSERT [ERPXinChouCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 6,N'��λ����',N'B',N'admin',N'2012/3/2 12:25:10')
INSERT [ERPXinChouCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 7,N'ְ����',N'C',N'admin',N'2012/3/2 12:25:20')
INSERT [ERPXinChouCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 8,N'����',N'D',N'admin',N'2012/3/2 12:25:33')
INSERT [ERPXinChouCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 9,N'����',N'E',N'admin',N'2012/3/2 12:25:55')
INSERT [ERPXinChouCanShu] ([ID],[ItemName],[BackInfo],[UserName],[TimeStr]) VALUES ( 10,N'�۳����',N'F',N'admin',N'2012/3/2 12:26:08')

SET IDENTITY_INSERT [ERPXinChouCanShu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPXueXi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPXueXi]

CREATE TABLE [ERPXueXi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (200) NULL,
[BackInfo] [text]  NULL,
[FuJianStr] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPXueXi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPXueXi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPXueXi] ON

INSERT [ERPXueXi] ([ID],[TitleStr],[BackInfo],[FuJianStr],[UserName],[TimeStr]) VALUES ( 2,N'�۶��Ƽ�Ա����ְѧϰ����',N'<SPAN id=Label6>��λͬ�ʣ����Ǻã�<P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P></SPAN>',N'634662845363593750.doc',N'admin',N'2012/3/2 11:28:57')
INSERT [ERPXueXi] ([ID],[TitleStr],[BackInfo],[FuJianStr],[UserName],[TimeStr]) VALUES ( 3,N'�۶��Ƽ�Ա�������滮��ϵͳ���',N'<SPAN id=Label6>��λͬ�ʣ����Ǻã� <P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P></SPAN>',N'634662845655000000.ppt',N'admin',N'2012/3/2 11:29:26')
INSERT [ERPXueXi] ([ID],[TitleStr],[BackInfo],[FuJianStr],[UserName],[TimeStr]) VALUES ( 4,N'��ҵ�Ļ���Ӫ����·˼��',N'<SPAN id=Label6>��λͬ�ʣ����Ǻã� <P>������ʱ����з�����ԣ�����λ���°�OAϵͳ���۶��������ܰ칫ϵͳV7.2.1--��ҵͨ�ð棩��ʽ�Ƴ�����л��ҵĴ���֧�֣�</P><P>���κ����⣬��ֱ����ϵ���ǡ�023-67466469&nbsp;&nbsp; 13696432490&nbsp; ����۶��Ƽ�-��������</P></SPAN>',N'634662845909843750.xls',N'admin',N'2012/3/2 11:29:52')
INSERT [ERPXueXi] ([ID],[TitleStr],[BackInfo],[FuJianStr],[UserName],[TimeStr]) VALUES ( 5,N'ghvv',N'vhjN',N'635014956048502360.jpg',N'admin',N'2013/4/14 0:20:08')

SET IDENTITY_INSERT [ERPXueXi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPXueXiXinDe]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPXueXiXinDe]

CREATE TABLE [ERPXueXiXinDe] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[XinDeTitle] [varchar]  (200) NULL,
[XinDeContent] [text]  NULL,
[FuJianStr] [varchar]  (500) NULL,
[ShenPiContent] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPXueXiXinDe] WITH NOCHECK ADD  CONSTRAINT [PK_ERPXueXiXinDe] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPXueXiXinDe] ON

INSERT [ERPXueXiXinDe] ([ID],[XinDeTitle],[XinDeContent],[FuJianStr],[ShenPiContent],[UserName],[TimeStr]) VALUES ( 2,N'ѧϰ��ҵ�Ļ����иС�',N'ѧϰ��о��ܺã��ҵ�����Ŀ�ꡣ',N'634662846448593750.doc',N'�ܺã���������֣�',N'admin',N'2012/3/2 11:30:46')
INSERT [ERPXueXiXinDe] ([ID],[XinDeTitle],[XinDeContent],[UserName],[TimeStr]) VALUES ( 3,N'vhb',N'bjj',N'admin',N'2013/4/14 0:24:08')

SET IDENTITY_INSERT [ERPXueXiXinDe] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPYinZhang]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPYinZhang]

CREATE TABLE [ERPYinZhang] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[YinZhangName] [varchar]  (50) NULL,
[YinZhangLeiBie] [varchar]  (50) NULL,
[YinZhangMiMa] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[ImgPath] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPYinZhang] WITH NOCHECK ADD  CONSTRAINT [PK_ERPYinZhang] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPYinZhang] ON

INSERT [ERPYinZhang] ([ID],[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]) VALUES ( 9,N'��λ������ʾ����',N'����ӡ��',N'123456',N'admin',N'634661290104062500.gif',N'2012/2/29 16:16:50')
INSERT [ERPYinZhang] ([ID],[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]) VALUES ( 10,N'����ͬ��ǩ��',N'˽��ӡ��',N'123456',N'admin',N'634661290466093750.jpg',N'2012/2/29 16:17:26')
INSERT [ERPYinZhang] ([ID],[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]) VALUES ( 11,N'����ǩ����',N'˽��ӡ��',N'123456',N'admin',N'634661290640625000.jpg',N'2012/2/29 16:17:44')

SET IDENTITY_INSERT [ERPYinZhang] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPYinZhangLog]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPYinZhangLog]

CREATE TABLE [ERPYinZhangLog] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[DoSomething] [varchar]  (1000) NULL,
[IpStr] [varchar]  (50) NULL,
[TypeStr] [varchar]  (50) NULL)

ALTER TABLE [ERPYinZhangLog] WITH NOCHECK ADD  CONSTRAINT [PK_ERPYinZhangLog] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPYinZhangLog] ON

INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 71,N'admin',N'2012/3/2 14:56:36',N'�û�ʹ��ӡ�£�����ǩ����(˽��ӡ��)',N'127.0.0.1',N'˽��ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 72,N'admin',N'2012/3/2 14:57:37',N'�û�ʹ��ӡ�£�����ͬ��ǩ��(˽��ӡ��)',N'127.0.0.1',N'˽��ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 73,N'admin',N'2012/3/2 14:59:34',N'�û�ʹ��ӡ�£�����ͬ��ǩ��(˽��ӡ��)',N'127.0.0.1',N'˽��ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 74,N'admin',N'2012/3/2 14:59:40',N'�û�ʹ��ӡ�£�����ǩ����(˽��ӡ��)',N'127.0.0.1',N'˽��ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 75,N'admin',N'2012/3/2 15:01:49',N'�û�ʹ��ӡ�£���λ������ʾ����(����ӡ��)',N'127.0.0.1',N'����ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 76,N'admin',N'2012/9/12 11:42:37',N'�û�ʹ��ӡ�£���λ������ʾ����(����ӡ��)',N'::1',N'����ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 77,N'admin',N'2013/1/7 11:12:05',N'�û�ʹ��ӡ�£���λ������ʾ����(����ӡ��)',N'::1',N'����ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 78,N'admin',N'2013/1/7 11:13:26',N'�û�ʹ��ӡ�£���λ������ʾ����(����ӡ��)',N'127.0.0.1',N'����ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 79,N'admin',N'2014/3/20 18:44:02',N'�û�ʹ��ӡ�£���λ������ʾ����(����ӡ��)',N'58.50.163.31',N'����ӡ��')

SET IDENTITY_INSERT [ERPYinZhangLog] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPYS]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPYS]

CREATE TABLE [ERPYS] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[HeTongName] [varchar]  (200) NULL,
[QianYueKeHu] [varchar]  (200) NULL,
[DaoKuanDate] [datetime]  NULL,
[TiXingDate] [datetime]  NULL,
[CreateTime] [datetime]  NULL DEFAULT (getdate()),
[CreateUser] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[NowState] [varchar]  (50) NULL,
[HTJE] [nvarchar]  (30) NULL,
[SFDK] [nvarchar]  (20) NULL DEFAULT (0),
[FKID] [int]  NULL)

ALTER TABLE [ERPYS] WITH NOCHECK ADD  CONSTRAINT [PK_ERPYS] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPYS] ON

INSERT [ERPYS] ([ID],[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[NowState],[HTJE],[SFDK],[FKID]) VALUES ( 1,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'����������Ź�ҵ��Ʒ���޹�˾',N'2013/1/24 0:00:00',N'2013/1/9 0:00:00',N'2013/1/5 10:09:13',N'admin',N'F',N'2323',N'��',5)
INSERT [ERPYS] ([ID],[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[BackInfo],[NowState],[HTJE],[SFDK],[FKID]) VALUES ( 5,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'����������Ź�ҵ��Ʒ���޹�˾',N'2013/4/8 0:00:00',N'2013/4/23 0:00:00',N'2013/4/14 21:25:49',N'admin',N'sdf',N'F',N'1231',N'��',7)
INSERT [ERPYS] ([ID],[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[NowState],[HTJE],[SFDK],[FKID]) VALUES ( 6,N'����Ϣ���ͻ�OA�ɹ���ͬ',N'����������Ź�ҵ��Ʒ���޹�˾',N'2013/4/8 0:00:00',N'2013/4/15 0:00:00',N'2013/4/14 21:28:33',N'admin',N'S',N'123',N'��',8)
INSERT [ERPYS] ([ID],[HeTongName],[QianYueKeHu],[DaoKuanDate],[TiXingDate],[CreateTime],[CreateUser],[BackInfo],[NowState],[HTJE]) VALUES ( 7,N'X',N'sd',N'2010/1/1 0:00:00',N'2010/1/1 0:00:00',N'2013/11/11 9:28:02',N'liyiyang',N'S',N'S',N'S')

SET IDENTITY_INSERT [ERPYS] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[GZRZ]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [GZRZ]

CREATE TABLE [GZRZ] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkFormID] [int]  NULL,
[UserName] [varchar]  (100) NULL,
[Subject] [nvarchar]  (100) NULL,
[Contents] [nvarchar]  (3999) NULL)

ALTER TABLE [GZRZ] WITH NOCHECK ADD  CONSTRAINT [PK_GZRZ] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [GZRZ] ON

INSERT [GZRZ] ([ID],[WorkFormID],[UserName],[Subject],[Contents]) VALUES ( 1,1,N'admin',N'test',N'test')

SET IDENTITY_INSERT [GZRZ] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[QJSQB]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [QJSQB]

CREATE TABLE [QJSQB] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkFormID] [int]  NULL,
[UserName] [varchar]  (100) NULL)

ALTER TABLE [QJSQB] WITH NOCHECK ADD  CONSTRAINT [PK_QJSQB] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [QJSQB] ON


SET IDENTITY_INSERT [QJSQB] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[SWDJFB]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [SWDJFB]

CREATE TABLE [SWDJFB] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkFormID] [int]  NULL,
[UserName] [varchar]  (100) NULL,
[LBXX] [nvarchar]  (100) NULL,
[BHXX] [nvarchar]  (100) NULL)

ALTER TABLE [SWDJFB] WITH NOCHECK ADD  CONSTRAINT [PK_SWDJFB] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [SWDJFB] ON

INSERT [SWDJFB] ([ID],[WorkFormID],[UserName],[LBXX],[BHXX]) VALUES ( 1,54,N'admin',N'sd',N'sdf')
INSERT [SWDJFB] ([ID],[WorkFormID],[UserName],[LBXX],[BHXX]) VALUES ( 2,55,N'admin',N'tess',N'�߸߹�')
INSERT [SWDJFB] ([ID],[WorkFormID],[UserName],[LBXX],[BHXX]) VALUES ( 3,56,N'admin',N'sdf',N'sdf')
INSERT [SWDJFB] ([ID],[WorkFormID],[UserName],[LBXX],[BHXX]) VALUES ( 4,57,N'admin',N'�Ե�',N'ˮ���')
INSERT [SWDJFB] ([ID],[WorkFormID],[UserName],[LBXX],[BHXX]) VALUES ( 5,58,N'admin',N'sdf',N's')
INSERT [SWDJFB] ([ID],[WorkFormID],[UserName],[LBXX],[BHXX]) VALUES ( 6,59,N'admin',N'sd',N'sd')
INSERT [SWDJFB] ([ID],[WorkFormID],[UserName],[LBXX],[BHXX]) VALUES ( 7,60,N'admin',N'sdf23',N'sdfr3')
INSERT [SWDJFB] ([ID],[WorkFormID],[UserName],[LBXX],[BHXX]) VALUES ( 8,61,N'admin',N'sd1',N'sd1')

SET IDENTITY_INSERT [SWDJFB] OFF
