// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                // ignore: prefer_const_constructors
                image: AssetImage("assets/images/back3.jpg")),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/LATS4.png')),
              Center(
                child: Text(
                  'Welcome to Antitheft Mobile Application',
                  style: GoogleFonts.dosis(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 28),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.88,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      'Register',
                      style: GoogleFonts.dosis(
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.88,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                    'Login',
                    style: GoogleFonts.dosis(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
