// ignore_for_file: use_build_context_synchronously, use_key_in_widget_constructors, sort_child_properties_last

import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_batic/core/services/EnterSevices.dart';

List<String> imgeshome = [];

List<File> sharedImageList2 = [];
final List<File> _selectedImages2 = [];

class HomeImages extends StatefulWidget {
  const HomeImages({Key? key});

  @override
  State<HomeImages> createState() => _HomeImages();
}

class _HomeImages extends State<HomeImages> {
  final List<Uint8List> _images2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
          child: Center(
              // child: CircleAvatar(
              //   backgroundColor: Colors.black,
              //   radius: 15,
              //   child: IconButton(
              //     onPressed: () {
              //       Navigator.of(context).pop();
              //     },
              //     icon: Icon(
              //       Icons.arrow_back_ios_new_outlined,
              //       color: Colors.white,
              //       size: widthNHeight0(context, 1) * 0.04,
              //     ),
              //   ),
              // ),
              ),
        ),
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Text(
              'Home Images',
              style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.065,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Divider(
              height: widthNHeight0(context, 1) * 0.01,
              color: Colors.grey[300]),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: _images2.length + 1,
              itemBuilder: (context, index) {
                if (index == _images2.length) {
                  return IconButton(
                    onPressed: () {
                      showImagePickerOption(context);
                    },
                    icon: Icon(Icons.add_a_photo),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: Color(0xff6482C4),
                              width: 1.0,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: MemoryImage(_images2[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8.0,
                          right: 8.0,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _images2.removeAt(index);
                                _selectedImages2.removeAt(index);
                              });
                            },
                            icon: Icon(
                              Icons.close,
                              color: Color.fromARGB(255, 20, 34, 62),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: widthNHeight0(context, 1) * 0.14,
                width: widthNHeight0(context, 0) * 0.15,
                child: FloatingActionButton(
                  onPressed: () async {
                    await uploadImagesToStorage();

                    // Navigator.of(context).pushReplacementNamed("map_setup");

                   if (sharedImageList2 != null) {
  Navigator.of(context).pushReplacementNamed("map_setup");
}

                     else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Center(
                            child: Text(
                              'Choose Image',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontFamily: "kadwa",
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  backgroundColor: Color(0xff6482C4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Color(0xffCCD8F4),
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text("Gallery")
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromCamera();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 70,
                          ),
                          Text("Camera")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;

    setState(() {
      _selectedImages2.add(File(returnImage.path));
      _images2.add(File(returnImage.path).readAsBytesSync());
      sharedImageList2.add(File(returnImage.path));
    });

    Navigator.of(context).pop();
  }

  // Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;

    setState(() {
      _selectedImages2.add(File(returnImage.path));
      _images2.add(File(returnImage.path).readAsBytesSync());
      sharedImageList2.add(File(returnImage.path));
    });

    Navigator.of(context).pop();
  }

  Future<void> uploadImagesToStorage() async {
    try {
      for (int i = 0; i < sharedImageList2.length; i++) {
        print("imageUrl");
        File imageFile = sharedImageList2[i];

        String imageName = DateTime.now().millisecondsSinceEpoch.toString();

        Reference refStorage =
            FirebaseStorage.instance.ref().child('images/$imageName.jpg');
        UploadTask uploadTask = refStorage.putFile(imageFile);

        TaskSnapshot taskSnapshot = await uploadTask;
        String imageUrl = await taskSnapshot.ref.getDownloadURL();

        imgeshome.add(imageUrl);
      }

      // shared_data.clear();
    } catch (error) {
      print('Error uploading images to Firebase Storage: $error');
    }
  }
}
