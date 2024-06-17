import 'package:flutter/material.dart';
import 'package:mobile_app/models/research.dart';
import 'package:mobile_app/widgets/custom_search_result.dart';
import 'package:mobile_app/widgets/custom_navigation_bar.dart';

class SearchResultsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchResultsState();
}

class SearchResultsState extends State<SearchResultsPage> {
  final List<ResearchRecord> searchResults = [
    ResearchRecord(
      id: 1,
      title: "Example Research Title 1",
      abstractText: "This is the abstract for research 1.",
      content: "This is the content for research 1.",
      reviewStatus: ReviewStatus.APPROVED,
      authenticated: true,
      submissionDate: DateTime.now().subtract(Duration(days: 1)),
      lastModifiedDate: DateTime.now(),
    ),
    ResearchRecord(
      id: 2,
      title: "Example Research Title 2",
      abstractText: "This is the abstract for research 2.",
      content: "This is the content for research 2.",
      reviewStatus: ReviewStatus.PENDING,
      authenticated: true,
      submissionDate: DateTime.now().subtract(Duration(days: 2)),
      lastModifiedDate: DateTime.now(),
    ),
    ResearchRecord(
      id: 3,
      title: "Example Research Title 3",
      abstractText: "This is the abstract for research 3.",
      content: "This is the content for research 3.",
      reviewStatus: ReviewStatus.REJECTED,
      authenticated: false,
      submissionDate: DateTime.now().subtract(Duration(days: 5)),
      lastModifiedDate: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          "PaperVault",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold
          )
        )
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          final record = searchResults[index]; // Extract the research record
          return CustomSearchResult(researchRecord: record); // Use the custom widget
        },
      ),
      bottomNavigationBar: CustomNavigationBar() // Add the custom navigation bar
    );
  }
}