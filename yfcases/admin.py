from django.contrib import admin
from import_export.admin import ImportExportModelAdmin
from .models import *
  
# admin.site.register(Yfcase)
admin.site.register(City)
admin.site.register(Township)
admin.site.register(Land)
admin.site.register(Build)
admin.site.register(FinalDecision)

@admin.register(Yfcase)
class YfcaseAdmin(ImportExportModelAdmin):
  list_display=('yfcaseCaseNumber','yfcaseCompany','yfcaseCity','yfcaseTownship','yfcaseBigSection','yfcaseSmallSection',"yfcaseVillage","yfcaseNeighbor","yfcaseStreet","yfcaseSection","yfcaseLane","yfcaseAlley","yfcaseNumber","yfcaseFloor",'yfcaseDebtor','yfcaseCreditor','yfcaseCreditorMobilePhone','yfcaseCityWithTownship','yfcaseCaseStatus','user')
  pass