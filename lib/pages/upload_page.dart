import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  String? selectedFileName;
  double uploadProgress = 0.0;

  Future<void> _openFileExplorer() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        setState(() {
          selectedFileName = result.files.single.name;
          uploadProgress = 0.0; // Reset progress
        });
        // Simulate file upload process
        for (int i = 0; i <= 10; i++) {
          await Future.delayed(const Duration(milliseconds: 500));
          setState(() {
            uploadProgress = i / 10;
          });
        }
        // Upload complete
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('File "$selectedFileName" uploaded successfully')),
        );
        setState(() {
          selectedFileName = null; // Reset selected file name after upload
        });
      } else {
        // User canceled the file picking
        print("User canceled the file picking.");
      }
    } catch (e) {
      print("Error picking file: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 40.0),
            const Text(
              'Upload Assignments',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Expanded(
                    child: selectedFileName != null
                        ? Text(selectedFileName!)
                        : const SizedBox(), // Show selected file name if available
                  ),
                  if (selectedFileName != null)
                    const SizedBox(
                      width: 8.0,
                    ),
                  if (selectedFileName != null)
                    CircularProgressIndicator(
                      value: uploadProgress,
                    ), // Show progress indicator if a file is selected
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                _openFileExplorer(); // Open file explorer for assignment upload
              },
              child: const Text('Upload Assignment'),
            ),
            const SizedBox(height: 100.0),
            const Icon(
              Icons.emoji_emotions,
              size: 50,
            ),
            const SizedBox(height: 10.0),
            Text(
              'No Assignment is Uploaded !',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 21),
            ),
          ],
        ),
      ),
    );
  }
}
