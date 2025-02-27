import 'dart:io';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:blumo_app/Screens/Seller%20Screens/adding_property_screen1.dart';
import 'package:blumo_app/Screens/Seller%20Screens/owner_dashboard_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddingPropertyScreen2 extends StatefulWidget {
  const AddingPropertyScreen2({Key? key}) : super(key: key);

  @override
  State<AddingPropertyScreen2> createState() => _AddingPropertyScreen2State();
}

class _AddingPropertyScreen2State extends State<AddingPropertyScreen2> {
  List<XFile>? _imageFiles = [];

  Future<void> _pickImages() async {
    final ImagePicker _picker = ImagePicker();
    List<XFile>? images = await _picker.pickMultiImage();
    if (images != null && images.isNotEmpty) {
      setState(() {
        _imageFiles = images;
      });
    }
  }

  @override
  bool _animate = true;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Step 3 of 4",
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body:Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Start listing your property",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Listing details",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Container(
                        height: 250,
                        width: 450,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add_a_photo_outlined,size: 100,)
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Drag and Drop images here",style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: _pickImages,
                                  child: Text("Select Images"),
                                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff185A80)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _imageFiles != null && _imageFiles!.isNotEmpty
                      ? Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                      ),
                      itemCount: _imageFiles!.length,
                      itemBuilder: (context, index) {
                        return Image.file(
                          File(_imageFiles![index].path),
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  )
                      : Container(),
                ],
              ),
            ),
            Positioned(bottom:30,left:0,right:0,child: Center(
              child: InkWell(onTap: (){showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 370,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(height: 3,
                                width: 50,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(4),
                                 color: Colors.grey
                               ),)
                              ],
                            ),
                            SizedBox(height: 50,),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AvatarGlow(
                                  startDelay: const Duration(milliseconds: 1000),
                                  glowColor: Colors.green,
                                  glowShape: BoxShape.circle,
                                  animate: _animate,
                                  curve: Curves.easeOut,
                                  child:  Material(
                                      elevation: 8.0,
                                      shape: CircleBorder(),
                                      child: Container(height:70,width:70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors:[Color(0xff8BC83F),Color(0xff234F68)])),
                                      child: Center(child: Text("✓",style: TextStyle(fontSize: 20,color: Colors.white),)),
                                      )
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30,),

                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(text: '          Your listing just\n', style: GoogleFonts.lato(fontSize: 25,color: Color(0xff252B5C))),
                                    TextSpan(text: 'successfully', style: GoogleFonts.lato(fontSize: 25,fontWeight: FontWeight.w900,color: Color(0xff234F68))),
                                    TextSpan(text: " Uploaded!",style: GoogleFonts.poppins(fontSize: 25,color: Color(0xff252B5C)))
                                  ]),)],
                            ),
                            SizedBox(height: 50,),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OwnerDashboard()));},

                                  child: Container(
                                    height: 55,
                                    width: 270,
                                    decoration: BoxDecoration(
                                        color: Color(0xff8BC83F),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Center(child: Text("Finish",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),),
                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24),))
              );},
                child: Container(height: 50,width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff185A80),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Submit",style: GoogleFonts.poppins(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold ),),),
                ),
              ),
            ))

          ],
        ),
      ),
    );
  }
}
