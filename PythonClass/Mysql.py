import pymysql

conn = pymysql.connect("localhost","root","root","ecommerce")

# -- 使用 cursor() 方法创建游标，用于执行sql语句并获得结果
cursor = conn.cursor()

# -- 使用 execute()  方法执行 SQL 查询
cursor.execute("SELECT VERSION()")

# -- 关闭连接
conn.close()
print(conn)