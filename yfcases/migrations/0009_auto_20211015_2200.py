# Generated by Django 3.1.3 on 2021-10-15 22:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('yfcases', '0008_auto_20211015_1839'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='land',
            options={'ordering': ['-landUpdated']},
        ),
        migrations.AddField(
            model_name='land',
            name='landUpdated',
            field=models.DateTimeField(auto_now=True, verbose_name='案件最後更新時間'),
        ),
        migrations.AlterModelTable(
            name='land',
            table='yfcase_land',
        ),
    ]