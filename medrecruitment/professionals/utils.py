"""Utility functions for professionals"""
from clinics.models import Clinic
from professionals.models import Role


def get_professionals(professionals):
    professionals_dict = {
        professional.id: {
            "firstName": professional.first_name,
            "lastName": professional.last_name,
            "description": professional.description,
            "fees": professional.fees,
            "waitTimes": professional.wait_times,
            "bulkBilling": professional.bulk_billing,
            "clinics": []
        } for professional in professionals
    }
    roles = list(Role.objects.filter(professional__in=professionals))
    clinic_professional_mapping = {
        (role.professional_id, role.clinic_id)
        for role in roles
    }
    clinics = list(Clinic.objects.filter(role__professional_id__in=professionals_dict.keys())
                   .select_related("location"))
    clinics_dict = {
        clinic.id: {
            "clinicName": clinic.name,
            "phone": clinic.phone,
            "fax": clinic.fax,
            "country": clinic.location.country,
            "state": clinic.location.state,
            "postcode": clinic.location.postcode,
            "suburb": clinic.location.suburb,
            "streetName": clinic.location.street_name,
            "streetNumber": clinic.location.street_number,
            "latitude": clinic.location.latitude,
            "longitude": clinic.location.longitude,
        } for clinic in clinics
    }

    for tuple_map in clinic_professional_mapping:
        professionals_dict[tuple_map[0]]["clinics"] += [clinics_dict[tuple_map[1]]]

    return professionals_dict
