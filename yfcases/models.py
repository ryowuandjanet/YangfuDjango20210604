from django.db import models
from django.urls import reverse

# ======= 縣市 =======
class City(models.Model):
  name = models.CharField(max_length=30)

  def __str__(self):
    return self.name

  class Meta:
    # managed = True
    db_table = 'yfcase_city'

# ======= 鄉鎮 =======
class Township(models.Model):
  city = models.ForeignKey(City, on_delete=models.CASCADE)
  name = models.CharField(max_length=30)

  def __str__(self):
    return self.name
 
  class Meta:
    # managed = True
    db_table = 'yfcase_township'

# ======= Yfcase =======
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

  # 在編輯Land設定
  # 得到所有地號面積的總和
  def get_land_holding_point_area_total(self):
    newlist=[]
    try:
      landTotal = 0
      for land_item in self.lands.exclude(landHoldingPointAll=0):
        landTotal += land_item.landArea * land_item.landHoldingPointPersonal / land_item.landHoldingPointAll
      return landTotal
    except:
      newlist.append(0)

  # 在編輯Build設定
  # 第一筆建物(非公設、非增建)各別面積
  def get_build_first_not_add_and_not_public_area(self):
    return self.builds.exclude(buildTypeUse="增建-持分後坪數打對折").exclude(buildTypeUse="公設").first().get_build_holding_point_area()

  # 取得第一筆非公設、非增建的持分比
  def get_first_not_add_and_not_public_holding_point_rate(self):
    try:
      if self.builds.exclude(buildTypeUse="增建-持分後坪數打對折").exclude(buildTypeUse="公設").first():
        getFirstNotAddAndNotPublicHoldingPointPersonnal = self.builds.exclude(buildTypeUse="增建-持分後坪數打對折").exclude(buildTypeUse="公設").first().buildHoldingPointPersonal
        getFirstNotAddAndNotPublicHoldingPointAll = self.builds.exclude(buildTypeUse="增建-持分後坪數打對折").exclude(buildTypeUse="公設").first().buildHoldingPointAll
        return getFirstNotAddAndNotPublicHoldingPointPersonnal / getFirstNotAddAndNotPublicHoldingPointAll
    except ZeroDivisionError:
      return 0
      
  # (1)建物(非公設、非增建)持分後總面積
  def get_build_holding_point_area_group_total(self):
    newlist=[]
    try:
      getBuildHoldingPointAreaGroupTotal=0
      for getBuildHoldingPointAreaGroup in self.builds.exclude(buildTypeUse="增建-持分後坪數打對折").exclude(buildTypeUse="公設"):
        getBuildHoldingPointAreaGroupTotal = getBuildHoldingPointAreaGroupTotal + getBuildHoldingPointAreaGroup.get_build_holding_point_area()
      return getBuildHoldingPointAreaGroupTotal
    except:
      newlist.append(0)

  # (2)建物(公設)持分後總面積
  def get_build_holding_point_public_group_total(self):
    getBuildHoldingPointPublicGroupTotal=0
    for getBuildHoldingPointPublicGroup in self.builds.filter(buildTypeUse="公設"):
      getBuildHoldingPointPublicGroupTotal = getBuildHoldingPointPublicGroupTotal + getBuildHoldingPointPublicGroup.get_build_first_not_add_and_not_public_holding_point_area()
    return getBuildHoldingPointPublicGroupTotal

  # (3)建物(增建)持分後總面積
  def get_build_holding_point_add_group_total(self):
    try:
      getBuildHoldingPointAddGroupTotal=0
      for getBuildHoldingPointAddGroup in self.builds.filter(buildTypeUse="增建-持分後坪數打對折"):
        getBuildHoldingPointAddGroupTotal = getBuildHoldingPointAddGroupTotal + getBuildHoldingPointAddGroup.get_after_add_holding_point_area()
      return getBuildHoldingPointAddGroupTotal
    except ZeroDivisionError:
      return 0

  # 上述(1)+(2)+(3)
  def get_build_holding_point_after_group_total(self):
    newlist=[]
    try:
      return self.get_build_holding_point_area_group_total() + self.get_build_holding_point_public_group_total() + self.get_build_holding_point_add_group_total()
    except:
      newlist.append(0)

# ======= Land =======
class Land(models.Model):
  yfcase=models.ForeignKey(Yfcase,related_name='lands',on_delete=models.CASCADE)
  landNumber=models.CharField(u'地號',max_length=100,null=True,blank=True)
  landUrl=models.URLField(u'謄本',max_length=200,null=True,blank=True)
  landArea=models.DecimalField(u'地坪(平方公尺)',default=0,max_digits=10,decimal_places=2,null=True,blank=True)
  landHoldingPointPersonal=models.DecimalField(u'個人持分',default=0,max_digits=8,decimal_places=0,null=True,blank=True)
  landHoldingPointAll=models.DecimalField(u'所有持分',default=0,max_digits=8,decimal_places=0,null=True,blank=True)
  
  def __str__(self):
    return self.landNumber

  def get_land_holding_point_area(self):
    return self.landArea * ( self.landHoldingPointPersonal / self.landHoldingPointAll)

# ======= Build =======
class Build(models.Model):
  yfcase=models.ForeignKey(Yfcase,related_name='builds',on_delete=models.CASCADE)
  buildNumber=models.CharField(u'建號',max_length=100,null=True,blank=True)
  buildUrl=models.URLField(u'謄本',max_length=200,null=True,blank=True)
  buildArea=models.DecimalField(u'建坪(平方公尺)',default=0,max_digits=10,decimal_places=2,null=True,blank=True)
  buildHoldingPointPersonal=models.DecimalField(u'個人持分',default=0,max_digits=8,decimal_places=0,null=True,blank=True)
  buildHoldingPointAll=models.DecimalField(u'所有持分',default=0,max_digits=8,decimal_places=0,null=True,blank=True)
  buildTypeUse=models.CharField(u'建物型',max_length=100,null=True,blank=True)
  buildUsePartition=models.CharField(u'使用分區',max_length=100,null=True,blank=True)

  def __str__(self):
    return self.buildNumber

  # 建物(非公設、非增建)各別面積
  def get_build_holding_point_area(self):
    newlist=[]
    try:
      return self.buildArea * ( self.buildHoldingPointPersonal / self.buildHoldingPointAll)
    except:
      newlist.append(0)

  # 建物(增建)各別面積
  def get_after_add_holding_point_area(self):
    newlist=[]
    try:
      return self.get_build_holding_point_area() / 2
    except:
      newlist.append(0)

  # 建物(公設)各別面積
  def get_build_first_not_add_and_not_public_holding_point_area(self):
    try:
      return self.buildArea * (self.buildHoldingPointPersonal / self.buildHoldingPointAll) * self.yfcase.get_first_not_add_and_not_public_holding_point_rate()
    except ZeroDivisionError:
      return 0

