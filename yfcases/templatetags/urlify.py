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


