from django import forms
from .models import *
from users.models import *

COMPANY_LIST = [
  ("",""),
  ("揚富開發有限公司","揚富開發有限公司"),
  ("鉅鈦開發有限公司","鉅鈦開發有限公司"),
]

BUILD_TYPE_USE= [
  ("",""),
  ("公設","公設"),
  ("公寓-5樓含以下無電梯","公寓-5樓含以下無電梯"),
  ("透天厝","透天厝"),
  ("店面-店舖","店面-店舖"),
  ("辦公商業大樓","辦公商業大樓"),
  ("住宅大樓-11層含以上有電梯","住宅大樓-11層含以上有電梯"),
  ("華廈-10層含以下有電梯","華廈-10層含以下有電梯"),
  ("套房","套房"),
  ("增建-持分後坪數打對折","增建-持分後坪數打對折")
]

AREA_LIST = [
  ("",""),
  ("第一種住宅區","第一種住宅區"),
  ("第二種住宅區","第二種住宅區"),
  ("第三種住宅區","第三種住宅區"),
  ("第四種住宅區","第四種住宅區"),
  ("第一種商業區","第一種商業區"),
  ("第二種商業區","第二種商業區"),
  ("第三種商業區","第三種商業區"),
  ("第四種商業區","第四種商業區"),
  ("第二種工業區","第二種工業區"),
  ("第三種工業區","第三種工業區"),
  ("行政區","行政區"),
  ("文教區","文教區"),
  ("倉庫區","倉庫區"),
  ("風景區","風景區"),
  ("農業區","農業區"),
  ("保護區","保護區"),
  ("行水區","行水區"),
  ("保存區","保存區"),
  ("特定專用區","特定專用區")
]

STATUS_LIST= (
  ("",""),
  ("自訂","自訂"),
  ("仲介","仲介"),
)

JUDGMENT_LIST=[
  ("未判定","未判定"),
  ("1拍進場","1拍進場"),
  ("2拍進場","2拍進場"),
  ("3拍進場","3拍進場"),
  ("4拍進場","4拍進場"),
  ("放棄","放棄")
]

BIDAUCTION_LIST=[
  ("",""),
  ("1拍","1拍"),
  ("2拍","2拍"),
  ("3拍","3拍"),
  ("4拍","4拍")
]

ACTIONRESULT_CHOICES = [
  ("",""),
  ("撤回","撤回"),
  ("第三人搶標","第三人搶標"),
  ("等待優購","等待優購"),
  ("遭優購","遭優購"),
  ("無人優購","無人優購")
]

CASESTATUS_CHOICES = [
  ("在途","在途"),
  ("結案","結案"),
]

class YfcaseForm(forms.ModelForm):
  # 多加了widget=forms.Select(attrs={'class': 'form-select'})是要欄位在右側出現了向下的箭頭所設定
  yfcaseCompany = forms.ChoiceField(label="所屬公司",choices=COMPANY_LIST, widget=forms.Select(attrs={'class': 'form-select'}),required=False)
  yfcaseCaseStatus = forms.ChoiceField(label="案件狀態",choices=CASESTATUS_CHOICES, required=False)
  class Meta:
    model=Yfcase
    # fields =['yfcaseCaseNumber','user'] 
    fields =['yfcaseCaseNumber','yfcaseCompany','yfcaseCity','yfcaseTownship','yfcaseBigSection','yfcaseSmallSection',"yfcaseVillage","yfcaseNeighbor","yfcaseStreet","yfcaseSection","yfcaseLane","yfcaseAlley","yfcaseNumber","yfcaseFloor",'yfcaseDebtor','yfcaseCreditor','yfcaseCreditorMobilePhone','yfcaseCityWithTownship','yfcaseCaseStatus','user'] 
    

    def __init__(self, *args, **kwargs):
      super().__init__(*args, **kwargs)
      self.fields['yfcaseTownship'].queryset = Township.objects.none()
      
      if 'city' in self.data:
        try:
          city_id = int(self.data.get('city'))
          self.fields['yfcaseTownship'].queryset = Township.objects.filter(city_id=city_id).order_by('name')
        except (ValueError, TypeError):
          pass  # invalid input from the client; ignore and fallback to empty City queryset
      elif self.instance.pk:
        self.fields['yfcaseTownship'].queryset = self.instance.city.city_set.order_by('name')

class LandForm(forms.ModelForm):
  yfcase = forms.ModelChoiceField(Yfcase.objects.all(), widget=forms.HiddenInput())
  class Meta:
    model=Land
    fields =['yfcase','landNumber','landUrl','landArea','landHoldingPointPersonal','landHoldingPointAll'] 

class BuildForm(forms.ModelForm):
  yfcase = forms.ModelChoiceField(Yfcase.objects.all(), widget=forms.HiddenInput())
  buildTypeUse = forms.ChoiceField(label="建物型",choices=BUILD_TYPE_USE, required=False)
  buildUsePartition = forms.ChoiceField(label="使用分區",choices=AREA_LIST, required=False)
  class Meta:
    model=Build
    fields ='__all__'

class AuctionForm(forms.ModelForm):
  yfcase = forms.ModelChoiceField(Yfcase.objects.all(), widget=forms.HiddenInput())
  auctionDateFirst = forms.CharField(label="拍賣日(第一拍)",widget=forms.TextInput(attrs={'class': 'form-control datepicker'}),required=False)
  auctionDateSecond = forms.CharField(label="拍賣日(第二拍)",widget=forms.TextInput(attrs={'class': 'form-control datepicker'}),required=False)
  auctionDateThird = forms.CharField(label="拍賣日(第三拍)",widget=forms.TextInput(attrs={'class': 'form-control datepicker'}),required=False)
  auctionDateFourth = forms.CharField(label="拍賣日(第四拍)",widget=forms.TextInput(attrs={'class': 'form-control datepicker'}),required=False)

  class Meta:
    model=Auction
    fields ='__all__' 

  def __init__(self, *args, **kwargs):
    super().__init__(*args, **kwargs)

class SurveyForm(forms.ModelForm):
  yfcase = forms.ModelChoiceField(Yfcase.objects.all(), widget=forms.HiddenInput())
  surveyFirstDay = forms.CharField(label="初勘日",widget=forms.TextInput(attrs={'class': 'form-control datepicker'}),required=False)
  surveySecondDay = forms.CharField(label="會勘日",widget=forms.TextInput(attrs={'class': 'form-control datepicker'}),required=False)
  class Meta:
    model=Survey
    fields =['yfcase','surveyFirstDay','surveySecondDay','surveyForeclosureAnnouncementLink','survey988Link','surveyObjectPhotoLink','surveyForeclosureRecordLink','surveyObjectViewLink'] 

  def __init__(self, *args, **kwargs):
    super().__init__(*args, **kwargs)

class ObjectBuildForm(forms.ModelForm):
  yfcase = forms.ModelChoiceField(Yfcase.objects.all(), widget=forms.HiddenInput())
  objectBuildStatus = forms.ChoiceField(label="狀態",choices=STATUS_LIST, required=False)
  objectBuildTransactionDate = forms.CharField(label="成交日期",widget=forms.TextInput(attrs={'class': 'form-control datepicker'}),required=False)
  class Meta:
    model=ObjectBuild
    fields =['yfcase','objectBuildAddress','objectBuildTotalPrice','objectBuildBuildArea','objectBuildHouseAge','objectBuildFloorHeight','objectBuildStatus','objectBuildTransactionDate','objectBuildUrl']

  def __init__(self, *args, **kwargs):
    super().__init__(*args, **kwargs)

# ======= ScoreAForm =======
class ScoreAForm(forms.ModelForm):
  class Meta:
    model=ObjectBuild
    fields =['objectBuildScorerA','objectBuildScorRateA','objectBuildScorReasonA','plusItemA1','plusItemA2','plusItemA3','plusItemA4','plusItemA5','plusItemOtherA','plusValueA1','plusValueA2','plusValueA3','plusValueA4','plusValueA5','plusValueOtherA']

  def __init__(self, *args, **kwargs):
    super().__init__(*args, **kwargs)

# ======= ScoreBForm =======
class ScoreBForm(forms.ModelForm):
  class Meta:
    model=ObjectBuild
    fields =['objectBuildScorerB','objectBuildScorRateB','objectBuildScorReasonB','plusItemB1','plusItemB2','plusItemB3','plusItemB4','plusItemB5','plusItemOtherB','plusValueB1','plusValueB2','plusValueB3','plusValueB4','plusValueB5','plusValueOtherB']

  def __init__(self, *args, **kwargs):
    super().__init__(*args, **kwargs)

# ======= ScoreCForm =======
class ScoreCForm(forms.ModelForm):
  class Meta:
    model=ObjectBuild
    fields =['objectBuildScorerC','objectBuildScorRateC','objectBuildScorReasonC','plusItemC1','plusItemC2','plusItemC3','plusItemC4','plusItemC5','plusItemOtherC','plusValueC1','plusValueC2','plusValueC3','plusValueC4','plusValueC5','plusValueOtherC']

  def __init__(self, *args, **kwargs):
    super().__init__(*args, **kwargs)
    
# ======= FinalDecisionForm(regionalHead) =======
class FinalDecisionForm(forms.ModelForm):
  yfcase = forms.ModelChoiceField(Yfcase.objects.all(), widget=forms.HiddenInput())
  regionalHead = forms.CharField(widget=forms.HiddenInput())
  finalDecision = forms.ChoiceField(label="最終判定",choices=JUDGMENT_LIST, required=False)
  regionalHeadDate = forms.CharField(label="簽核日期",widget=forms.TextInput(attrs={'class': 'form-control datepicker'}),required=False)
  # regionalHead = forms.ModelChoiceField(CustomUser.objects.all(), widget=forms.HiddenInput())
  class Meta:
    model=FinalDecision
    fields = ['yfcase','finalDecision','finalDecisionRemark','regionalHead','regionalHeadDate','regionalHeadWorkArea']

  def __init__(self, *args, **kwargs):
    super().__init__(*args, **kwargs)

# ======= FinalDecisionForm(SubSigntrueA) =======
class SubSigntrueAForm(forms.ModelForm):
  class Meta:
    model=FinalDecision
    fields =['subSigntrueA','subSigntrueDateA','subSigntrueWorkAreaA']

  def __init__(self, *args, **kwargs):
    super().__init__(*args, **kwargs)

# ======= FinalDecisionForm(SubSigntrueB) =======
class SubSigntrueBForm(forms.ModelForm):
  class Meta:
    model=FinalDecision
    fields =['subSigntrueB','subSigntrueDateB','subSigntrueWorkAreaB']

  def __init__(self, *args, **kwargs):
    super().__init__(*args, **kwargs)

# ======= Result =======
class ResultForm(forms.ModelForm):
  yfcase = forms.ModelChoiceField(Yfcase.objects.all(), widget=forms.HiddenInput())
  bidAuctionTime = forms.ChoiceField(label="搶標拍別",choices=BIDAUCTION_LIST, required=False)
  actionResult = forms.ChoiceField(label="執行結果",choices=ACTIONRESULT_CHOICES, required=False)
  caseStatus = forms.ChoiceField(label="執行結果",choices=CASESTATUS_CHOICES, required=False)
  class Meta:
    model=Result
    fields =['yfcase', 'stopBuyDate', 'actionResult', 'bidAuctionTime', 'bidMoney', 'objectNumber']
    # fields =['yfcase', 'stopBuyDate', 'withdraw', 'bidAuctionTime', 'bidMoney', 'waitBuy', 'otherBuy', 'noOneBuy', 'objectNumber']

  # def __init__(self, *args, **kwargs):
  #   super(ResultForm, self).__init__(*args, **kwargs)
  #   # assign a (computed, I assume) default value to the choice field
  #   self.initial['caseStatus'] = '在途'