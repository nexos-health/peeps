from django.contrib import admin

from users.models import User, UserNotesProfessional


# Register your models here.


class UserAdmin(admin.ModelAdmin):

    list_display = ("user_key", "auth_id", "professional",)
    search_fields = ("user_key", "auth_id", "professional",)


class UserNotesProfessionalAdmin(admin.ModelAdmin):

    list_display = ("user", "professional", "notes",)
    search_fields = ("user", "professional", "notes",)


admin.site.register(User, UserAdmin)
admin.site.register(UserNotesProfessional, UserNotesProfessionalAdmin)
