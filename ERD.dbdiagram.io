
Table patients {
  patientID int [pk]
  email varchar(100)
  password varchar(100)
  pin varchar(10)
  gender varchar(10)
  cholesterollevel varchar(100)
  isSmoker tinyint(1)
  isHavingHypertension tinyint(1)
  createdAt timestamp
  updatedAt timestamp
  isDeleted tinyint(1)
}

Table consultation {
  consultationID int [pk]
  patientID int [ref: > patients.patientID]
  created_at timestamp [default: `CURRENT_TIMESTAMP`]
  status varchar(50) [default: "pending"]
  consultation_time datetime
}

Table detail_medicine {
  ID int [pk]
  patientID int [ref: > patients.patientID]
  medID int [ref: > master_medicine.medID]
  frequency varchar(50)
  notes text
}

Table ecg {
  ecg_id int [pk]
  patientId int [ref: > patients.patientID]
  ecgValue int
  bpmValue int
  createdAt timestamp [default: `CURRENT_TIMESTAMP`]
}

Table hospital {
  hospitalId int [pk]
  name varchar(100)
  address varchar(200)
  phone varchar(20)
}

Table master_medicine {
  medID int [pk]
  medName varchar(100)
  dosage varchar(50)
  category varchar(50)
}

Table model_inference_logs {
  inference_id int [pk]
  inference_status int
  message varchar(200)
}

Table model_results {
  record_id int [pk]
  patientId int [ref: > patients.patientID]
  feature_store longtext
  model_id int
  model_prediction int
  exc_time_sec float
  data_snapshot_dt timestamp [default: `CURRENT_TIMESTAMP`]
  prc_dt timestamp [default: `CURRENT_TIMESTAMP`]
}

Table model_training_logs {
  model_id int [pk]
  model_name varchar(100)
  model_version varchar(50)
  cloud_storage_uri varchar(300)
  metrics_train longtext
  metrics_valid longtext
  device_type varchar(3)
  device_name varchar(100)
  device_count int
  exc_time_sec float
  data_snapshot_dt timestamp
  prc_dt timestamp
}  
