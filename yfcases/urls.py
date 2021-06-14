from django.urls import path,include
from django.contrib.auth import views as auth_views
from .views import *

app_name='yfcase'

urlpatterns = [
  path('login/',auth_views.LoginView.as_view(template_name='registration/login.html'),name='login'),
  path('',YfcaseListView.as_view(),name="home" ),
  path('yfcase/<int:pk>/',YfcaseDetailView.as_view(),name="yfcase_detail" ),
  path('yfcase/create/',YfcaseCreateView.as_view(),name="yfcase_create" ),
  path('yfcase/<int:pk>/update/',YfcaseUpdateView.as_view(),name="yfcase_update"),
  path('yfcase/<int:pk>/delete/',YfcaseDeleteView.as_view(),name="yfcase_delete"),
  # Land
  path('yfcase/<int:yfcase_id>/land/create/',land_create,name="land_create" ),
  path('yfcase/<int:yfcase_id>/land/update/<int:id>/',land_update,name="land_update" ),
  path('yfcase/<int:yfcase_id>/land/delete/<int:id>/',land_delete,name="land_delete" ),
  # Build
  path('yfcase/<int:yfcase_id>/build/create/',build_create,name="build_create" ),
  path('yfcase/<int:yfcase_id>/build/update/<int:id>/',build_update,name="build_update" ),
  path('yfcase/<int:yfcase_id>/build/delete/<int:id>/',build_delete,name="build_delete" ),
  # Aucion
  path('yfcase/<int:yfcase_id>/auction/create/',auction_create,name="auction_create" ),
  path('yfcase/<int:yfcase_id>/auction/update/<int:id>/',auction_update,name="auction_update" ),
  # Survey
  path('yfcase/<int:yfcase_id>/survey/create/',survey_create,name="survey_create" ),
  path('yfcase/<int:yfcase_id>/survey/update/<int:id>/',survey_update,name="survey_update" ),

  path('ajax/load-townships/', load_townships, name='ajax_load_townships'),
]
