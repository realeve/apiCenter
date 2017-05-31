CREATE DATABASE [api]
ON PRIMARY
(NAME = N'api',
FILENAME = N'D:\DATA\api.ndf',
SIZE = 2304KB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 1024KB)
LOG ON
(NAME = N'api_log',
FILENAME = N'D:\DATA\api_log.ldf',
SIZE = 768KB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 10%)
COLLATE Chinese_PRC_CI_AS

GO

