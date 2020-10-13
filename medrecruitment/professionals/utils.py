"""Utility functions for professionals"""
from clinics.models import Clinic
from professionals.models import Role, Professional, ProfessionalGroupMapping


def get_professionals_from_professions(professions):
    professionals_dict = {
        profession.professional.uid: {
            "firstName": profession.professional.first_name,
            "lastName": profession.professional.last_name,
            "professionType": profession.profession_type.name,
            "description": profession.professional.description,
            "fees": profession.professional.fees,
            "waitTimes": profession.professional.wait_times,
            "bulkBilling": profession.professional.bulk_billing,
            "clinics": []
        } for profession in professions
    }

    roles = list(Role.objects.filter(professional__uid__in=professionals_dict))

    clinic_professional_mapping = {
        (role.professional.uid, role.clinic.id)
        for role in roles
    }
    clinics = list(Clinic.objects.filter(role__professional__uid__in=professionals_dict.keys())
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


def get_professionals(professionals):
    professionals_dict = {
        professional.uid: {
            "firstName": professional.first_name,
            "lastName": professional.last_name,
            # "profession_type": professional.profession_set.,
            "description": professional.description,
            "fees": professional.fees,
            "waitTimes": professional.wait_times,
            "bulkBilling": professional.bulk_billing,
            "clinics": []
        } for professional in professionals
    }
    roles = list(Role.objects.filter(professional__in=professionals))
    clinic_professional_mapping = {
        (role.professional.uid, role.clinic.id)
        for role in roles
    }
    clinics = list(Clinic.objects.filter(role__professional__uid__in=professionals_dict.keys())
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


def format_professional_groups(groups):
    groups_dict = {
        str(group.uid): {
            "name": group.name,
            "description": group.description,
            "professionalsUids": []
        } for group in groups
    }

    professional_group_mappings = ProfessionalGroupMapping.objects.filter(
        group__uid__in=groups_dict.keys()
    )

    professional_uids = set()
    for mapping in professional_group_mappings:
        groups_dict[mapping.group.uid]["professionalsUids"].append(mapping.professional.uid)
        professional_uids.add(mapping.professional.uid)

    professionals = list(Professional.objects.filter(
        uid__in=professional_uids
    ))

    professionals_dict = get_professionals(professionals)

    for group_uid, group in groups_dict.items():
        group_professionals_uids = group["professionalsUids"]
        groups_dict[group_uid]["professionals"] = [
            {**{"uid": professional_uid}, **info}
            for professional_uid, info in professionals_dict.items()
            if professional_uid in group_professionals_uids
        ]

    return groups_dict
