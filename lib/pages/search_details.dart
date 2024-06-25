import 'package:flutter/material.dart';
import 'package:mobile_app/models/research.dart';

class ResearchDetailsPage extends StatelessWidget {
  final ResearchRecord researchRecord;

  ResearchDetailsPage({required this.researchRecord});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(researchRecord.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              researchRecord.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "Abstract: ${researchRecord.abstractText}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Content: ${researchRecord.content}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Review Status: ${researchRecord.reviewStatus.toString().split('.').last}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Authenticated: ${researchRecord.authenticated ? 'Yes' : 'No'}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Submission Date: ${researchRecord.submissionDate}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Last Modified Date: ${researchRecord.lastModifiedDate}",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
