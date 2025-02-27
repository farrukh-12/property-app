import 'package:blumo_app/Screens/Seller%20Screens/adding_property_screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AddingPropertyScreen1 extends StatefulWidget {
  const AddingPropertyScreen1({super.key});

  @override
  State<AddingPropertyScreen1> createState() => _AddingPropertyScreen1State();
}

class _AddingPropertyScreen1State extends State<AddingPropertyScreen1> {
  int _counter = 0;
  int _counter1 = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;

    });
  }
  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _decrementCounter1() {
    setState(() {
      _counter1--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Step 2 of 4",style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          Padding(padding: const EdgeInsets.all(15.0),
            child:Column(
              children: [
                Row(
                  children: [
                    Text("Start listing your property",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20),)
                  ],
                ),
                Row(
                  children: [
                    Text("Listing details",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize:14,color: Colors.grey),)
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Price', style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.grey)),
                        TextSpan(text: '*', style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.red)),
                      ]),),
                    SizedBox(height: 10,),
                    SizedBox(height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff185A80)),borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Amount of Bedrooms', style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.grey)),
                        TextSpan(text: '*', style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.red)),
                      ]),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       IconButton(
                          onPressed: _decrementCounter,
                          icon: Icon(Icons.remove,color: Color(0xff185A80),),
                        ),
                        Container(
                          width: 22,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Color(0xff185A80))
                          ),
                          child: Center(
                            child: AnimatedOpacity(
                              opacity: _counter != 0 ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 500),
                              child: Text(
                                '$_counter',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: _incrementCounter,
                          icon: Icon(Icons.add,color: Color(0xff185A80),),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Amount of Bathrooms', style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.grey)),
                        TextSpan(text: '*', style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.red)),
                      ]),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: _decrementCounter1,
                          icon: Icon(Icons.remove,color: Color(0xff185A80),),
                        ),
                        Container(
                          width: 22,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Color(0xff185A80))
                          ),
                          child: Center(
                            child: AnimatedOpacity(
                              opacity: _counter1 != 0 ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 500),
                              child: Text(
                                '$_counter1',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: _incrementCounter1,
                          icon: Icon(Icons.add,color: Color(0xff185A80),),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ) ,
          ),
          Positioned.fill(
              bottom: 20,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddingPropertyScreen2()));},
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Color(0xff185A80),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text("Submit",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
