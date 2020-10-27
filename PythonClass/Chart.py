import pyodbc

import pandas as pd

import numpy as np
import plotly.graph_objs as pg
import plotly
import matplotlib.pyplot as plt

#%matplotlib inline #使图片内嵌交互环境显示

plt.rcParams['font.sans-serif']=['SimHei'] #用来正常显示中文标签

plt.rcParams['axes.unicode_minus']=False #用来正常显示负号

connect=pyodbc.connect('DRIVER={SQL Server};SERVER=47.98.107.150;DATABASE=MESPDB;UID=MESPDB;PWD=Seedoo123')

cursor=connect.cursor()   #创建一个游标对象,python里的sql语句都要通过cursor来执行
sql= "select  last_opname_S as CoundDate, count(last_opname_S) as RegNums, 1 from  AT_OM_OrderRouteStep where 1=1  group by  last_opname_S "
cursor.execute(sql)
rows = cursor.fetchall()
print(rows)
lists = [[],[],[]]
for row in rows:

        lists[0].append(row[0])

        lists[1].append(row[1])

        # lists[2].append(row[2])

date_price=pg.Bar(x=lists[0],y=lists[0],name='工艺类型')

date_quantity=pg.Bar(x=lists[0],y=lists[1],name='统计')

# date_amount=pg.Bar(x=lists[0],y=lists[2],name='总价')

data=[date_quantity]

#barmode = [stack,group,overlay,relative]

layout=pg.Layout(barmode='group',title="产品工艺占比")

fig=pg.Figure(data=data,layout=layout)


plotly.offline.plot(fig,filename="C:/Users/Administrator/Desktop/test.html")

