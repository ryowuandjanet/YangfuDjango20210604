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
  path('yfcase/<int:yfcase_id>/land/create/',land_create,name="land_create" ),
  path('yfcase/<int:yfcase_id>/land/update/<int:id>/',land_update,name="land_update" ),
  path('yfcase/<int:yfcase_id>/land/delete/<int:id>/',land_delete,name="land_delete" ),
  path('ajax/load-townships/', load_townships, name='ajax_load_townships'),
]
