import firebase_admin
from firebase_admin import credentials, messaging

cred = credentials.Certificate("firebase-service-account.json")

firebase_admin.initialize_app(cred)


def send_fcm(device_token, title, body):
    print("Hello", flush=True)
    message = messaging.Message(
        notification=messaging.Notification(
            title=title,
            body=body
        ),
        token=device_token
    )

    response = messaging.send(message)
    print("FCM response : ", response, flush=True)
    return response