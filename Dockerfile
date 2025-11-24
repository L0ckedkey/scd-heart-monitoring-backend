# Base image
FROM gregoriusnatanael99/scd_flask:cloud_1
ENV GOOGLE_APPLICATION_CREDENTIALS="/app/service-account-key.json"

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt
COPY service-account-key.json /app/service-account-key.json
EXPOSE 8003

# Start the Flask app
CMD ["gunicorn", "--bind", "0.0.0.0:8003", "--workers", "1", "app:app"]
