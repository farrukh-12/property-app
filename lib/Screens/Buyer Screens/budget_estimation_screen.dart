import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BudgetEstimationScreen extends StatefulWidget {
  const BudgetEstimationScreen({super.key});

  @override
  State<BudgetEstimationScreen> createState() => _BudgetEstimationScreenState();
}

class _BudgetEstimationScreenState extends State<BudgetEstimationScreen> {
  double _installmentValue = 500;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height*1,
              width: MediaQuery.of(context).size.width*1,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Blumo Affordability Calculator",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600),)
                    ],
                  ),
                  Divider(thickness: 2,),
                  SizedBox(
                    height: 10,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Affordability Calculator",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          "Blumo Affordability Calculator is a powerful tool designed to help individuals gauge their financial readiness for homeownership by estimating their affordability range based on various factors such as income, expenses, and desired home characteristics.",
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff797676)),),
                      ),
                    ],
                  ),
                  TabBar(
                    onTap: (value){setState(() {
                    });},
                    tabs: [
                      Tab(child:Text("Home Price",style: GoogleFonts.lexend(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff185a80)),),
                      ),
                      Tab(child:Text("Payment",style: GoogleFonts.lexend(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff185a80))),),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                        children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text( "You can afford a house upto",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600)),
                            Text("\$248,500",style: GoogleFonts.poppins(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w700)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(text: TextSpan(children: [
                                 TextSpan(text: "Based on your income, a house at this price\n",style: GoogleFonts.poppins(fontSize: 16,color: Colors.black)),
                                  TextSpan(text: "should",style: GoogleFonts.poppins(fontSize: 16,color: Colors.black)),
                                  TextSpan(text: " fit completely ",style: GoogleFonts.poppins(fontSize: 16,color: Colors.green)),
                                  TextSpan(text: "within your budget",style: GoogleFonts.poppins(fontSize: 16,color: Colors.black)),
                                ])),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/pigeonicon.png",height: 50,width: 50,filterQuality: FilterQuality.high,),
                                  Image.asset("assets/houselogo.png",height: 50,width: 50,filterQuality: FilterQuality.high,)
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child:Slider(
                                    value: _installmentValue,
                                    activeColor: Color(0xff185a80),
                                    min: 100, // Minimum installment value
                                    max: 1000, // Maximum installment value
                                    divisions: 9, // Number of divisions between min and max
                                    label: '\$ ${_installmentValue.toStringAsFixed(2)}', // Current installment value label
                                    onChanged: (value) {
                                      setState(() {
                                        _installmentValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Annual Income",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),),
                              ],
                            ),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Income',
                            hintText: "\$ 5000",// Label text
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff185a80)), // Set border color here
                            ), // Border styling
                          ),
                        ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Monthly Debts",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Monthly Debts',
                                hintText: "\$ 500s",// Label text
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff185a80)), // Set border color here
                                ), // Border styling
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Down Payment",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Down Payment',
                                hintText: "\$ 20000",// Label text
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff185a80)), // Set border color here
                                ), // Border styling
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Text("Advanced",style: GoogleFonts.poppins(fontSize: 18,color: Color(0xff185a80),fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                            SizedBox(height: 60,)
                          ],
                        ),
                      ),
                          Container(
                              height: MediaQuery.of(context).size.height*0.5,
                              width: MediaQuery.of(context).size.width*1,
                            child: Center(child: Text("Coming Soon !",style: GoogleFonts.poppins(fontSize: 26,fontWeight: FontWeight.bold,color: Color(0xff185a80)),),),
                          )
                    ]),
                  )
                ],
              ),
            ),
          ),
      ),
    ),
        ));
  }
}
