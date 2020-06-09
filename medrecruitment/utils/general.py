"""
Helper functions that can be used for all models
"""
import uuid


def create_uuid():
    """
    UUID without dashes (v4)
    """
    return str(uuid.uuid4()).replace('-', '')



