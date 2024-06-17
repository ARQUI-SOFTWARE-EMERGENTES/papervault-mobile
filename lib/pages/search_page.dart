import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/common/routers.dart';
import 'package:mobile_app/widgets/custom_cta_button.dart';
import 'package:mobile_app/widgets/custom_navigation_bar.dart';
import 'package:mobile_app/widgets/custom_text_form_field.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController keywordsController = TextEditingController();

  String? _selectedDropdownValue;

  void onDropdownChanged(String? value) {
    if (value is String) {
      setState(() {
        _selectedDropdownValue = value;
      });
    }
  }

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
                          "Search documents",
                          style: GoogleFonts.arsenal(            
                            color: Colors.black,
                            fontSize: 45,
                            fontWeight: FontWeight.w700     
                          )
                        )
                      ),
                      const SizedBox(height: 25),                    
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),                          
                        ),
                        child: DropdownButton(
                          items: const[
                            DropdownMenuItem(value: "Article", child: Text("Article", style: TextStyle(color: Colors.black54))),
                            DropdownMenuItem(value: "Review", child: Text("Review", style: TextStyle(color: Colors.black54))),
                          ], 
                          value: _selectedDropdownValue,
                          onChanged: onDropdownChanged,
                          isExpanded: true,
                          iconSize: 35,
                          style: GoogleFonts.arsenal(            
                            color: Colors.black,
                            fontSize: 20                           
                          ),
                         ),
                      ),
                      const SizedBox(height: 25),
                      CustomTextFormField(
                        hintText: "Keywords",
                        controller: keywordsController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        }
                      ),
                      const SizedBox(height: 20),
                      Center(                
                        child: CustomCTAButton(
                          text: "Search",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              
                              
                            }
                            Navigator.pushNamed(context, ROUTE_SEARCH_RESULTS);
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
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}