from .email_info import EMAIL_BACKEND,EMAIL_HOST,EMAIL_PORT,EMAIL_USE_TLS,EMAIL_HOST_USER,EMAIL_HOST_PASSWORD
 
EMAIL_BACKEND = EMAIL_BACKEND
EMAIL_HOST = EMAIL_HOST
EMAIL_PORT = EMAIL_PORT
EMAIL_USE_TLS = EMAIL_USE_TLS
EMAIL_HOST_USER = EMAIL_HOST_USER
EMAIL_HOST_PASSWORD = EMAIL_HOST_PASSWORD


import os
import src.db as db
import subprocess
from pathlib import Path
import subprocess
# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent



# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-y!*t1+b=fab-(8$1azdm%4ln=2hdd4!+%o&yc6c^1ctjd+fj@6'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True
# DEBUG = False

ALLOWED_HOSTS = ['*']


# Application definition

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

# LOGIN_URL='login'
LOGIN_URL='/login/'
LOGIN_REDIRECT_URL = 'yfcase:home'
LOGOUT_REDIRECT_URL = 'yfcase:home'

# 設定WKHTMLTOPDF的路徑
# WKHTMLTOPDF_CMD = '/usr/local/bin/wkhtmltopdf'
# WKHTMLTOPDF_CMD ="D:\\Program\\RyowuTestCode\\djangotest\\YangfuDjango20210604\\yfcases\\wkhtmltox\\bin\\wkhtmltopdf.exe"


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


# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases

DATABASES = db.SQLITE 
#DATABASES = db.POSTGRESQL

# EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
# EMAIL_HOST = 'smtp.sendgrid.net'
# EMAIL_HOST_USER = 'ryowu0329'
# EMAIL_HOST_PASSWORD = 'leo140814'
# EMAIL_PORT = 587
# EMAIL_USE_TLS = True


# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators

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


# Internationalization
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'zh-hant'

TIME_ZONE = 'Asia/Taipei'

USE_I18N = True

USE_L10N = True

USE_TZ = True

IMPORT_EXPORT_USE_TRANSACTIONS = True
# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/

STATIC_URL = '/static/'

# 指定應用程式的目錄/yfcases/static為STATICFILE_DIRS
STATICFILES_DIRS=[
  os.path.join(BASE_DIR,"yfcases/static"),
]
# 運行python manage.py collectstatic後會在根目錄下產生一個/static_cdn
STATIC_ROOT=os.path.join(BASE_DIR, "static_cdn")



# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
