# SCD Heart Monitoring Backend

Backend service untuk **SCD Heart Monitoring**, menggunakan Python, Flask, dan Google Cloud.

---

## Table of Contents
- [Prasyarat](#prasyarat)
- [Instalasi Lokal](#instalasi-lokal)
- [Deployment Produksi](#deployment-produksi)
- [Struktur Folder](#struktur-folder)

---

## Prasyarat

Pastikan sudah menginstal:

- Python 3.12+
- Docker & Docker Compose (untuk deployment)
- Google Cloud Service Account (file JSON)

---

## Instalasi Lokal

1. Clone repository:

```bash
git clone <REPO_URL>
cd <PROJECT_FOLDER>
```

2. Make python virtual environment

```bash
python -m venv venv
# Linux / Mac
source venv/bin/activate
# Windows
venv\Scripts\activate
```

3. Install requirements.txt

```bash
pip install -r requirements.txt
```

4. Set local environment

```bash
set GOOGLE_APPLICATION_CREDENTIALS=path\to\service-account-key.json (Windows)
```

5. Run python app

```bash
python app.py
```

## Deployment Produksi

```bash
docker compose up -d --build
```

## Struktur Folder
```bash
backend/
│
├─ misc/                  # File tambahan dan utility
├─ models/                # Model database
├─ mosquitto/             # Konfigurasi MQTT broker
├─ services/              # Service layer untuk patient, medicine, ECG, dll
├─ __pycache__/           # Cache Python
├─ app.py                 # Entry point Flask application
├─ docker-compose.yaml    # Docker Compose configuration
├─ Dockerfile             # Dockerfile untuk build image
├─ requirements.txt       # Dependencies Python
├─ .env.example           # Contoh environment file
├─ service-account-key.json # Google Cloud credentials
├─ test_conn.py           # Script testing koneksi
├─ README.md              # Dokumentasi ini
```