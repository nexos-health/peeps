from django.contrib import admin

from professionals.models import Professional, Area, Role, Rate

# Register your models here.

admin.site.register(Professional)
admin.site.register(Area)
admin.site.register(Role)
admin.site.register(Rate)
