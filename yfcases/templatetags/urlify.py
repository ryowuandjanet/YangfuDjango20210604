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
  else:
    return mark_safe( "<div style='font-size: 16pt; height: 37px; line-height: 30px; color: red;'>" + str(value) +  "</div>")


# 判定scoreItem是否存在，是：scoreItem連同scoreValue一起出現，否：不顯示(同於參考物件評分)
# 用法 {% isItem scoreItem scoreValue %}
@register.simple_tag(name='isItem')
def isItem(item, value):
  if item == None :
    return ""
  else:
    if value >= 0:
      return mark_safe( "<div style='color: blue;text-align: left;'>&#10148" + "(+" + str(value) + ")" + item+ "</div>")
    elif value < 0:
      return mark_safe( "<div style='color: red;text-align: left;'>&#10148" + "(" + str(value) + ")" + item + "</div>")
    else:
      return ""