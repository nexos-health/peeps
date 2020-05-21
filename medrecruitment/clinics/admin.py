from django.contrib import admin
from clinics.models import Location, Organisation, Clinic

# Register your models here.


class ClinicAdmin(admin.ModelAdmin):

    list_display = ("name",)
    search_fields = ('name',)


class LocationAdmin(admin.ModelAdmin):

    list_display = ("street_number", "street_name", "suburb", "state", "postcode")
    search_fields = ("street_number", "street_name", "suburb", "state", "postcode")


admin.site.register(Location, LocationAdmin)
admin.site.register(Organisation)
admin.site.register(Clinic, ClinicAdmin)
