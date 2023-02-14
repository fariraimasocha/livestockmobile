import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationView extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();
  final bool _emailHasError = false;
  RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text('Registration'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 240,
                  width: 240,
                  child: Image.asset('assets/images/LATS1.png')),
            ]),
          ),
          FormBuilder(
              child: Column(
            key: _formKey,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.92,
                child: FormBuilderTextField(
                  name: 'Username',
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',

                    hintStyle: TextStyle(
                      color: Colors.orange,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.7, color: Colors.grey),
                    ),
                    //labelText: 'Username',
                  ),
                  style: GoogleFonts.dosis(
                    color: Colors.orange,
                  ),
                  //name: 'Username'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.92,
                child: FormBuilderTextField(
                  name: 'Email',
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.orange,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.7, color: Colors.grey),
                    ),
                    //labelText: 'Email',
                  ),
                  style: GoogleFonts.dosis(color: Colors.orange),
                  //name: 'Email'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.92,
                child: FormBuilderTextField(
                  name: 'Mobile',
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Phone number',

                    hintStyle: TextStyle(
                      color: Colors.orange,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.7, color: Colors.grey),
                    ),
                    //labelText: 'Mobile',
                  ),
                  style: GoogleFonts.dosis(
                    color: Colors.orange,
                  ),
                  //name: 'Mobile'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.92,
                child: FormBuilderTextField(
                  name: 'Password',
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',

                    hintStyle: TextStyle(
                      color: Colors.orange,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.7, color: Colors.grey),
                    ),
                    //labelText: 'Password',
                  ),
                  style: GoogleFonts.dosis(
                    color: Colors.orange,
                  ),
                  //name: 'Password'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      'Register',
                      style: GoogleFonts.dosis(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    )),
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Sign in',
                            style:
                                TextStyle(color: Colors.orange, fontSize: 15))
                      ]),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
