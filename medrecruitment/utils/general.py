"""
Helper functions that can be used for all models
"""
import random
import uuid

ALLOWED_CHARSET = [
    "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", 
    "V", "W", "X",  "Y", "Z", "2", "3", "4", "5", "6", "7", "8", "9"
]


def create_uid():
    """
    UUID without dashes (v4)
    """
    return str(uuid.uuid4()).replace("-", "")


def create_user_id():
    """
    Generate user id
    """
    return "U" + "".join(random.choice(ALLOWED_CHARSET) for _ in range(7))



