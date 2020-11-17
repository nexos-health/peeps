from django.contrib import admin
from questions.models import Question, Questionnaire, Choice, Position, ProfessionalAnswer, \
    ClinicAnswer

# Register your models here.

admin.site.register(Question)
admin.site.register(Questionnaire)
admin.site.register(Choice)
admin.site.register(Position)
admin.site.register(ProfessionalAnswer)
admin.site.register(ClinicAnswer)
