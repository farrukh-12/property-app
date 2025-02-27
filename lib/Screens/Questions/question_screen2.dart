import 'dart:convert';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';
import 'question_screen3.dart';

class QuestionScreen2 extends StatefulWidget {
  final String userType;

  QuestionScreen2({Key? key, required this.userType}) : super(key: key);

  @override
  State<QuestionScreen2> createState() => _QuestionScreen2State();
}

class _QuestionScreen2State extends State<QuestionScreen2> {
  String? currentLocation;
  bool isLoading = false;
  String? errorMessage;
  TextEditingController _locationController = TextEditingController();
  List<String> _suggestions = [];
  String? _currentAddress;
  Position? _currentPosition;

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }
  @override
  Future<void> _fetchLocationSuggestions(String input) async {
    final apiKey = 'AIzaSyB5A8LbYFFRjfwRqeh5WmtyOV1IZ9dwJhQ';
    final sessionToken = generateSessionToken(); // You can generate a session token for each user session

    final request =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&types=geocode&language=en&key=$apiKey&sessiontoken=$sessionToken';

    final response = await http.get(Uri.parse(request));

    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      if (result['status'] == 'OK') {
        setState(() {
          _suggestions = List<String>.from(result['predictions']
              .map((prediction) => prediction['description']));
        });
      } else {
        setState(() {
          _suggestions = []; // Clear suggestions if no results
        });
      }
    } else {
      // Handle error
      print('Failed to fetch suggestions');
    }
  }
  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
      _getAddressFromLatLng(_currentPosition!);
    }).catchError((e) {
      debugPrint(e);
    });
  }
  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
        _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
        '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Do you know your \ndesired location?",
                        style: GoogleFonts.modak(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0220C2)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "you can find location, city , or zip code",
                        style: GoogleFonts.getFont("Mitr",
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff185a80)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 65,
                    width: 365,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.search,color: Color(0xff0220C2),size: 35,),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            controller: _locationController,
                            decoration: InputDecoration.collapsed(
                              hintText: "${_currentAddress ?? ""}",
                            ),
                            onChanged: (value) {
                              // Call method to fetch location suggestions
                              _fetchLocationSuggestions(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Use ListView or any suitable widget to display suggestions
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: _suggestions.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_suggestions[index]),
                            onTap: () {
                              _locationController.text = _suggestions[index];
                              setState(() {
                                _suggestions.clear(); // Clear suggestions after selection
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _getCurrentPosition();
                        },
                        child: Text(
                          "or use current location",
                          style: GoogleFonts.getFont("Mitr",
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff185a80),
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 45,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionScreen3(),
                            ),
                          );
                        },
                        child: Icon(Icons.arrow_forward_ios),
                        backgroundColor: Color(0xff0220C2),
                      ),
                      Text(
                        "Skip",
                        style: GoogleFonts.mitr(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff185a80),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
String generateSessionToken() {
  var uuid = Uuid();
  return uuid.v4();
}