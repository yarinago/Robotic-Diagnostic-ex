FROM python:3.8-slim-buster

# Build dependencies
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        build-essential libpq-dev

# Pip dependencies
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

ENV BACKEND_STORE_URI="postgres-connection-string" 
ENV DEFAULT_ARTIFACT_ROOT="S3 or some local path"

# Port
EXPOSE 80

CMD mlflow server --host 0.0.0.0 --port 80 --backend-store-uri ${BACKEND_STORE_URI} --server-artifact --artifact-destination ${DEFAULT_ARTIFACT_ROOT}