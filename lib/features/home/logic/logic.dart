// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// import '../../details/ui/screens/image_dettails_view.dart';

// Future<File?> pickImage(BuildContext context) async {
//   try {
//     final XFile? file =
//         await ImagePicker().pickImage(source: ImageSource.camera);
//     if (file != null) {
//       final File image = File(file.path);

//       Navigator.push(context, MaterialPageRoute(builder: (context) {
//         return ImageDettailsView(image: image);
//       }));
//       return image;
//     } else {
//       showErrorSnackBar('No Image selected', context);
//       return null;
//     }
//   } catch (e) {
//     // Handle any errors that may occur during video picking
//     print('Error picking Image: $e');
//     showErrorSnackBar('Error picking Image: $e', context);
//     return null;
//   }
// }

// void showErrorSnackBar(String message, context) =>
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         duration: const Duration(seconds: 1),
//       ),
//     );
