import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/addhomepic.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({Key? key});

  @override
  State<ImagePick> createState() => _PickImageState();
}

class _PickImageState extends State<ImagePick> {
  List<Uint8List> _images = [];
  List<File> _selectedImages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 15,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: widthNHeight0(context, 1) * 0.04,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Text(
              'Floor Plan',
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
              itemCount: _images.length + 1,
              itemBuilder: (context, index) {
                if (index == _images.length) {
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
                                image: MemoryImage(_images[index]),
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
                                _images.removeAt(index);
                                _selectedImages.removeAt(index);
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeImages(),
                        ));
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
      _selectedImages.add(File(returnImage.path));
      _images.add(File(returnImage.path).readAsBytesSync());
    });

    Navigator.of(context).pop(); // Close the modal sheet
  }

  // Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;

    setState(() {
      _selectedImages.add(File(returnImage.path));
      _images.add(File(returnImage.path).readAsBytesSync());
    });

    Navigator.of(context).pop();
  }
}
