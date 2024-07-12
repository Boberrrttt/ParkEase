// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';

// class ImageInput extends StatefulWidget {
//   const ImageInput({super.key});

//   @override 
//   _ImageInputState createState() => _ImageInputState();
// }

// class _ImageInputState extends State<ImageInput> {
//   File? _image;
//   final ImagePicker _picker = ImagePicker();

//   Future<void> _pickImage() async {
//     final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   @override
   
// }