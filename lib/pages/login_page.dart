import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/widgets/custom_cta_button.dart';
import 'package:mobile_app/widgets/custom_text_form_field.dart';
import 'package:mobile_app/pages/search_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
          width: MediaQuery.of(context).size.width * 0.9, // Set container width as 90% of screen width
          height: MediaQuery.of(context).size.height * 0.6,      
          child: Container(         
            decoration: BoxDecoration(
              color: Colors.lightBlue.shade200,
              borderRadius: BorderRadius.circular(15)
            ),
            padding: EdgeInsets.all(16.0),
            child: Form(         
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Login",
                      style: GoogleFonts.arsenal(            
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.w700     
                      )
                    )        
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
                  Center(                
                    child: CustomCTAButton(text: "Sign In", onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Process the login if form inputs are valid
                          print("Username and Password validated!");
                        }
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
                      }
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
