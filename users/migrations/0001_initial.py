# Generated by Django 3.1.3 on 2021-09-24 14:56

import django.contrib.auth.models
import django.contrib.auth.validators
from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='CustomUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('username', models.CharField(error_messages={'unique': 'A user with that username already exists.'}, help_text='Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.', max_length=150, unique=True, validators=[django.contrib.auth.validators.UnicodeUsernameValidator()], verbose_name='username')),
                ('first_name', models.CharField(blank=True, max_length=150, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('email', models.EmailField(blank=True, max_length=254, verbose_name='email address')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('userFirstName', models.CharField(blank=True, max_length=50, null=True, verbose_name='姓氏')),
                ('userLastName', models.CharField(blank=True, max_length=50, null=True, verbose_name='名字')),
                ('userFullName', models.CharField(blank=True, max_length=50, null=True, verbose_name='全名')),
                ('userWorkArea', models.CharField(blank=True, max_length=50, null=True, verbose_name='工作轄區')),
                ('userRole', models.PositiveIntegerField(default=0, verbose_name='權限')),
                ('userIdentityCard', models.CharField(blank=True, max_length=50, null=True, verbose_name='身分証號')),
                ('userBirthday', models.DateField(blank=True, null=True, verbose_name='生日')),
                ('userLocalPhone', models.CharField(blank=True, max_length=50, null=True, verbose_name='市話')),
                ('userMobilePhone', models.CharField(blank=True, max_length=50, null=True, verbose_name='手機')),
                ('userCountry', models.CharField(blank=True, max_length=50, null=True, verbose_name='縣市')),
                ('userTownship', models.CharField(blank=True, max_length=50, null=True, verbose_name='鄉鎮')),
                ('userVillage', models.CharField(blank=True, max_length=50, null=True, verbose_name='村里')),
                ('userNeighbor', models.CharField(blank=True, max_length=50, null=True, verbose_name='鄰')),
                ('userStreet', models.CharField(blank=True, max_length=50, null=True, verbose_name='街路')),
                ('userSection', models.CharField(blank=True, max_length=50, null=True, verbose_name='段')),
                ('userLane', models.CharField(blank=True, max_length=50, null=True, verbose_name='巷')),
                ('userAlley', models.CharField(blank=True, max_length=50, null=True, verbose_name='弄')),
                ('userNumber', models.CharField(blank=True, max_length=50, null=True, verbose_name='號')),
                ('userFloor', models.CharField(blank=True, max_length=50, null=True, verbose_name='樓')),
                ('userPublicOrPrivate', models.CharField(blank=True, max_length=50, null=True, verbose_name='身分別')),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.Group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.Permission', verbose_name='user permissions')),
            ],
            options={
                'verbose_name': 'user',
                'verbose_name_plural': 'users',
                'abstract': False,
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
    ]
