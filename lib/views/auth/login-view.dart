import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormBuilderState>();
  final bool _emailHasError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 48,
                    width: 48,
                    child: Image.asset('assets/images/LATS3.png')),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      style: GoogleFonts.dosis(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 44,
                      ),
                      text: "L"),
                  TextSpan(
                      style: GoogleFonts.dosis(
                        color: Colors.black,
                        fontSize: 34,
                      ),
                      text: "ive"),
                  TextSpan(
                      style: GoogleFonts.dosis(
                          fontSize: 34,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                      text: "stock"),
                  TextSpan(
                      style: GoogleFonts.dosis(
                        color: Colors.black,
                        fontSize: 34,
                      ),
                      text: "Antitheft"),
                ])),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: 1,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
          Text(
            'Protecting, Your Livestock',
            style: GoogleFonts.dosis(fontWeight: FontWeight.w800, fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
          FormBuilder(
              child: Column(
            key: _formKey,
            children: [
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
                      'Login',
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
                      text: 'Don\'t have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Sign up',
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
