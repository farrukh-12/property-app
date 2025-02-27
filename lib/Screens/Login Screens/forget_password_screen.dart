import 'package:blumo_app/Screens/Login%20Screens/sendotp_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAF4FF),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        child: Column(
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Stack(
                                    children:[
                                      Image.asset("assets/Ellipse 14.png",),
                                      Positioned(left:100,child:Image.asset("assets/blumo.png",height: 290,width: 330),)
                                    ])
                              ],
                            )
                          ],
                        )
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Row(
                        children: [
                          Text("Forgot\nPassword",style: GoogleFonts.poppins(fontSize: 36,fontWeight: FontWeight.w600,color: Color(0xff185A80)),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Row(
                        children: [
                          Text("Please enter your email address to get\na verification code",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w300,color: Color(0xff185A80)),)
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),

                    SizedBox(
                      width: 350,
                      height:65,
                      child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff185A80)),borderRadius: BorderRadius.circular(8)),
                              hintStyle: TextStyle(color: Color(0xff185A80)),
                              labelStyle: TextStyle(color: Color(0xff185A80)),
                              hoverColor: Color(0xff185A80),
                              focusColor: Color(0xff185A80),
                              labelText:"Email",
                              prefixIcon: Icon(Icons.person,color: Color(0xff185A80),)
                          ),style: TextStyle(color: Color(0xff185A80)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          }
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SendOtp()));
                          },
                          child: Container(
                            height: 45,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8) ,
                              color: Color(0xff185A80),
                            ),
                            child: Center(
                              child: Text("Submit",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          ),
                        ) ,
                      ],
                    ) ,
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
