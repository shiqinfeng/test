import pymysql,xlwt
import pymssql
def export_excel(table_name):
    connect=pymssql.connect('47.98.107.150','MESPDB','Seedoo123','MESPDB') #服务器名,账户,密码,数据库名
    if connect:
        print("连接成功!")

    cursor=connect.cursor()   #创建一个游标对象,python里的sql语句都要通过cursor来执行
    sql = "select  *from  User_uv"
    cursor.execute(sql)  # 执行mysql
    fileds = [filed[0] for filed in cursor.description]  # 列表生成式，所有字段
    all_data = cursor.fetchall() #所有数据
    #写excel
    book = xlwt.Workbook() #先创建一个book
    sheet = book.add_sheet('sheet1') #创建一个sheet表

    for col, field in enumerate(fileds): #跟上面的代码功能一样
        sheet.write(0, col, field)
    #从第一行开始写
    row = 1 #行数
    for data in all_data:  #二维数据，有多少条数据，控制行数
        for col, field in enumerate(data):  #控制列数
            sheet.write(row, col, field)
        row += 1 #每次写完一行，行数加1
    book.save(r'C:/Users/Administrator/Desktop/%s.xls' %table_name) #保存excel文件

if __name__=='__main__':
    export_excel('User')
