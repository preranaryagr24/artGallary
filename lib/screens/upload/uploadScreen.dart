// ignore: file_names
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  String _productName = '';
  String _productDescription = '';
  double _productPrice = 0.0;
  File? _image;

  final _formKey = GlobalKey<FormState>();

  Future getImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(34, 53, 238, 192),
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.1),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70),
              Text(
                'ADD ART',
                style: TextStyle(
                    color: Color.fromARGB(223, 228, 238, 238),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 8.0,
                        color: Color.fromARGB(125, 0, 0, 255),
                      ),
                    ],
                    fontFamily: GoogleFonts.montserrat().fontFamily),
              ),
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GestureDetector(
                          onTap: getImage,
                          child: _image != null
                              ? Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      image: FileImage(_image!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              : Container(
                                  padding: EdgeInsets.all(20),
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  child: Icon(
                                    Icons.add_photo_alternate,
                                    color: Color.fromARGB(166, 5, 5, 5),
                                    size: 80.0,
                                  ),
                                ),
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          style: TextStyle(fontSize: 18.0),
                          decoration: InputDecoration(
                            labelText: 'Title',
                            labelStyle: TextStyle(
                                color: Color.fromARGB(166, 5, 5, 5),
                                fontFamily:
                                    GoogleFonts.montserrat().fontFamily),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a title';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _productName = value!;
                          },
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          style: TextStyle(fontSize: 18.0),
                          decoration: InputDecoration(
                            labelText: 'Description',
                            labelStyle: TextStyle(
                                color: Color.fromARGB(166, 5, 5, 5),
                                fontFamily:
                                    GoogleFonts.montserrat().fontFamily),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a description';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _productDescription = value!;
                          },
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          style: TextStyle(fontSize: 18.0),
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Price',
                            labelStyle: TextStyle(
                                color: Color.fromARGB(166, 5, 5, 5),
                                fontFamily:
                                    GoogleFonts.montserrat().fontFamily),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a price';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Please enter a valid number';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _productPrice = double.parse(value!);
                          },
                        ),
                        SizedBox(height: 24.0),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // Save the product details to a database or API
                              // and navigate back to the previous screen.
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Submit Art',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(198, 53, 238, 192),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(198, 53, 238, 192)),
              label: "Home"),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.upload, color: Color.fromARGB(198, 53, 238, 192)),
              label: "Upload"),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.person, color: Color.fromARGB(198, 53, 238, 192)),
              label: "Profile")
        ],
      ),
    );
  }
}
