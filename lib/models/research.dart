// lib/models/research_record.dart
import 'package:flutter/foundation.dart';

enum ReviewStatus {
  PENDING,
  APPROVED,
  REJECTED
}

class ResearchRecord {
  final int? id;
  final String title;
  final String abstractText;
  final String content;
  final ReviewStatus reviewStatus;
  final bool authenticated;
  final DateTime submissionDate;
  final DateTime lastModifiedDate;

  ResearchRecord({
    this.id,
    required this.title,
    required this.abstractText,
    required this.content,
    required this.reviewStatus,
    required this.authenticated,
    required this.submissionDate,
    required this.lastModifiedDate,
  });

  factory ResearchRecord.fromJson(Map<String, dynamic> json) {
    return ResearchRecord(
      id: json['id'],
      title: json['title'],
      abstractText: json['abstractText'],
      content: json['content'],
      reviewStatus: ReviewStatus.values.firstWhere((e) => describeEnum(e) == json['reviewStatus']),
      authenticated: json['authenticated'],
      submissionDate: DateTime.parse(json['submissionDate']),
      lastModifiedDate: DateTime.parse(json['lastModifiedDate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'abstractText': abstractText,
      'content': content,
      'reviewStatus': describeEnum(reviewStatus),
      'authenticated': authenticated,
      'submissionDate': submissionDate.toIso8601String(),
      'lastModifiedDate': lastModifiedDate.toIso8601String(),
    };
  }
}
