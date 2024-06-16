import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/widgets/custom_cta_button.dart';
import 'package:mobile_app/widgets/custom_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordRepeatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          "PaperVault",
          style: GoogleFonts.arsenal(            
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold       
          )
        )
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,      
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0), 
            child: Container(         
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade200,
                borderRadius: BorderRadius.circular(15)
              ),
              child: SingleChildScrollView(
                child: Padding(              
                  padding: EdgeInsets.all(16.0),
                  child: Form(         
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.arsenal(            
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.w700     
                            )
                          )
                        ),
                        const SizedBox(height: 25),
                        CustomTextFormField(
                          hintText: "Name",
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          }
                        ),
                        const SizedBox(height: 25),
                        CustomTextFormField(
                          hintText: "Last Name",
                          controller: lastNameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          }
                        ),
                        const SizedBox(height: 25),
                        CustomTextFormField(
                          hintText: "Email",
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          }
                        ),
                        const SizedBox(height: 20),
                        CustomTextFormField(
                          hintText: "Password",
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          }
                        ),
                        const SizedBox(height: 20),
                        CustomTextFormField(
                          hintText: "Repeat password",
                          controller: passwordRepeatController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          }
                        ),                      
                        const SizedBox(height: 20),
                        Center(                
                          child: CustomCTAButton(text: "Sign Up", onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Process the login if form inputs are valid
                                print("Username and Password validated!");
                              }
                            }
                          ),
                        )
                      ],
                    ),
                  ),
                )
              )
            ),
          ),
        ),
      ),
    );
  }
}