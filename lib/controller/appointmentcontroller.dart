import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class AppointmentController extends GetxController {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController phoneNumCtrl = TextEditingController();

  final TextEditingController alterPhoneCtrl = TextEditingController();
  final TextEditingController messageCtrl = TextEditingController();

  String validateAppointment() {
    final RegExp nameRegExp = RegExp(r'[a-zA-Z\s]+');
    final RegExp phoneRegExp = RegExp(
        r'^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[7896]\d{9}|(\d[ -]?){10}\d$'); //(r'[0-9]');
    final RegExp emailRegExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'); //(r'^[a-zA-Z0-9_@.-]+');
    // Validation for each field

    if (nameCtrl.text.isEmpty &&
        phoneNumCtrl.text.isEmpty &&
        emailCtrl.text.isEmpty &&
        alterPhoneCtrl.text.isEmpty &&
        messageCtrl.text.isEmpty) {
      return 'Please fill the details';
    }
    if (nameCtrl.text.isEmpty || !nameRegExp.hasMatch(nameCtrl.text)) {
      return 'Please enter a valid name';
    }
     if (emailCtrl.text.isEmpty || !emailRegExp.hasMatch(emailCtrl.text)) {
      return 'Please enter vaild e-mail';
    }
    if (phoneNumCtrl.text.isEmpty || !phoneRegExp.hasMatch(phoneNumCtrl.text)) {
      return 'Please enter a valid 10-digit phone number';
    }
    return "";
  }

  Future sendAppointUserEmail(
      {required String name,
      required String email,
      required String mobile,
      String? altmobno,
      String? msg}) async {
    const serviceId = 'service_r3ybd0s';
    const templateId = 'template_jmgn5pd';
    const userId = 'u4CcmrAA8dSNowyBW';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'sendername': name,
          'sendermobileno': mobile,
          'senderaltmobno': altmobno,
          'senderemail': email,
          'message': msg,
        },
      }),
    );
    print(response.body);
    if (response.statusCode == 200) {
      print("Mail Success");
      return true;
    } else {
      return false;
    }
  }

/*   Future sendAppointUserEmail() async {
    String username = 'ghscareplus@outlook.com';
    String password = 'Careplus@2023';
    final smtpServer = SmtpServer('smtp.office365.com',
        username: username,
        password: password,
        port: 587,
        ssl: false,
        allowInsecure: true);

    final message = Message()
      ..from = Address(username, 'GHSCAREPLUS')
      ..recipients.add('nishanathan2305@gmail.com')
      ..subject = 'Appointment Mail from GHSCarePlus'
      ..text =
          'Hello dear, I am sending you an email from a Flutter application';

    try {
      final sendReport = await send(message, smtpServer);
      print("Mail Success");
    } on MailerException catch (e) {
      print('Message not sent.');
      print(e.message);
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  } */
  /*  Future<void> sendEmail() async {
  final smtpServer = SmtpServer('<your_smtp_server>',
      username: '<your_username>', password: '<your_password>');

  final message = Message()
    ..from = Address('<your_email_address>', '<your_name>')
    ..recipients.add('<recipient_email_address>')
    ..subject = 'Hello from Flutter!'
    ..text = 'This is the plain text body of the email.'
    ..html = '<h1>HTML body of the email</h1>';

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ${sendReport.sent}');
  } catch (e) {
    print('Error occurred while sending email: $e');
  }
} */
}
