from django.contrib import admin
from clinics.models import Location, Role, Organisation, Clinic

# Register your models here.

admin.site.register(Location)
admin.site.register(Role)
admin.site.register(Organisation)
admin.site.register(Clinic)
