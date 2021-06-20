from urllib.parse import quote
from decimal import *
from django import template
from datetime import datetime
from django.utils.safestring import mark_safe
 
register=template.Library()
 
# 平方公尺 * 0.3025 = 坪
# 使用方式 value|m2toping
@register.filter
def m2toping(value):
  newlist=[]
  try:
    return value * Decimal(float(0.3025))
  except:
    newlist.append(0)

# 將兩個數相乘
# 使用方式 value|multiplication:100
@register.filter
def multiplication(value, arg):
  newlist=[]
  try:
    return value * arg
  except:
    newlist.append(0)

# 將兩個數相除
# 使用方式 value|divide:10
@register.filter
def divide(value, arg):
  try:
    return int(value) / int(arg)
  except (ValueError, ZeroDivisionError):
    return None

# 判斷是否為兩週內 
# 使用方式 auctionDate|less_two_week:"1拍"
@register.filter
def less_two_week(auctionDate,auctionStr):
  # 取得目前的日期，要用from datetime import datetime,不可用import datetime
  today = datetime.now()
  # 修改對應日期的格式
  auctionDateValue = datetime.strptime(auctionDate,'%Y-%m-%d')
  DateValue = (auctionDateValue-today).days + 1
  if DateValue >= 0 and DateValue <= 14 :
    return auctionStr + "(" + str(DateValue) + "天後)"
    
    
# 計算轄區字數是否超過3個字元(例如：雙北桃竹苗)
# 用法 {{ finaldecision.subSigntrueWorkAreaA|isWordCountOverFour }}
@register.filter
def isWordCountOverFour(value):
  if len(value) >= 4 :
    return mark_safe( "<div style='font-size: 11pt; height: 37px; line-height: 30px; color: red;'>" + str(value) +  "</div>")
