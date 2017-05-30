# apiCenter

---

# 1.init

 新建数据库（名称API），初始化sql/api.sql语句

# 2.配置相关

 ## 自定义数据库连接配置
 application/config/database.php, 其中 sqlsvr表示  api数据库，userdata表示用户业务数据
 
 ## api数据库列表
 localhost/api 中数据库列表在对应  api.js文件中设置
 
# 3.路由

/settings/menu  配置菜单
/api 配置数据接口
/table?tid=yourApiId 报表
/chart?tid=yourApiId&type= 图表
 