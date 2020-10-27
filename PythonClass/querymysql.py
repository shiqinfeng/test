# *===================================*

# * Created by Zhihua_w.

# * Author: Wei ZhiHua

# * Date: 2017/1/10 0005

# * Time: 下午 2:39

# * Project: PYTHON STUDY

# * Power: DATABASE
# *===================================*

import pymysql

# 打开数据库连接（ip/数据库用户名/登录密码/数据库名）

db=pymysql.connect("localhost","root","root","ecommerce")

# 使用 cursor() 方法创建一个游标对象 cursor

cursor=db.cursor()

# SQL 查询语句

sql="SELECT *FROM `employer`  where  1=1  Order by id desc"

try:

    # 执行SQL语句

    cursor.execute(sql)

    # 获取所有记录列表

    results=cursor.fetchall()

    for row in results:
        id=row[0]

        name=row[1]

        # 打印结果

        print("id=%s,name=%s"%\
\
              (id,name))

except:
    print("Error: unable to fecth data")

# 关闭数据库连接

db.close()
