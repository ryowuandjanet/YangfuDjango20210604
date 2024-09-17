import os
import src.db as db
import subprocess
from pathlib import Path
import subprocess

BASE_DIR = Path(__file__).resolve().parent.parent

SECRET_KEY = 'django-insecure-y!*t1+b=fab-(8$1azdm%4ln=2hdd4!+%o&yc6c^1ctjd+fj@6'

DEBUG = True

ALLOWED_HOSTS = ['*']

INSTALLED_APPS = [
  'django.contrib.admin',
  'django.contrib.auth',
  'django.contrib.contenttypes',
  'django.contrib.sessions',
  'django.contrib.messages',
  'django.contrib.staticfiles',
  'django.contrib.humanize',
  'widget_tweaks',
  'crispy_forms',
  'users',
  'yfcases',
  'import_export',
  'wkhtmltopdf',
]

MIDDLEWARE = [
  'django.middleware.security.SecurityMiddleware',
  'django.contrib.sessions.middleware.SessionMiddleware',
  'django.middleware.common.CommonMiddleware',
  'django.middleware.csrf.CsrfViewMiddleware',
  'django.contrib.auth.middleware.AuthenticationMiddleware',
  'django.contrib.messages.middleware.MessageMiddleware',
  'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

AUTH_USER_MODEL = 'users.CustomUser'
ROOT_URLCONF = 'src.urls'

LOGIN_URL='/login/'
LOGIN_REDIRECT_URL = 'yfcase:home'
LOGOUT_REDIRECT_URL = 'yfcase:home'

TEMPLATES = [
  {
    'BACKEND': 'django.template.backends.django.DjangoTemplates',
    'DIRS': [os.path.join(BASE_DIR,"templates")],
    'APP_DIRS': True,
    'OPTIONS': {
      'context_processors': [
        'django.template.context_processors.debug',
        'django.template.context_processors.request',
        'django.contrib.auth.context_processors.auth',
        'django.contrib.messages.context_processors.messages',
      ],
    },
  },
]

WSGI_APPLICATION = 'src.wsgi.application'

DATABASES = db.SQLITE 

AUTH_PASSWORD_VALIDATORS = [
  {
    'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
  },
  {
    'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
  },
  {
    'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
  },
  {
    'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
  },
]

LANGUAGE_CODE = 'zh-hant'

TIME_ZONE = 'Asia/Taipei'

USE_I18N = True

USE_L10N = True

USE_TZ = True

IMPORT_EXPORT_USE_TRANSACTIONS = True

STATIC_URL = '/static/'

STATICFILES_DIRS=[
  os.path.join(BASE_DIR,"yfcases/static"),
]

STATIC_ROOT=os.path.join(BASE_DIR, "static_cdn")

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
