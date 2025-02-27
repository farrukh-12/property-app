import 'package:blumo_app/Screens/Questions/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/Screens/home_screen.dart';
import 'package:blumo_app/Utils/bottom_navbar.dart';
import 'question_screen3.dart';

class QuestionScreen4 extends StatefulWidget {
   QuestionScreen4({super.key});

  @override
  State<QuestionScreen4> createState() => _QuestionScreen4State();
}

class _QuestionScreen4State extends State<QuestionScreen4> {
  double _currentSliderValue =500;
  RangeValues _currentSliderValues = const RangeValues(80,1000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Let's find best house for you",style: GoogleFonts.getFont("Mitr",fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff185a80)),),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("What’s your price\nrange?",style:GoogleFonts.modak(fontSize: 41,fontWeight: FontWeight.w400,color: Color(0xff185a80)),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: RangeSlider(
                        max: 1000,
                        min: 80,
                        divisions: 5,
                        labels: RangeLabels(
                          _currentSliderValues .start.round().toString(),
                          _currentSliderValues .end.round().toString(),
                        ),
                        activeColor: Color(0xff4DCBF3),
                        inactiveColor: Colors.grey,
                        semanticFormatterCallback: (double newValue) {
                          setState(() {

                          });
                          return '${newValue.round()} Million';
                        }  ,
                     values: _currentSliderValues, onChanged: (RangeValues value) { setState(() {
                      _currentSliderValues = RangeValues(value.start,value.end);
                    });   },

                    ),
                  )
                ],
              )
            ],
          ),
        ),
          Positioned(bottom: 45,child: Center(child: Container(width:MediaQuery.of(context).size.width,child: Column(
            children: [
              FloatingActionButton(
                onPressed: (){
                  String userType = "buyer";
                  if (userType == "seller") {
                  /*Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => BottomNavBar(userType: "seller"), // Replace SellerScreen with your actual seller screen
                  ),
                  );*/
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(userType: "buyer"),
                      ),
                    );
                  }
                  },
                child: Icon(
                    Icons.arrow_forward_ios
                ),),
              Text("Skip",style: GoogleFonts.mitr(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff185a80),decoration:TextDecoration.underline),),
            ],
          ))),),

        ]
      ),
    );
  }
}
