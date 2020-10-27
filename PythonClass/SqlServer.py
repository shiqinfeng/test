import pymssql
import xlwt
wb = xlwt.Workbook()
ws = wb.add_sheet('test')
connect = pymssql.connect('47.98.107.150', 'MESPDB', 'Seedoo123', 'MESPDB') #服务器名,账户,密码,数据库名
if connect:
    print("连接成功!")

cursor=connect.cursor()   #创建一个游标对象,python里的sql语句都要通过cursor来执行
sql="select*from  Route "
cursor.execute(sql)   #执行sql语句
row=cursor.fetchone()  #读取查询结果,
while row:              #循环读取所有结果
    print("plan_number_S=%s, order_number_s=%s"%(row[0],row[1]))   #输出结果
    # print(row)   #输出结果
    row=cursor.fetchone()

cursor.close()
connect.close()

wb.save('.test.xls')