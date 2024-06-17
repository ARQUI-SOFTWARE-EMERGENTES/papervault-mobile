// lib/widgets/custom_search_result.dart
import 'package:flutter/material.dart';
import '../models/research.dart'; // Adjust the import path accordingly

class CustomSearchResult extends StatelessWidget {
  final ResearchRecord researchRecord;

  CustomSearchResult({required this.researchRecord});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      width: MediaQuery.of(context).size.width * 0.85,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(color: Colors.black,width: .8)
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                researchRecord.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Authors: Example Author(s)",  // Placeholder for authors
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Submitted on: ${researchRecord.submissionDate.toLocal().toIso8601String().substring(0, 10)}",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
