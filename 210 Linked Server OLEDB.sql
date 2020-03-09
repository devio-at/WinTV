USE [master]
GO

/****** Object:  LinkedServer [HCWOLE]    Script Date: 09.03.2020 11:13:53 ******/
EXEC master.dbo.sp_addlinkedserver @server = N'HCWOLE', @srvproduct=N'', @provider=N'Microsoft.ACE.OLEDB.12.0', @datasrc=N'D:\data\WinTV\Channel Database\hcwChanDB_5.mdb'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'HCWOLE',@useself=N'False',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL

GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'rpc', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'rpc out', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'HCWOLE', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO


