  import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  String? selectedFile;

  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        selectedFile = result.files.single.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload File'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _pickFile,
              child: Text('Search through files'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                backgroundColor: Colors.blue.shade200
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement your upload functionality here
                  },
                  child: Text('Upload'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
              ],
            ),
            if (selectedFile != null) ...[
              SizedBox(height: 20),
              Text('Selected File: $selectedFile'),
            ],
          ],
        ),
      ),
    );
  }
}
