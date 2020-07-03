from django.contrib import admin

from professionals.models import Professional, Area, Role, Rate, Profession, ProfessionType, \
    ProfessionalGroup, ProfessionalGroupMapping


# Register your models here.


class ProfessionalAdmin(admin.ModelAdmin):

    list_display = ("first_name", "last_name", "description",)
    search_fields = ("first_name", "last_name", "description",)


class ProfessionTypeAdmin(admin.ModelAdmin):

    search_fields = ("name",)


class ProfessionAdmin(admin.ModelAdmin):

    search_fields = ("profession", "profession_type")


class RoleAdmin(admin.ModelAdmin):

    list_display = ("professional", "clinic")
    search_fields = ("professional", "clinic")


class ProfessionalGroupAdmin(admin.ModelAdmin):

    list_display = ("name", "description", "user")
    search_fields = ("name", "description", "user")


class ProfessionalGroupMappingAdmin(admin.ModelAdmin):

    list_display = ("group", "professional")
    search_fields = ("group", "professional")


admin.site.register(Professional, ProfessionalAdmin)
admin.site.register(ProfessionType, ProfessionTypeAdmin)
admin.site.register(ProfessionalGroup, ProfessionalGroupAdmin)
admin.site.register(ProfessionalGroupMapping, ProfessionalGroupMappingAdmin)
admin.site.register(Profession, ProfessionAdmin)
admin.site.register(Area)
admin.site.register(Role, RoleAdmin)
admin.site.register(Rate)
