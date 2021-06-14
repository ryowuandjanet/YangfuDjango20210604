from urllib.parse import quote
from decimal import *
from django import template
 
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