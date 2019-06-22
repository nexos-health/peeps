from django.contrib import admin
from clinics.models import Location, Organisation, Clinic

# Register your models here.

admin.site.register(Location)
admin.site.register(Organisation)
admin.site.register(Clinic)
