# Import the original settings from each template
from .basesettings import *

try:
    from .local import *
except ImportError:
    pass

# Pulling dotenv settings file, stored in Secret Manager
import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Could be more explicitly set (see "Improvements")
ALLOWED_HOSTS = ["*"]

# Default false. True allows default landing pages to be visible
DEBUG = os.environ.get("DEBUG", False)

INSTALLED_APPS += ["storages"] # for django-storages
# if "dev-nexos" not in INSTALLED_APPS:
#     INSTALLED_APPS += ["dev-nexos"] # for custom data migration

# Define static storage via django-storages[google]
GS_BUCKET_NAME = os.environ.get("GS_BUCKET_NAME")
STATICFILES_DIRS = []
DEFAULT_FILE_STORAGE = "storages.backends.gcloud.GoogleCloudStorage"
STATICFILES_STORAGE = "storages.backends.gcloud.GoogleCloudStorage"
GS_DEFAULT_ACL = "publicRead"