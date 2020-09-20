import json
import time
import random

import pandas as pd
# from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from seleniumwire import webdriver
# from selenium.webdriver.common.keys import Keys

driver = webdriver.Chrome()

profession_types = {
    "Anaesthetist": 43,
    # "Audiologist": 40,
    # "Cardiologist (Heart Specialist)": 39,
    # "Clinical Psychologist": 53,
    # "Dentist": 68,
    # "Dermatologist (Skin Specialist)": 67,
    # "Dermatologist (Skin Specialist) - HS Hidradenitis Suppurativa (recurrent boils)": 2518,
    # "Ear Nose and Throat (ENT) Surgeon": 35,
    # "Endocrine Surgeon (Thyroid, Parathyroid, Adrenal)": 214,
    # "Endocrinologist": 38,
    # "Endodontist": 199,
    # "Exercise Physiologist": 37,
    # "Forensic Odontologist": 200,
    # "Forensic Psychologist": 137,
    # "Gastroenterologist": 62,
    # "Gastroenterologist - Capsule Endoscopy": 2456,
    # "Gastroenterologist - Colonoscopy": 2454,
    # "Gastroenterologist - Endoscopy": 2488,
    # "Gastroenterologist - ERCP": 2455,
    # "Gastroenterologist - EUS": 2457,
    # "Gastroenterologist - Hepatology": 2514,
    # "General Surgeon - Capsule Endoscopy": 2453,
    # "General Surgeon - Colonoscopy": 2448,
    # "General Surgeon - Endoscopy": 2487,
    # "General Surgeon - ERCP": 2452,
    # "General Surgeon - EUS": 2451,
    # "General Surgeon - Gastroscopy": 2449,
    # "Geriatrician (Aged Care Specialist)": 36,
    # "GP (General Practitioner)": 63,
    # "GP (General Practitioner) - Rosacea": 2516,
    # "GP (General Practitioner) - Sexual Health": 2396,
    # "GP (General Practitioner) - Weight Management": 2517,
    # "Gynaecological Oncologist": 190,
    # "Gynaecologist": 224,
    # "Gynaecologist - Infertility (IVF) Specialist": 192,
    # "Haematologist (Blood Disorders Specialist)": 75,
    # "Hand Surgeon": 143,
    # "Health Psychologist": 138,
    # "Medical Oncologist (Cancer Specialist)": 21,
    # "Medical Practitioner": 154,
    # "Nephrologist (Kidney Specialist)": 76,
    # "Neurologist (Brain Specialist)": 24,
    # "Neurologist (Brain Specialist) - Chronic Migraine": 2500,
    # "Neurosurgeon (Brain and Spine)": 23,
    # "Obstetrician": 225,
    # "Obstetrics and Gynaecological Ultrasound Specialist": 193,
    # "Occupational Health Specialist": 158,
    # "Ophthalmologist (Eye Specialist)": 20,
    # "Oral Surgeon": 204,
    # "Orthodontist": 142,
    # "Orthopaedic Surgeon": 19,
    # "Orthopaedic Surgeon - Ankle": 2402,
    # "Orthopaedic Surgeon - Elbow": 2511,
    # "Orthopaedic Surgeon - Foot": 2405,
    # "Orthopaedic Surgeon - Hand": 2404,
    # "Orthopaedic Surgeon - Hip": 2399,
    # "Orthopaedic Surgeon - Knee": 2401,
    # "Orthopaedic Surgeon - Paediatric": 2400,
    # "Orthopaedic Surgeon - Shoulder": 2512,
    # "Orthopaedic Surgeon - Spine": 2398,
    # "Orthopaedic Surgeon - Trauma-Fracture": 2497,
    # "Orthopaedic Surgeon - Wrist": 2513,
    # "Orthoptist": 18,
    # "Orthotist": 17,
    # "Osteopath": 58,
    # "Paediatric Allergist and Immunologist": 171,
    # "Paediatric Cardiologist": 173,
    # "Paediatric Clinical Geneticist": 174,
    # "Paediatric Clinical Pharmacologist": 175,
    # "Paediatric Dentist": 205,
    # "Paediatric Emergency Physician": 176,
    # "Paediatric Endocrinologist": 177,
    # "Paediatric Gastroenterologist": 119,
    # "Paediatric Haematologist": 178,
    # "Paediatric Infectious Diseases Physician": 179,
    # "Paediatric Intensive Care Physician": 180,
    # "Paediatric Medical Oncologist": 181,
    # "Paediatric Nephrologist": 182,
    # "Paediatric Neurologist": 183,
    # "Paediatric Nuclear Medicine Physician": 184,
    # "Paediatric Palliative Medicine Physician": 185,
    # "Paediatric Rehabilitation Physician": 186,
    # "Paediatric Respiratory and Sleep Medicine Physician": 187,
    # "Paediatric Rheumatologist": 188,
    # "Paediatric Surgeon": 15,
    # "Paediatric Urologist": 223,
    # "Paediatrician": 56,
    # "Pathologist": 13,
    # "Pathologist (Anatomical)": 196,
    # "Pathologist (Chemical)": 197,
    # "Pathologist (Forensic)": 198,
    # "Pathologist (Haematologist)": 194,
    # "Pathologist (Immunologist)": 170,
    # "Pathologist (Microbiologist)": 195,
    # "Physician (General)": 72,
    # "Physiotherapist": 54,
    # "Plastic Surgeon (Reconstructive & Cosmetic)": 12,
    # "Podiatric Surgeon": 162,
    # "Podiatrist (General)": 55,
    # "Prosthodontist": 145,
    # "Psychiatrist": 52,
    # "Psychologist": 102,
    # "Psychotherapist": 11,
    # "Radiographer": 167,
    # "Radiologist (General)": 51,
    # "Radiologist (Interventional)": 229,
    # "Radiologist (Nuclear Medicine)": 148,
    # "Respiratory & Sleep Medicine Physician": 9,
    # "Respiratory & Sleep Medicine Physician - Severe Asthma": 1,
    # "Rheumatologist": 8,
    # "Sonographer": 88,
    # "Speech Pathologist": 48,
    # "Sport and Exercise Physician": 116,
    # "Sport Psychologist": 140,
    # "Upper GI Surgeon (Abdominal)": 210,
    # "Urogynaecologist": 147,
    # "Urogynaecologist - Overactive bladder (OAB)": 2501,
    # "Urogynaecologist - Urinary incontinence": 2509,
    # "Urologist": 4,
    # "Urologist - Neuromodulation": 2507,
    # "Urologist - Overactive bladder (OAB)": 2502,
    # "Vascular Surgeon": 3,
}


def scroll_to_end(driver):
    SCROLL_PAUSE_TIME = 2

    # Get scroll height
    last_height = driver.execute_script("return document.body.scrollHeight")

    while True:
        # Scroll down to bottom
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")

        # Wait to load page
        time.sleep(SCROLL_PAUSE_TIME)

        # Calculate new scroll height and compare with last scroll height
        new_height = driver.execute_script("return document.body.scrollHeight")
        if new_height == last_height:
            break
        last_height = new_height


professionals = {}
for profession, profession_id in profession_types.items():
    professional_list_url = f"specialty={profession_id}&show=site"
    driver.get("https://www.healthshare.com.au/directory/find-a-health-professional/")
    time.sleep(2)
    specialty_search = driver.find_element_by_name("specialty")
    specialty_search.send_keys(profession)
    time.sleep(random.randrange(1, 3))
    specialty_search.send_keys(Keys.DOWN)
    time.sleep(random.randrange(1, 3))
    specialty_search.send_keys(Keys.RETURN)
    location_search = driver.find_element_by_name("search-locality")
    location_search.clear()
    location_search.send_keys("Melbourne")
    time.sleep(random.randrange(1, 3))
    location_search.send_keys(Keys.DOWN)
    time.sleep(random.randrange(1, 3))
    location_search.send_keys(Keys.RETURN)
    time.sleep(random.randrange(1, 3))
    try:
        health_fund = driver.find_element_by_name("health_fund")
    except Exception:
        location_search = driver.find_element_by_name("search-locality")
        location_search.send_keys(Keys.RETURN)
    else:
        time.sleep(random.randrange(1, 3))
        location_search.send_keys(Keys.RETURN)


    professional_list = []
    time.sleep(random.randrange(1, 3))
    scroll_to_end(driver)
    requests = driver.requests
    for request in requests:
        if professional_list_url in request.path:
            body = request.response.body
            json_body = json.loads(body)
            if json_body and type(json_body) is not list:
                additional_professionals = json_body.get("results", [])
                professional_list += additional_professionals

    professionals[profession] = professional_list

formatted_professionals = []
for professional_type, professionals_list in professionals.items():
    for professional in professionals_list:
        formatted_professionals += [{
            "id": professional["id"],
            "title": professional["title"],
            "first_name": professional["first_name"],
            "last_name": professional["last_name"],
            "interests_description": professional["interests_description"],
            "offers_telehealth": professional["offers_telehealth"],
            "phone": professional["phone"],
            "practice_id": professional["practice"]["id"],
            "practice_name": professional["practice"]["name"],
            "practice_address": professional["practice"]["address"],
            "practice_locality": professional["practice"]["locality_name"],
            "practice_state": professional["practice"]["locality_state"],
            "practice_phones": ",".join(professional["practice"]["phones"]),
            "practice_url": professional["practice"]["practice_url"],
            "profile_url": professional["profile_url"],
            "specialties": ",".join([profession["name"] for profession in professional["specialties"]]),
        }]


df_columns = [
    "id",
    "title",
    "first_name",
    "last_name",
    "interests_description",
    "offers_telehealth",
    "phone",
    "practice_id",
    "practice_name",
    "practice_address",
    "practice_locality",
    "practice_state",
    "practice_phones",
    "practice_url",
    "profile_url",
    "specialties",
]
df = pd.DataFrame(formatted_professionals)
df.to_csv(f"/Users/elliottlovell/Downloads/professionals_details_{int(time.time())}.csv", columns=df_columns)
driver.close()

