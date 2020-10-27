import xlrd

excel_path="C:\\Users\\Administrator\\Desktop\\计划表结构设计V1.xlsx"

#打开文件，获取excel文件的workbook（工作簿）对象

excel=xlrd.open_workbook(excel_path,encoding_override="utf-8")

#获取sheet对象

all_sheet=excel.sheets()

#循环遍历每个sheet对象

sheet_name=[]

sheet_row=[]

sheet_col=[]

for sheet in all_sheet:

 sheet_name.append(sheet.name)

 print("该Excel共有{0}个sheet,当前sheet名称为{1},该sheet共有{2}行,{3}列"

.format(len(all_sheet),sheet.name,sheet.nrows,sheet.ncols))

for each_row in range(sheet.nrows):#循环打印每一行

 print("当前为%s行："%each_row,type(each_row))

 print(sheet.row_values(each_row),type(sheet.row_values(each_row)))

first_row_value=sheet.row_values(0)#打印指定的某一行

print("第一行的数据为:%s"%first_row_value)

