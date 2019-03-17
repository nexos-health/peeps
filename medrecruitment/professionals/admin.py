from django.contrib import admin

from professionals.models import Professional, Profession, Area

# Register your models here.

admin.site.register(Profession)
admin.site.register(Professional)
admin.site.register(Area)
