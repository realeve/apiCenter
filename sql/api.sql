/*
Navicat SQL Server Data Transfer

Source Server         : MS SQLServer
Source Server Version : 105000
Source Host           : localhost:1433
Source Database       : api
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2017-05-30 17:51:43
*/


-- ----------------------------
-- Table structure for tbl_menu_detail
-- ----------------------------
DROP TABLE [dbo].[tbl_menu_detail]
GO
CREATE TABLE [dbo].[tbl_menu_detail] (
[id] int NOT NULL IDENTITY(1,1) ,
[name] varchar(255) NULL ,
[url] varchar(MAX) NULL ,
[type] int NULL ,
[user_id] int NULL ,
[share] int NULL ,
[hide] int NULL ,
[icon] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tbl_menu_detail]', RESEED, 8)
GO

-- ----------------------------
-- Records of tbl_menu_detail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_menu_detail] ON
GO
INSERT INTO [dbo].[tbl_menu_detail] ([id], [name], [url], [type], [user_id], [share], [hide], [icon]) VALUES (N'1', N'常用工具', N'javascript:;', N'1', N'15', N'1', N'0', N'%3ci%20class%3d%22icon-wrench%22%3e%3c/i%3e%20')
GO
GO
INSERT INTO [dbo].[tbl_menu_detail] ([id], [name], [url], [type], [user_id], [share], [hide], [icon]) VALUES (N'2', N'系统设置', N'javascript:;', N'1', N'15', N'1', N'0', N'%3ci%20class%3d%22icon-globe%22%3e%3c/i%3e%20')
GO
GO
INSERT INTO [dbo].[tbl_menu_detail] ([id], [name], [url], [type], [user_id], [share], [hide], [icon]) VALUES (N'3', N'图表接口', N'QualityChart', N'3', N'15', N'1', N'0', N'%3ci%20class%3d%22fa%20fa-area-chart%22%3e%3c/i%3e%20')
GO
GO
INSERT INTO [dbo].[tbl_menu_detail] ([id], [name], [url], [type], [user_id], [share], [hide], [icon]) VALUES (N'4', N'报表接口', N'QualityTable', N'3', N'15', N'1', N'0', N'%3ci%20class%3d%22fa%20fa-bar-chart-o%22%3e%3c/i%3e%20')
GO
GO
INSERT INTO [dbo].[tbl_menu_detail] ([id], [name], [url], [type], [user_id], [share], [hide], [icon]) VALUES (N'5', N'帐户设置', N'settings/account', N'2', N'15', N'1', N'0', N'%3ci%20class%3d%22icon-users%22%3e%3c/i%3e%20')
GO
GO
INSERT INTO [dbo].[tbl_menu_detail] ([id], [name], [url], [type], [user_id], [share], [hide], [icon]) VALUES (N'6', N'选项框设置', N'settings/select', N'3', N'15', N'1', N'0', N'%3ci%20class%3d%22icon-film%22%3e%3c/i%3e%20')
GO
GO
INSERT INTO [dbo].[tbl_menu_detail] ([id], [name], [url], [type], [user_id], [share], [hide], [icon]) VALUES (N'7', N'自定义菜单', N'settings/menu', N'3', N'15', N'1', N'0', N'%3ci%20class%3d%22icon-list%22%3e%3c/i%3e%20')
GO
GO
INSERT INTO [dbo].[tbl_menu_detail] ([id], [name], [url], [type], [user_id], [share], [hide], [icon]) VALUES (N'8', N'数据接口', N'datainterface', N'1', N'15', N'0', N'0', N'%20')
GO
GO
SET IDENTITY_INSERT [dbo].[tbl_menu_detail] OFF
GO

-- ----------------------------
-- Table structure for tbl_menu_list
-- ----------------------------
DROP TABLE [dbo].[tbl_menu_list]
GO
CREATE TABLE [dbo].[tbl_menu_list] (
[id] int NOT NULL IDENTITY(1,1) ,
[name] varchar(255) NULL ,
[user_id] int NULL ,
[share] int NULL ,
[segment_json] varchar(MAX) NULL ,
[hide] int NULL ,
[segment_html] varchar(MAX) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tbl_menu_list]', RESEED, 2)
GO

-- ----------------------------
-- Records of tbl_menu_list
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tbl_menu_list] ON
GO
INSERT INTO [dbo].[tbl_menu_list] ([id], [name], [user_id], [share], [segment_json], [hide], [segment_html]) VALUES (N'0', N'系统默认', N'15', N'1', N'%5b%7b%22id%22%3a2%2c%22children%22%3a%5b%7b%22id%22%3a7%7d%2c%7b%22id%22%3a6%7d%2c%7b%22id%22%3a5%7d%5d%7d%2c%7b%22id%22%3a1%2c%22children%22%3a%5b%7b%22id%22%3a3%7d%2c%7b%22id%22%3a4%7d%2c%7b%22id%22%3a8%7d%5d%7d%5d', N'0', N'%3cli%20class%3d%22nav-item%22%20data-id%3d%222%22%3e%20%20%20%20%20%20%3ca%20href%3d%22javascript%3a%3b%22%20class%3d%22nav-link%20nav-toggle%22%3e%20%3ci%20class%3d%22icon-globe%22%3e%3c/i%3e%20%20%3cspan%20class%3d%22title%22%3e\u7cfb\u7edf\u8bbe\u7f6e%3c/span%3e%3cspan%20class%3d%22arrow%20%22%3e%3c/span%3e%3c/a%3e%3cul%20class%3d%22sub-menu%22%3e%3cli%20class%3d%22nav-item%22%20data-id%3d%227%22%3e%3ca%20href%3d%22/settings/menu%22%20class%3d%22nav-link%20nav-toggle%22%3e%20%3ci%20class%3d%22icon-list%22%3e%3c/i%3e%20%20%3cspan%20class%3d%22title%22%3e\u81ea\u5b9a\u4e49\u83dc\u5355%3c/span%3e%3c/a%3e%3c/li%3e%3cli%20class%3d%22nav-item%22%20data-id%3d%226%22%3e%20%20%20%20%20%20%3ca%20href%3d%22/settings/select%22%20class%3d%22nav-link%20nav-toggle%22%3e%20%3ci%20class%3d%22icon-film%22%3e%3c/i%3e%20%20%3cspan%20class%3d%22title%22%3e\u9009\u9879\u6846\u8bbe\u7f6e%3c/span%3e%3c/a%3e%3c/li%3e%3cli%20class%3d%22nav-item%22%20data-id%3d%225%22%3e%20%20%20%20%20%20%3ca%20href%3d%22/settings/account%22%20class%3d%22nav-link%20nav-toggle%22%3e%20%3ci%20class%3d%22icon-users%22%3e%3c/i%3e%20%20%3cspan%20class%3d%22title%22%3e\u5e10\u6237\u8bbe\u7f6e%3c/span%3e%3c/a%3e%3c/li%3e%3c/ul%3e%3c/li%3e%3cli%20class%3d%22nav-item%22%20data-id%3d%221%22%3e%20%20%20%20%20%20%3ca%20href%3d%22javascript%3a%3b%22%20class%3d%22nav-link%20nav-toggle%22%3e%20%3ci%20class%3d%22icon-wrench%22%3e%3c/i%3e%20%20%3cspan%20class%3d%22title%22%3e\u5e38\u7528\u5de5\u5177%3c/span%3e%3cspan%20class%3d%22arrow%20%22%3e%3c/span%3e%3c/a%3e%3cul%20class%3d%22sub-menu%22%3e%3cli%20class%3d%22nav-item%22%20data-id%3d%223%22%3e%3ca%20href%3d%22/qualitychart%22%20class%3d%22nav-link%20nav-toggle%22%3e%20%3ci%20class%3d%22fa%20fa-area-chart%22%3e%3c/i%3e%20%20%3cspan%20class%3d%22title%22%3e\u56fe\u8868\u63a5\u53e3%3c/span%3e%3c/a%3e%3c/li%3e%3cli%20class%3d%22nav-item%22%20data-id%3d%224%22%3e%20%20%20%20%20%20%3ca%20href%3d%22/qualitytable%22%20class%3d%22nav-link%20nav-toggle%22%3e%20%3ci%20class%3d%22fa%20fa-bar-chart-o%22%3e%3c/i%3e%20%20%3cspan%20class%3d%22title%22%3e\u62a5\u8868\u63a5\u53e3%3c/span%3e%3c/a%3e%3c/li%3e%3cli%20class%3d%22nav-item%22%20data-id%3d%228%22%3e%20%20%20%20%20%20%3ca%20href%3d%22/datainterface%22%20class%3d%22nav-link%20nav-toggle%22%3e%20%20%20%3cspan%20class%3d%22title%22%3e\u6570\u636e\u63a5\u53e3%3c/span%3e%3c/a%3e%3c/li%3e%3c/ul%3e%3c/li%3e')
GO
GO
SET IDENTITY_INSERT [dbo].[tbl_menu_list] OFF
GO

-- ----------------------------
-- Table structure for tblDataBaseInfo
-- ----------------------------
DROP TABLE [dbo].[tblDataBaseInfo]
GO
CREATE TABLE [dbo].[tblDataBaseInfo] (
[ID] int NOT NULL IDENTITY(1,1) ,
[DBID] int NULL ,
[DBName] nchar(15) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblDataBaseInfo]', RESEED, 2)
GO

-- ----------------------------
-- Records of tblDataBaseInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblDataBaseInfo] ON
GO
INSERT INTO [dbo].[tblDataBaseInfo] ([ID], [DBID], [DBName]) VALUES (N'1', N'0', N'业务数据           ')
GO
GO
INSERT INTO [dbo].[tblDataBaseInfo] ([ID], [DBID], [DBName]) VALUES (N'2', N'1', N'API设置管理        ')
GO
GO
SET IDENTITY_INSERT [dbo].[tblDataBaseInfo] OFF
GO

-- ----------------------------
-- Table structure for tblDataInterface
-- ----------------------------
DROP TABLE [dbo].[tblDataInterface]
GO
CREATE TABLE [dbo].[tblDataInterface] (
[ID] int NOT NULL IDENTITY(1,1) ,
[ApiID] int NULL ,
[ApiName] nchar(40) NULL ,
[AuthorName] nchar(40) NULL ,
[Token] nchar(100) NULL ,
[ApiDesc] varchar(MAX) NULL ,
[strSQL] varchar(MAX) NULL ,
[Params] varchar(MAX) NULL ,
[DBID] int NULL ,
[URL] varchar(MAX) NULL ,
[CreateDate] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblDataInterface]', RESEED, 9)
GO

-- ----------------------------
-- Records of tblDataInterface
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblDataInterface] ON
GO
INSERT INTO [dbo].[tblDataInterface] ([ID], [ApiID], [ApiName], [AuthorName], [Token], [ApiDesc], [strSQL], [Params], [DBID], [URL], [CreateDate]) VALUES (N'1', N'0', N'数据接口列表                                  ', N'develop                                 ', N'79d84495ca776ccb523114a2120e273ca80b315b                                                            ', N'[功能说明]
												 <span>本接口主要用于 <i>凹印离线设备每天得分汇总</i>&nbsp;信息的查询.</span>
												 [主要参数]
												<ol>
													<li>
														 TimeStart:开始时间；
													</li>
													<li>
														 TimeEnd:结束时间；</li>
												</ol>', N'U0VMRUNUIGEuSUQgYXMgSUQsYS5BcGlJRCBhcyDluo/lj7csYS5BdXRob3JOYW1lIGFzIOaJgOacieiAhSxiLkRCTmFtZSBhcyDmlbDmja7lupMsYS5BcGlOYW1lIGFzIOaOpeWPo+WQjeensCxhLnN0clNxbCBhcyDmn6Xor6Lor63lj6UsYS5QYXJhbXMgYXMg5Y+C5pWw5YiX6KGoIGZyb20gdGJsRGF0YUludGVyZmFjZSBhIGlubmVyIGpvaW4gdGJsRGF0YUJhc2VJbmZvIGIgICBvbiBhLkRCSUQgPSBiLkRCSUQgIHdoZXJlIEFwaUlEPjAgYW5kIGF1dGhvcm5hbWU9PyBvcmRlciBieSAx', N'author', N'1', N'http://localhost/DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=2&M=3', null)
GO
GO
INSERT INTO [dbo].[tblDataInterface] ([ID], [ApiID], [ApiName], [AuthorName], [Token], [ApiDesc], [strSQL], [Params], [DBID], [URL], [CreateDate]) VALUES (N'2', N'1', N'选择列表自定义设置                               ', N'develop                                 ', N'79d84495ca776ccb523114a2120e273ca80b315b                                                            ', N'<p>[功能说明]</p>
												 <p style="text-indent:2em;">本接口主要用于 <i>XX</i> 信息的查询.</p>
												 <p>[主要参数]</p>
												<ol>
													<li>
														 tstart:开始时间；
													</li>
													<li>
														 tend:结束时间；
													</li>
													<li>
														 M:0.默认所有数据;1.输出列名;<br>2.预览模式;3.DataTables数据格式；
													</li>
												</ol>', N'c2VsZWN0IFZhbHVlLE5hbWUsYXBpVVJMLHRibElEIGZyb20gdGJsU2V0dGluZ3NfU2VsZWN0X0xpc3Q=', N'', N'1', N'http://localhost/DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=34&M=3', null)
GO
GO
INSERT INTO [dbo].[tblDataInterface] ([ID], [ApiID], [ApiName], [AuthorName], [Token], [ApiDesc], [strSQL], [Params], [DBID], [URL], [CreateDate]) VALUES (N'3', N'5', N'未激活帐户列表                                 ', N'develop                                 ', N'79d84495ca776ccb523114a2120e273ca80b315b                                                            ', N'<p>[功能说明]</p>
												 <p style="text-indent:2em;">本接口主要用于 <i>XX</i> 信息的查询.</p>
												 <p>[主要参数]</p>
												<ol>
													<li>
														 tstart:开始时间；
													</li>
													<li>
														 tend:结束时间；
													</li>
													<li>
														 M:0.默认所有数据;1.输出列名;<br>2.预览模式;3.DataTables数据格式；
													</li>
												</ol>', N'U0VMRUNUIGEuaWQsYS5GdWxsTmFtZSxiLkRlcGFydE1lbnROYW1lLENPTlZFUlQoVkFSQ0hBUigxNiksYS5yZWdUaW1lLDEyMCkgYXMgcmVnVGltZSBGUk9NIFtkYm9dLlt0YmxVc2VyXSBhIElOTkVSIEpPSU4gdGJsRGVwYXJ0TWVudCBiIE9OIGEuRGVwYXJ0TWVudD1iLmRwdElEIFdIRVJFIFVzZXJSb2xlID0gMA==', N'', N'1', N'http://10.8.2.133:70/DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=43&M=3', N'2016-01-27 14:46:00.000')
GO
GO
INSERT INTO [dbo].[tblDataInterface] ([ID], [ApiID], [ApiName], [AuthorName], [Token], [ApiDesc], [strSQL], [Params], [DBID], [URL], [CreateDate]) VALUES (N'4', N'6', N'个人菜单项列表                                 ', N'develop                                 ', N'79d84495ca776ccb523114a2120e273ca80b315b                                                            ', N'<p>[功能说明]</p>
												 <p style="text-indent:2em;">本接口主要用于 <i>XX</i> 信息的查询.</p>
												 <p>[主要参数]</p>
												<ol>
													<li>
														 tstart:开始时间；
													</li>
													<li>
														 tend:结束时间；
													</li>
													<li>
														 M:0.默认所有数据;1.输出列名;<br>2.预览模式;3.DataTables数据格式；
													</li>
												</ol>', N'c2VsZWN0ICogZnJvbSB0YmxfbWVudV9saXN0IFdIRVJFIGhpZGU9MCBhbmQgKHNoYXJlID0gMSBPUiB1c2VyX2lkID0gPyk=', N'uid', N'1', N'http://10.8.2.133:70/DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=45&M=3', N'2016-02-02 11:14:00.000')
GO
GO
INSERT INTO [dbo].[tblDataInterface] ([ID], [ApiID], [ApiName], [AuthorName], [Token], [ApiDesc], [strSQL], [Params], [DBID], [URL], [CreateDate]) VALUES (N'5', N'7', N'个人菜单项列表                                 ', N'develop                                 ', N'79d84495ca776ccb523114a2120e273ca80b315b                                                            ', N'[功能说明]
												 <span>本接口主要用于 <i>XX</i> 信息的查询.</span>
												 [主要参数]
												<ol>
													<li>uid:UserID</li>
													<li>
														 M:0.默认所有数据;1.输出列名;<br>2.预览模式;3.DataTables数据格式；
													</li>
												</ol>', N'c2VsZWN0ICogZnJvbSB0YmxfbWVudV9kZXRhaWwgV0hFUkUgaGlkZT0wIGFuZCAodXNlcl9pZCA9IDE1IG9yIHVzZXJfaWQ9PykgT1JERVIgQlkgSUQ=', N'uid', N'1', N'http://localhost/DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=46&M=3', N'2016-02-03 15:48:00.000')
GO
GO
INSERT INTO [dbo].[tblDataInterface] ([ID], [ApiID], [ApiName], [AuthorName], [Token], [ApiDesc], [strSQL], [Params], [DBID], [URL], [CreateDate]) VALUES (N'6', N'3', N'部门列表                                    ', N'develop                                 ', N'79d84495ca776ccb523114a2120e273ca80b315b                                                            ', N'<p>[功能说明]</p>
												 <p style="text-indent:2em;">本接口主要用于 <i>XX</i> 信息的查询.</p>
												 <p>[主要参数]</p>
												<ol>
													<li>
														 tstart:开始时间；
													</li>
													<li>
														 tend:结束时间；
													</li>
													<li>
														 M:0.默认所有数据;1.输出列名;<br>2.预览模式;3.DataTables数据格式；
													</li>
												</ol>', N'U0VMRUNUIGEuRHB0SUQsYS5EZXBhcnRNZW50TmFtZSBGUk9NIGRiby50YmxEZXBhcnRNZW50IEFTIGEgT3JkZXIgYnkgZHB0SUQ=', N'', N'1', N'http://10.8.2.133:70/DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=163&M=3', N'2016-05-16 13:52:00.000')
GO
GO
INSERT INTO [dbo].[tblDataInterface] ([ID], [ApiID], [ApiName], [AuthorName], [Token], [ApiDesc], [strSQL], [Params], [DBID], [URL], [CreateDate]) VALUES (N'7', N'2', N'用户信息读取                                  ', N'develop                                 ', N'79d84495ca776ccb523114a2120e273ca80b315b                                                            ', N'[功能说明]<p style="text-indent:2em;">本接口主要用于 <i>XX</i> 信息的查询.</p>[主要参数]<ul><li>TimeStart:开始时间；</li><li> TimeEnd:开始时间；</li><li> Cols:1/0,默认为空，设为1时返回查询语句的列用于表格初始化等操作；</li></ul>', N'U0VMRUNUIGEuRnVsbE5hbWUsYi5EcHRJRCxiLkRlcGFydE1lbnROYW1lLGEuUGhvbmUsYS5FbWFpbCBGUk9NIGRiby50YmxVc2VyIEFTIGEgSU5ORVIgSk9JTiBkYm8udGJsRGVwYXJ0TWVudCBBUyBiIE9OIGIuRHB0SUQgPSBhLkRlcGFydE1lbnQgd2hlcmUgdXNlcm5hbWU9Pw==', N'u', N'1', N'http://10.8.2.133:70/DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=164&M=3', N'2016-05-16 13:52:00.000')
GO
GO
INSERT INTO [dbo].[tblDataInterface] ([ID], [ApiID], [ApiName], [AuthorName], [Token], [ApiDesc], [strSQL], [Params], [DBID], [URL], [CreateDate]) VALUES (N'8', N'4', N'密码校验                                    ', N'develop                                 ', N'79d84495ca776ccb523114a2120e273ca80b315b                                                            ', N'[功能说明]<p style="text-indent:2em;">本接口主要用于 <i>XX</i> 信息的查询.</p>[主要参数]<ul><li>TimeStart:开始时间；</li><li> TimeEnd:开始时间；</li><li> Cols:1/0,默认为空，设为1时返回查询语句的列用于表格初始化等操作；</li></ul>', N'U0VMRUNUIGEuSUQgRlJPTSBkYm8udGJsVXNlciBBUyBhIHdoZXJlIGEuSUQgPSA/IGFuZCBVc2VyUGFzc3dvcmQ9Pw==', N'uid,psw', N'1', N'http://10.8.2.133:70/DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=164&M=3', N'2016-05-16 13:52:00.000')
GO
GO
INSERT INTO [dbo].[tblDataInterface] ([ID], [ApiID], [ApiName], [AuthorName], [Token], [ApiDesc], [strSQL], [Params], [DBID], [URL], [CreateDate]) VALUES (N'9', N'8', N'产品列表                                    ', N'develop                                 ', N'79d84495ca776ccb523114a2120e273ca80b315b                                                            ', N'[功能说明]<p style="text-indent:2em;">本接口主要用于 <i>XX</i> 信息的查询.</p>[主要参数]<ul><li>TimeStart:开始时间；</li><li> TimeEnd:开始时间；</li><li> Cols:1/0,默认为空，设为1时返回查询语句的列用于表格初始化等操作；</li></ul>', N'U0VMRUNUIFByb2R1Y3RJRCxQcm9kdWN0TmFtZSBGUk9NIFByb2R1Y3REYXRhIE9SREVSIEJZIDE=', N' ', N'1', N'http://10.8.2.133:70/DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=164&M=3', N'2016-05-16 13:52:00.000')
GO
GO
SET IDENTITY_INSERT [dbo].[tblDataInterface] OFF
GO

-- ----------------------------
-- Table structure for tblDepartMent
-- ----------------------------
DROP TABLE [dbo].[tblDepartMent]
GO
CREATE TABLE [dbo].[tblDepartMent] (
[ID] int NOT NULL IDENTITY(1,1) ,
[DptID] int NULL ,
[DepartMentName] char(20) NULL ,
[SortName] nchar(10) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblDepartMent]', RESEED, 12)
GO

-- ----------------------------
-- Records of tblDepartMent
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblDepartMent] ON
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'1', N'1', N'技术质量部          ', N'JZ        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'2', N'2', N'生产管理部          ', N'SC        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'3', N'3', N'企管规划部          ', N'QG        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'4', N'4', N'钞纸制作部          ', N'CZ        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'5', N'5', N'钞纸成品制作部      ', N'CP        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'6', N'6', N'胶凹制作部          ', N'JW        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'7', N'7', N'印码制作部          ', N'YM        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'8', N'8', N'检封制作部          ', N'JF        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'9', N'9', N'数字管理部          ', N'SG        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'10', N'10', N'经理部              ', N'JLB       ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'11', N'11', N'其它                ', N'QT        ')
GO
GO
INSERT INTO [dbo].[tblDepartMent] ([ID], [DptID], [DepartMentName], [SortName]) VALUES (N'12', N'0', N'所在部门            ', null)
GO
GO
SET IDENTITY_INSERT [dbo].[tblDepartMent] OFF
GO

-- ----------------------------
-- Table structure for tblSettings_Select_List
-- ----------------------------
DROP TABLE [dbo].[tblSettings_Select_List]
GO
CREATE TABLE [dbo].[tblSettings_Select_List] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Value] int NULL ,
[Name] nchar(20) NULL ,
[apiURL] varchar(100) NULL ,
[tblID] int NULL 
)


GO

-- ----------------------------
-- Records of tblSettings_Select_List
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblSettings_Select_List] ON
GO
INSERT INTO [dbo].[tblSettings_Select_List] ([ID], [Value], [Name], [apiURL], [tblID]) VALUES (N'1', N'0', N'下拉选择框列表             ', N'DataInterface/Api?Token=79d84495ca776ccb523114a2120e273ca80b315b&ID=1&M=3&t=1', N'31')
GO
GO
SET IDENTITY_INSERT [dbo].[tblSettings_Select_List] OFF
GO

-- ----------------------------
-- Table structure for tblUser
-- ----------------------------
DROP TABLE [dbo].[tblUser]
GO
CREATE TABLE [dbo].[tblUser] (
[ID] int NOT NULL IDENTITY(1,1) ,
[UserName] nchar(10) NULL ,
[UserPassword] nvarchar(100) NULL ,
[UserRole] int NULL ,
[FullName] nchar(10) NULL ,
[Email] nvarchar(50) NULL ,
[Phone] nvarchar(50) NULL ,
[DepartMent] nchar(10) NULL ,
[regIPAdress] nvarchar(50) NULL ,
[regTime] datetime NULL ,
[CurIPAdress] nvarchar(50) NULL ,
[CurTime] datetime NULL ,
[GroupID] int NULL ,
[default_menu_id] int NULL DEFAULT ((0)) ,
[set_avatar] int NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblUser]', RESEED, 15)
GO

-- ----------------------------
-- Records of tblUser
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblUser] ON
GO
INSERT INTO [dbo].[tblUser] ([ID], [UserName], [UserPassword], [UserRole], [FullName], [Email], [Phone], [DepartMent], [regIPAdress], [regTime], [CurIPAdress], [CurTime], [GroupID], [default_menu_id], [set_avatar]) VALUES (N'15', N'develop   ', N'96e79218965eb72c92a549dd5a330112', N'9', N'开发者帐户     ', N'realeve@qq.com', N'6129', N'1         ', N'10.8.18.66', N'2015-12-29 11:33:52.000', null, null, N'2', N'2', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO

-- ----------------------------
-- Indexes structure for table tbl_menu_detail
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_menu_detail
-- ----------------------------
ALTER TABLE [dbo].[tbl_menu_detail] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table tbl_menu_list
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tbl_menu_list
-- ----------------------------
ALTER TABLE [dbo].[tbl_menu_list] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table tbl_menu_list
-- ----------------------------
ALTER TABLE [dbo].[tbl_menu_list] ADD UNIQUE ([id] ASC)
GO
