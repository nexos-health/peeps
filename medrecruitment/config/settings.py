# Import the original settings from each template
from .basesettings import *

try:
    from .local import *
except ImportError:
    pass

# Pulling dotenv settings file, stored in Secret Manager
import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
env_file = os.path.join(BASE_DIR,  ".env")

SETTINGS_NAME = "application_settings"

if not os.path.isfile('.env'):
    import google.auth
    from google.cloud import secretmanager_v1beta1 as sm

    _, project = google.auth.default()

    if project:
        client = sm.SecretManagerServiceClient()
        path = client.secret_version_path(project, SETTINGS_NAME, "latest")
        payload = client.access_secret_version(path).payload.data.decode("UTF-8")

        with open(env_file, "w") as f:
            f.write(payload)

load_dotenv(find_dotenv())

# Setting this value from dotenv
SECRET_KEY = os.environ.get("SECRET_KEY", SECRET_KEY)

# Could be more explicitly set (see "Improvements")
ALLOWED_HOSTS = ["*"]

# Default false. True allows default landing pages to be visible
DEBUG = os.environ.get("DEBUG", False)

# Setting this value from dotenv
DATABASES = {
    'default': dj_database_url.config(default='sqlite:///{0}'.format('db.sqlite3'))
}

INSTALLED_APPS += ["storages"] # for django-storages
# if "dev-nexos" not in INSTALLED_APPS:
#     INSTALLED_APPS += ["dev-nexos"] # for custom data migration

# Define static storage via django-storages[google]
GS_BUCKET_NAME = os.environ.get("GS_BUCKET_NAME")
STATICFILES_DIRS = []
DEFAULT_FILE_STORAGE = "storages.backends.gcloud.GoogleCloudStorage"
STATICFILES_STORAGE = "storages.backends.gcloud.GoogleCloudStorage"
GS_DEFAULT_ACL = "publicRead"