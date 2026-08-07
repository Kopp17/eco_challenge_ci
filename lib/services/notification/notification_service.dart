import 'package:flutter/foundation.dart';


class NotificationService {


  Future<void> sendNotification({

    required String title,

    required String message,

  }) async {


    // Notifications Firebase à venir


    debugPrint("$title : $message");


  }


}