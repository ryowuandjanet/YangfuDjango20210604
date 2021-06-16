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
  # ObjectBuild
  path('yfcase/<int:yfcase_id>/objectbuild/create/',objectbuild_create,name="objectbuild_create" ),
  path('yfcase/<int:yfcase_id>/objectbuild/update/<int:id>/',objectbuild_update,name="objectbuild_update" ),
  path('yfcase/<int:yfcase_id>/objectbuild/delete/<int:id>/',objectbuild_delete,name="objectbuild_delete" ),
  # ScoreA
  path('yfcase/<int:yfcase_id>/scorea/update/<int:id>/',score_a_adj,name="score_a_update" ),
  path('yfcase/<int:yfcase_id>/scorea/delete/<int:id>/',score_a_clean,name="score_a_delete" ),
  # ScoreB
  path('yfcase/<int:yfcase_id>/scoreb/update/<int:id>/',score_b_adj,name="score_b_update" ),
  path('yfcase/<int:yfcase_id>/scoreb/delete/<int:id>/',score_b_clean,name="score_b_delete" ),
  # ScoreC
  path('yfcase/<int:yfcase_id>/scorec/update/<int:id>/',score_c_adj,name="score_c_update" ),
  path('yfcase/<int:yfcase_id>/scorec/delete/<int:id>/',score_c_clean,name="score_c_delete" ),
  # FinalDecision
  path('yfcase/<int:yfcase_id>/regionalhead/create/',regionalhead_create,name="regionalhead_create" ),
  path('yfcase/<int:yfcase_id>/regionalhead/update/<int:id>/',regionalhead_update,name="regionalhead_update" ),
  path('yfcase/<int:yfcase_id>/regionalhead/delete/<int:id>/',regionalhead_delete,name="regionalhead_delete" ),
  # FinalDecision(First)
  path('yfcase/<int:yfcase_id>/regionalheadfirst/create/',regionalhead_first_create,name="regionalhead_first_create" ),
  path('yfcase/<int:yfcase_id>/regionalheadfirst/update/<int:id>/',regionalhead_first_update,name="regionalhead_first_update" ),
  path('yfcase/<int:yfcase_id>/regionalheadfirst/delete/<int:id>/',regionalhead_first_delete,name="regionalhead_first_delete" ),

  path('ajax/load-townships/', load_townships, name='ajax_load_townships'),
]
