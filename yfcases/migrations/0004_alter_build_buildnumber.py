# Generated by Django 3.2.4 on 2021-10-14 13:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('yfcases', '0003_auto_20211014_1141'),
    ]

    operations = [
        migrations.AlterField(
            model_name='build',
            name='buildNumber',
            field=models.CharField(max_length=100, null=True, verbose_name='建號'),
        ),
    ]
