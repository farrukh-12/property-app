import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class SendOtp extends StatefulWidget {
  const SendOtp({Key? key}) : super(key: key);

  @override
  State<SendOtp> createState() => _SendOtpState();
}

class _SendOtpState extends State<SendOtp> {
  int _start = 60;
  late Timer _timer;

  String get timerText {
    int minutes = (_start ~/ 60);
    int seconds = (_start % 60);
    String minutesStr = (minutes < 10) ? '0$minutes' : '$minutes';
    String secondsStr = (seconds < 10) ? '0$seconds' : '$seconds';
    return '$minutesStr:$secondsStr';
  }
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
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
    _timer.cancel(); // Cancel the timer to prevent memory leaks
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffDAF4FF),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(color: Color(0xff185A80), width: 2),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: (){Navigator.pop(context);},
                          child: Icon(Icons.arrow_back_ios_new,
                              size: 20, color: Color(0xff252B5C)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Enter the ',
                            style: GoogleFonts.poppins(
                                fontSize: 25, color: Color(0xff252B5C))),
                        TextSpan(
                            text: 'code',
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff234F68))),
                      ]),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text:
                            'Enter the 4 digit code that we just sent to \n',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: Color(0xff252B5C))),
                        TextSpan(
                            text: 'Email',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff234F68))),
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              OtpTextField(
                numberOfFields: 4,
                fieldWidth: 70,
                borderColor: Color(0xff185A80),
                enabledBorderColor: Colors.white,
                filled: true,
                fillColor: Color(0xFFFFFFFF),
                focusedBorderColor: Color(0xff185A80),
                showFieldAsBox: true,
                textStyle:
                GoogleFonts.poppins(fontSize: 18, color: Color(0xff185A80)),
                borderRadius: BorderRadius.circular(10),
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    },
                  );
                },
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                    color: Colors.white),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.timer_outlined,color: Color(0xff234F68)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            timerText,
                            style: TextStyle(fontSize: 16,color: Color(0xff252B5C)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Did not received the OTP? ',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Color(0xff252B5C))),
                      TextSpan(
                          text: 'Resend OTP',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff234F68))),
                    ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
