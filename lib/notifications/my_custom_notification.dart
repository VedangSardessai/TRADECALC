import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_fcm/flutter_fcm.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class MyNotifications {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static String? token;

  static initFCM() async {
    await FCM.initializeFCM(
        onNotificationPressed: (Map<String, dynamic> data) {},
        onTokenChanged: (String? token) {
          MyNotifications.token = token!;
        },
        onNotificationReceived: (RemoteMessage message) {
          throw ('hello');
        },
        icon: 'logo');
  }

  void showTextNotification(String title, String body) async {
    // initializeFirebasePushNotification();

    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      'channelId',
      'channelName',
      priority: Priority.high,
      importance: Importance.max,
    );

    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);

    await _flutterLocalNotificationsPlugin.show(
        0, title, body, notificationDetails);
  }
}
