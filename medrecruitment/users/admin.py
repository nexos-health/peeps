from django.contrib import admin

from users.models import User

# Register your models here.


class UserAdmin(admin.ModelAdmin):

    list_display = ("user_key", "auth_id", "professional",)
    search_fields = ("user_key", "auth_id", "professional",)


admin.site.register(User, UserAdmin)
