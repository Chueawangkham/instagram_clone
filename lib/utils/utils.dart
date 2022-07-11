import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

pickImage(ImageSource source) async {
  final ImagePicker _imagePick = ImagePicker();

  XFile? _file = await _imagePick.pickImage(source: source);

  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No image selected');
}
