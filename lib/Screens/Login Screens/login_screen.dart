import 'package:blumo_app/Screens/Login%20Screens/signup_screen.dart';
import 'package:blumo_app/Screens/home_screen.dart';
import 'package:blumo_app/Screens/Questions/question_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:sign_button/sign_button.dart';
import 'forget_password_screen.dart';
import '../../Utils/bottom_navbar.dart';
import '../Questions/question_screen2.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
  class _LoginScreenState extends State<LoginScreen> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    bool _isObscure = true;
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    void _togglePasswordVisibility() {
    setState(() {
    _isObscure = !_isObscure;
    });
    }

    void _signInWithEmailAndPassword() async {
      try {
        UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Navigate to home screen upon successful login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuestionScreen()),
        );
      } catch (e) {
        try {
          UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
          );

          // Navigate to home screen upon successful user creation
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuestionScreen()),
          );
        } catch (e) {
          print("Failed to sign in or create user: $e");
          // Handle sign-in or user creation failure, show error message, etc.
        }
      }
    }

    final GlobalKey_formKey = GlobalKey<FormState>();
    bool passenable=true;
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
                          Text("Welcome to the\nmodern era of \nreal estate",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w200,color: Color(0xff185A80)),)
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Row(
                        children: [
                          Text("LOGIN",style: GoogleFonts.poppins(fontSize: 36,fontWeight: FontWeight.w600,color: Color(0xff185A80)),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.9,
                      height:65,
                      child: TextFormField(
                          controller: _emailController,
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
                    SizedBox(height: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 65,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: passenable,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff185A80)),borderRadius: BorderRadius.circular(8)),
                            hintStyle: TextStyle(color: Color(0xff185A80)),
                            labelStyle: TextStyle(color: Color(0xff185A80)),
                            hoverColor: Color(0xff185A80),
                            focusColor: Color(0xff185A80),
                            labelText:"Password",
                            prefixIcon: Icon(Icons.password_rounded,color: Color(0xff185A80),),
                          suffix: IconButton(onPressed: (){
                             setState(() {
                            if(passenable){
                              passenable=false;
                            }
                            else{
                              passenable=true;
                            }
                          });
                        },
                              icon: Icon(passenable==true?Icons.remove_red_eye:Icons.remove_red_eye_outlined),
                        ),
                        ),style: TextStyle(color: Color(0xff185A80),
                      ),
                      ),
                    ),
                    SizedBox(
                      height:5,
                    ) ,
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));},
                              child: Text("Forget password?",style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff185A80)),)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ) ,
                    Row(     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            _signInWithEmailAndPassword();
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
                    SizedBox(
                      height: 15,
                    ) ,
                    Padding(
                      padding: const EdgeInsets.only(right:5.0,left: 5),
                      child: Row(
                        children: [
                          Expanded(child: Divider(thickness: 2,)),
                          Text("  or login with  ",style: GoogleFonts.poppins(fontSize: 14),) ,
                          Expanded(child: Divider(thickness: 2,)),
                        ],
                      ),
                    ) ,
                    SizedBox(
                      height: 10,
                    ) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SignInButton.mini(buttonType: ButtonType.google, onPressed: (){},buttonSize: ButtonSize.small,),
                        SignInButton.mini(buttonType: ButtonType.apple, onPressed: (){},buttonSize: ButtonSize.small,) ,
                        SignInButton.mini(buttonType: ButtonType.facebook, onPressed:(){},buttonSize: ButtonSize.small,)
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have account?",style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff185A80)),),
                        InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));},
                            child: Text("Signup",style: GoogleFonts.poppins(fontSize: 14,color: Colors.blue),))

                      ],
                    )
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


