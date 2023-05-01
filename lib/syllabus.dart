import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Syllabus extends StatefulWidget {
  const Syllabus({Key? key}) : super(key: key);

  @override
  State<Syllabus> createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  get Share => null;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async{
                  final result = await FilePicker.platform.pickFiles();
                  
                  List<String>? files = result?.files.map((e) => e.path).cast<String>().toList();
                  
                  if(files == null) return;
                  
                  await Share.shareFiles(files);

                },
            child: Text('Pick File'))
          ],
        ),
      ),
    );
  }
}

