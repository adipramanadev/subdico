import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_common.dart';

class OtpVersifications extends StatefulWidget {
  const OtpVersifications({super.key});

  @override
  State<OtpVersifications> createState() => _OtpVersificationsState();
}

class _OtpVersificationsState extends State<OtpVersifications> {
  late Timer _timer;
  int _start = 60;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        centerTitle: true,
        titleTextStyle: hsBoldTextStyle(size: 20),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Kode Otentikasi telah dikirim ke',
              style: hsSecondaryTextStyle(),
            ),
            SizedBox(height: 8),
            Text(
              '(+62) 812 3456 7890',
              style: hsPrimaryTextStyle(color: secondaryColor),
            ),
            SizedBox(height: 30),
            OTPTextField(
              length: 4,
              width: 250,
              fieldWidth: 50,
              style: hsPrimaryTextStyle(size: 17),
              textFieldAlignment: MainAxisAlignment.spaceBetween,
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                  enabledBorderColor: borderColor,
                  focusBorderColor: borderColor),
              onChanged: (vlaue) {},
            ),
            SizedBox(height: 16),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return LoginScreen();
                  //     },
                  //   ),
                  // );
                },
                child: Text('Kirim',
                    style: hsPrimaryTextStyle(color: Colors.white)),
                style: primaryButtonStyle(),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Kode terkirim? Kirim ulang Kode masuk\t',
                  style: hsPrimaryTextStyle(),
                ),
                Text('00:$_start',
                    style: hsPrimaryTextStyle(color: secondaryColor)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
