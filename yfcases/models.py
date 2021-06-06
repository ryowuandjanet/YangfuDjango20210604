from django.db import models

# =======縣市=======
class City(models.Model):
  name = models.CharField(max_length=30)

  def __str__(self):
    return self.name

  class Meta:
    # managed = True
    db_table = 'yfcase_city'

# =======鄉鎮=======
class Township(models.Model):
  city = models.ForeignKey(City, on_delete=models.CASCADE)
  name = models.CharField(max_length=30)

  def __str__(self):
    return self.name
 
  class Meta:
    # managed = True
    db_table = 'yfcase_township'

class Yfcase(models.Model):
  yfcaseCaseNumber=models.CharField(u'案號(*)',max_length=100)
  yfcaseCompany=models.CharField(u'所屬公司',max_length=50,null=True,blank=True)
  yfcaseCity=models.ForeignKey(City,verbose_name = u'縣市',on_delete=models.SET_NULL,null=True)
  yfcaseTownship=models.ForeignKey(Township,verbose_name = u'鄉鎮區里', on_delete=models.SET_NULL, null=True)
  yfcaseBigSection=models.CharField(u'段號',max_length=10,null=True,blank=True)
  yfcaseSmallSection=models.CharField(u'小段',max_length=10,null=True,blank=True)
  yfcaseVillage=models.CharField(u'村里',max_length=100,null=True,blank=True)
  yfcaseNeighbor=models.CharField(u'鄰',max_length=100,null=True,blank=True)
  yfcaseStreet=models.CharField(u'街路',max_length=100,null=True,blank=True)
  yfcaseSection=models.CharField(u'段',max_length=100,null=True,blank=True)
  yfcaseLane=models.CharField(u'巷',max_length=100,null=True,blank=True)
  yfcaseAlley=models.CharField(u'弄',max_length=100,null=True,blank=True)
  yfcaseNumber=models.CharField(u'號',max_length=100,null=True,blank=True)
  yfcaseFloor=models.CharField(u'樓(含之幾)',max_length=100,null=True,blank=True)
  yfcaseDebtor=models.CharField(u'債務人',max_length=10,null=True,blank=True)
  yfcaseCreditor=models.CharField(u'債權人',max_length=10,null=True,blank=True)
  user = models.ForeignKey('users.CustomUser',verbose_name = u'區域負責人', on_delete=models.CASCADE)

  def __str__(self):
    return self.yfcaseCaseNumber
    
  class Meta:
    # managed = True
    db_table = 'yfcase_yfcase'


  def __str__(self):
    return self.yfcaseCaseNumber

  def fullAddress(self):
    # 變數名稱 = 自身欄名 判定自身欄名為None就空白，要不然返回自身的變數
    city = self.yfcaseCity if self.yfcaseCity is not None else ""
    township = self.yfcaseTownship if self.yfcaseTownship is not None else ""
    bigSection = self.yfcaseBigSection if self.yfcaseBigSection is not None else ""
    smallSection = self.yfcaseSmallSection if self.yfcaseSmallSection is not None else ""
    village = self.yfcaseVillage if self.yfcaseVillage is not None else ""
    neighbor = self.yfcaseNeighbor if self.yfcaseNeighbor is not None else ""
    street = self.yfcaseStreet if self.yfcaseStreet is not None else ""
    section = self.yfcaseSection if self.yfcaseSection is not None else ""
    lane = self.yfcaseLane if self.yfcaseLane is not None else ""
    alley = self.yfcaseAlley if self.yfcaseAlley is not None else ""
    number = self.yfcaseNumber if self.yfcaseNumber is not None else ""
    floor = self.yfcaseFloor if self.yfcaseFloor is not None else ""
    # 將各個欄位合併
    result = str(city)+str(township)+str(village)+str(neighbor)+str(street)+str(section)+str(lane)+str(alley)+str(number)+str(floor)
    return result

