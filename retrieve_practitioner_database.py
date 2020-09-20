import pandas as pd
import requests
from bs4 import BeautifulSoup

base_url = "https://www.tasehealthdirectory.com.au"

# General Practitioners

gp_urls = {
    "GeneralPractitionerS": "/TeHD_search.php?type=General%20Practitioner&sort=surname&div=3&gp=1&hl=1",
    "GeneralPractitionerN": "/TeHD_search.php?type=General%20Practitioner&sort=surname&div=2&gp=1&hl=1",
    "GeneralPractitionerNW": "/TeHD_search.php?type=General%20Practitioner&sort=surname&div=1&gp=1&hl=1"
}

# Specialists

specialist_urls = {
    "AddictionMedicineSpecialist": "/TeHD_search.php?type=Addiction%20Medicine%20Specialist&sort=surname&specialist=1",
    "AnaesthetistS": "/TeHD_search.php?type=Anaesthetist&sort=surname&div=3&specialist=1",
    "AnaesthetistN": "/TeHD_search.php?type=Anaesthetist&sort=surname&div=2&specialist=1",
    "AnaesthetistNW": "/TeHD_search.php?type=Anaesthetist&sort=surname&div=1&specialist=1",
    "CardiologistS": "/TeHD_search.php?type=Cardiologist&sort=surname&div=3&specialist=1",
    "CardiologistN": "/TeHD_search.php?type=Cardiologist&sort=surname&div=2&specialist=1",
    "CardiologistNW": "/TeHD_search.php?type=Cardiologist&sort=surname&div=1&specialist=1",
    "CardiothoracicSurgeon": "/TeHD_search.php?type=Cardiothoracic%20Surgeon&sort=surname&specialist=1",
    "ClinicalHaematologist": "/TeHD_search.php?type=Clinical%20Haematologist&sort=surname&specialist=1",
    "ClinicalImmunologistandAllergist": "/TeHD_search.php?type=Clinical%20Immunologist%20and%20Allergist&sort=surname&specialist=1",
    "ColorectalSurgeon": "/TeHD_search.php?type=Colorectal%20Surgeon&sort=surname&specialist=1",
    "Dermatologist": "/TeHD_search.php?type=Dermatologist&sort=surname&specialist=1",
    "DiagnosticandinterventionalRadiologist": "/TeHD_search.php?type=Diagnostic%20and%20interventional%20Radiologist&sort=surname&specialist=1",
    "Endocrinologist": "/TeHD_search.php?type=Endocrinologist&sort=surname&specialist=1",
    "ENTHeadandNeckSurgeon": "/TeHD_search.php?type=ENT%20Head%20and%20Neck%20Surgeon&sort=surname&specialist=1",
    "GastroenterologistS": "/TeHD_search.php?type=Gastroenterologist&sort=surname&div=3&specialist=1",
    "GastroenterologistN": "/TeHD_search.php?type=Gastroenterologist&sort=surname&div=2&specialist=1",
    "GastroenterologistNW": "/TeHD_search.php?type=Gastroenterologist&sort=surname&div=1&specialist=1",
    "GeneralMedicine": "/TeHD_search.php?type=General%20Medicine&sort=surname&specialist=1",
    "Geriatrician": "/TeHD_search.php?type=Geriatrician&sort=surname&specialist=1",
    "GynaecologicalOncologist": "/TeHD_search.php?type=Gynaecological%20Oncologist&sort=surname&specialist=1",
    "InfectiousDiseaseSpecialist": "/TeHD_search.php?type=Infectious%20Disease%20Specialist&sort=surname&specialist=1",
    "Neurologist": "/TeHD_search.php?type=Neurologist&sort=surname&specialist=1",
    "Neurosurgeon": "/TeHD_search.php?type=Neurosurgeon&sort=surname&specialist=1",
    "ObstetricianandGynaecologistS": "/TeHD_search.php?type=Obstetrician%20and%20Gynaecologist&sort=surname&div=3&specialist=1",
    "ObstetricianandGynaecologistN": "/TeHD_search.php?type=Obstetrician%20and%20Gynaecologist&sort=surname&div=2&specialist=1",
    "ObstetricianandGynaecologistNW": "/TeHD_search.php?type=Obstetrician%20and%20Gynaecologist&sort=surname&div=1&specialist=1",
    "OccupationalMedicineSpecialist": "/TeHD_search.php?type=Occupational%20Medicine%20Specialist&sort=surname&specialist=1",
    "Oncologist": "/TeHD_search.php?type=Medical%20Oncologist&sort=surname&specialist=1",
    "OphthalmologistS": "/TeHD_search.php?type=Ophthalmologist%20-%20Eye%20Surgeon&sort=surname&div=3&specialist=1",
    "OphthalmologistN": "/TeHD_search.php?type=Ophthalmologist%20-%20Eye%20Surgeon&sort=surname&div=2&specialist=1",
    "OphthalmologistNW": "/TeHD_search.php?type=Ophthalmologist%20-%20Eye%20Surgeon&sort=surname&div=1&specialist=1",
    "OrthopaedicSurgeonS": "/TeHD_search.php?type=Orthopaedic%20Surgeon&sort=surname&div=3&specialist=1",
    "OrthopaedicSurgeonN": "/TeHD_search.php?type=Orthopaedic%20Surgeon&sort=surname&div=2&specialist=1",
    "OrthopaedicSurgeonNW": "/TeHD_search.php?type=Orthopaedic%20Surgeon&sort=surname&div=1&specialist=1",
    "OralandMaxillofacialSurgeon": "/TeHD_search.php?type=Oral%20and%20Maxillofacial%20Surgeon&sort=surname&specialist=1",
    "PaediatricSurgeon": "/TeHD_search.php?type=Paediatric%20Surgeon&sort=surname&specialist=1",
    "Paediatrician": "/TeHD_search.php?type=Paediatrician&sort=surname&specialist=1",
    "PainManagementSpecialist": "/TeHD_search.php?type=Pain%20Management%20Specialist&sort=surname&specialist=1",
    "PalliativeMedicineSpecialist": "/TeHD_search.php?type=Palliative%20Medicine%20Specialist&sort=surname&specialist=1",
    "PlasticandReconstructiveSurgeon": "/TeHD_search.php?type=Plastic%20and%20Reconstructive%20Surgeon&sort=surname&specialist=1",
    "PsychiatristS": "/TeHD_search.php?type=Psychiatrist&sort=surname&div=3&specialist=1",
    "PsychiatristN": "/TeHD_search.php?type=Psychiatrist&sort=surname&div=2&specialist=1",
    "PsychiatristNW": "/TeHD_search.php?type=Psychiatrist&sort=surname&div=1&specialist=1",
    "RadiationOncologist": "/TeHD_search.php?type=Radiation%20Oncologist&sort=surname&specialist=1",
    "RehabilitationMedicinePhysician": "/TeHD_search.php?type=Rehabilitation%20Medicine%20Physician&sort=surname&specialist=1",
    "RenalMedicineSpecialist": "/TeHD_search.php?type=Renal%20Medicine%20Specialist&sort=surname&specialist=1",
    "RespiratoryMedicinePhysician": "/TeHD_search.php?type=Respiratory%20Medicine%20Physician&sort=surname&specialist=1",
    "ReproductiveInfertilitySpecialist": "/TeHD_search.php?type=Reproductive%20-%20infertility%20Specialist&sort=surname&specialist=1",
    "Rheumatologist": "/TeHD_search.php?type=Rheumatologist&sort=surname&specialist=1",
    "SleepMedicineSpecialist": "/TeHD_search.php?type=Sleep%20Medicine%20Specialist&sort=surname&specialist=1",
    "SportsPhysician": "/TeHD_search.php?type=Sports%20Physician&sort=surname&specialist=1",
    "SurgeonGeneralS": "/TeHD_search.php?type=Surgeon%20-%20General&sort=surname&div=3&specialist=1",
    "SurgeonGeneralN": "/TeHD_search.php?type=Surgeon%20-%20General&sort=surname&div=2&specialist=1",
    "SurgeonGeneralNW": "/TeHD_search.php?type=Surgeon%20-%20General&sort=surname&div=1&specialist=1",
    "UrologistS": "/TeHD_search.php?type=Urologists&sort=surname&div=3&specialist=1",
    "UrologistN": "/TeHD_search.php?type=Urologists&sort=surname&div=2&specialist=1",
    "UrologistNW": "/TeHD_search.php?type=Urologists&sort=surname&div=1&specialist=1",
    "VascularSurgeon": "/TeHD_search.php?type=Vascular%20Surgeon&sort=surname&specialist=1",
}


# Allied Health Professional
allied_urls = {
    "Acupuncturist": "/TeHD_search.php?type=Acupuncturist&sort=surname",
    "AudiologistS": "/TeHD_search.php?type=Audiologist&sort=surname&div=3",
    "AudiologistN": "/TeHD_search.php?type=Audiologist&sort=surname&div=2",
    "AudiologistNW": "/TeHD_search.php?type=Audiologist&sort=surname&div=1",
    "ChiropractorS": "/TeHD_search.php?type=Chiropractor&sort=surname&div=3",
    "ChiropractorN": "/TeHD_search.php?type=Chiropractor&sort=surname&div=2",
    "ChiropractorNW": "/TeHD_search.php?type=Chiropractor&sort=surname&div=1",
    "DietitianS": "/TeHD_search.php?type=Dietitian&sort=surname&div=3",
    "DietitianN": "/TeHD_search.php?type=Dietitian&sort=surname&div=2",
    "DietitianNW": "/TeHD_search.php?type=Dietitian&sort=surname&div=1",
    "DiabetesNurseEducator": "/TeHD_search.php?type=Diabetes%20Nurse%20Educator&sort=surname",
    "ExercisePhysiologistS": "/TeHD_search.php?type=Exercise%20Physiologist&sort=surname&div=3",
    "ExercisePhysiologistN": "/TeHD_search.php?type=Exercise%20Physiologist&sort=surname&div=2",
    "ExercisePhysiologistNW": "/TeHD_search.php?type=Exercise%20Physiologist&sort=surname&div=1",
    "NursePractitionerS": "/TeHD_search.php?type=Nurse%20Practitioner&sort=surname&div=3",
    "NursePractitionerN": "/TeHD_search.php?type=Nurse%20Practitioner&sort=surname&div=2",
    "NursePractitionerNW": "/TeHD_search.php?type=Nurse%20Practitioner&sort=surname&div=1",
    "OccupationalTherapistS": "/TeHD_search.php?type=Occupational%20Therapist&sort=surname&div=3",
    "OccupationalTherapistN": "/TeHD_search.php?type=Occupational%20Therapist&sort=surname&div=2",
    "OccupationalTherapistNW": "/TeHD_search.php?type=Occupational%20Therapist&sort=surname&div=1",
    "OsteopathS": "/TeHD_search.php?type=Osteopath&sort=surname&div=3",
    "OsteopathN": "/TeHD_search.php?type=Osteopath&sort=surname&div=2",
    "OsteopathNW": "/TeHD_search.php?type=Osteopath&sort=surname&div=1",
    "PhysiotherapistS": "/TeHD_search.php?type=Physiotherapist&sort=surname&div=3",
    "PhysiotherapistN": "/TeHD_search.php?type=Physiotherapist&sort=surname&div=2",
    "PhysiotherapistNW": "/TeHD_search.php?type=Physiotherapist&sort=surname&div=1",
    "PodiatristS": "/TeHD_search.php?type=Podiatrist&sort=surname&div=3",
    "PodiatristN": "/TeHD_search.php?type=Podiatrist&sort=surname&div=2",
    "PodiatristNW": "/TeHD_search.php?type=Podiatrist&sort=surname&div=1",
    "PsychologistS": "/TeHD_search.php?type=Psychologists&sort=surname&div=3",
    "PsychologistN": "/TeHD_search.php?type=Psychologists&sort=surname&div=2",
    "PsychologistNW": "/TeHD_search.php?type=Psychologists&sort=surname&div=1",
    "ClinicalPsychologistS": "/TeHD_search.php?type=Clinical%20Psychologist&sort=surname&div=3",
    "ClinicalPsychologistN": "/TeHD_search.php?type=Clinical%20Psychologist&sort=surname&div=2",
    "ClinicalPsychologistNW": "/TeHD_search.php?type=Clinical%20Psychologist&sort=surname&div=1",
    "ForensicPsychologist": "/TeHD_search.php?type=Forensic%20Psychologist&sort=surname",
    "HealthPsychologist": "/TeHD_search.php?type=Health%20Psychologist&sort=surname",
    "SocialWorker": "/TeHD_search.php?type=Social%20Worker&sort=surname",
    "SpeechPathologistS": "/TeHD_search.php?type=Speech%20Pathologist&sort=surname&div=3",
    "SpeechPathologistN": "/TeHD_search.php?type=Speech%20Pathologist&sort=surname&div=2",
    "SpeechPathologistNW": "/TeHD_search.php?type=Speech%20Pathologist&sort=surname&div=1",
}

# Clinical Psychologists
psychologists_urls = {
    "ClinicalPsychologistS": "/TeHD_search_mh.php?type=Mental%20Health%20Professionals&div=3&sort=type_name",
    "ClinicalPsychologistN": "/TeHD_search_mh.php?type=Mental%20Health%20Professionals&div=2&sort=type_name",
    "ClinicalPsychologistNW": "/TeHD_search_mh.php?type=Mental%20Health%20Professionals&div=1&sort=type_name",
}

practitioner_database = []
for practitioner_type, post_url in psychologists_urls.items():
    url = base_url + post_url
    resp = requests.get(url)
    soup = BeautifulSoup(resp.content)
    rows = soup.find_all("div", attrs={"class": ["rTableRow RowChange", "rTableRowAlt RowChange", "rTableRow", "rTableRowAlt"]})
    rows_content = []
    for row in rows[1:-1]:
        row_content = row.contents
        # if row.contents[1].text != "\xA0":
        #     first_name = row.contents[1].text
        #     last_name = row.contents[3].text
        # For doctors
        # rows_content.append([first_name, last_name, row_content[5].text, row_content[7].text, row_content[9].text, row_content[11].text, row_content[13].text, row_content[15].text, row_content[17].text, row_content[18].text, practitioner_type])
        # For allied health
        # rows_content.append([first_name, last_name, row_content[5].text, row_content[7].text, row_content[9].text, row_content[11].text, row_content[13].text, row_content[15].text, row_content[17].text, practitioner_type])
        # For mental health practitioners
        try:
            info = row_content[1].contents
        except Exception as ex:
            pass
        name = str(info[0])
        organisation = info[3].text
        address = str(info[8]).strip()
        phone = str(info[12]).strip()
        fax = str(info[14]).strip()
        comments = row_content[3].text
        waiting_times = row_content[5].text
        fees = row_content[7].text
        bulk_bill = row_content[9].text

        rows_content.append([name, organisation, address, phone, fax, comments, waiting_times, fees, bulk_bill, practitioner_type])

        if len(info) > 16:
            organisation = info[17].text
            address = str(info[22]).strip()
            phone = str(info[26]).strip()
            fax = str(info[28]).strip()
            rows_content.append([name, organisation, address, phone, fax, comments, waiting_times, fees, bulk_bill, practitioner_type])

            if len(info) > 30:
                organisation = info[31].text
                address = str(info[36]).strip()
                phone = str(info[40]).strip()
                fax = str(info[42]).strip()
                rows_content.append([name, organisation, address, phone, fax, comments, waiting_times, fees, bulk_bill, practitioner_type])

                if len(info) > 45:
                    organisation = info[45].text
                    address = str(info[50]).strip()
                    phone = str(info[54]).strip()
                    fax = str(info[56]).strip()
                    rows_content.append([name, organisation, address, phone, fax, comments, waiting_times, fees, bulk_bill, practitioner_type])

    practitioner_database += rows_content

    print("hello")

# doctor_columns = ["First Name", "Last Name", "Organisation", "Address", "Suburb", "Postcode", "Phone", "Fax", "Areas of Interest/Comments", "HealthLink Address", "Occupation"]
# allied_columns = ["First Name", "Last Name", "Organisation", "Address", "Suburb", "Postcode", "Phone", "Fax", "Areas of Interest/Comments", "Occupation"]
clinic_psychologist_columns = ["Full Name", "Organisation", "Address", "Phone", "Fax", "Areas of Interest/Comments", "Waiting Times", "Fees", "Bulk Billing", "Occupation"]
df = pd.DataFrame(
    data=practitioner_database,
    columns=clinic_psychologist_columns
)
# df.to_csv("/Users/elliottlovell/specialist_database.csv")
# df.to_csv("/Users/elliottlovell/general_practitioner_database.csv")
# df.to_csv("/Users/elliottlovell/allied_database.csv")
df.to_csv("/Users/elliottlovell/clinical_psychologist_database.csv")

print("yo")