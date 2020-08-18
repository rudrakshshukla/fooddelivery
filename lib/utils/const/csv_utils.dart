import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';

void runCsvRead()
async {
  File file = await FilePicker.getFile();


  Stream<List<int>> inputStream = file.openRead();

  inputStream
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(new LineSplitter()) // Convert stream to individual lines.
      .listen((String line) { // Process results.

    List<String> row = line.split(','); // split by comma

    String id = row[0];
    String symbol = row[1];


    print('$id, $symbol');
  },
      onDone: () {
        print('File is now closed.');
      },
      onError: (e) {
        print(e.toString());
      });
}