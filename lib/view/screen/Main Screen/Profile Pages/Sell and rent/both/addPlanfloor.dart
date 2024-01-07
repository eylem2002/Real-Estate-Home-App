import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_batic/core/services/EnterSevices.dart';

List<File> sharedImageList = [];
List<String> imageUrls = [];

class ImagePick extends StatefulWidget {
  const ImagePick({Key? key});

  @override
  State<ImagePick> createState() => _PickImageState();
}

class _PickImageState extends State<ImagePick> {
  final List<Uint8List> _images = [];
  final List<File> _selectedImages = [];
  File? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
          child: Center(),
        ),
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Text(
              'Floor Plan',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.065,
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
              height: MediaQuery.of(context).size.width * 0.01,
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
                  onPressed: () async {
                    await uploadImagesToStorage();

                    if (mounted) {
                      if (sharedImageList.isNotEmpty) {
                        Navigator.of(context).pushNamed("home_images");
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Center(
                              child: Text(
                                'Choose one',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  },
                  backgroundColor: Color(0xff6482C4),
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontFamily: "kadwa",
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
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

  Future<void> _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    file = File(returnImage!.path);

    setState(() {
      _selectedImages.add(File(returnImage.path));
      _images.add(File(returnImage.path).readAsBytesSync());
      sharedImageList.add(File(returnImage.path));
    });

    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;

    setState(() {
      _selectedImages.add(File(returnImage.path));
      _images.add(File(returnImage.path).readAsBytesSync());
      sharedImageList.add(File(returnImage.path));
    });

    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> uploadImagesToStorage() async {
    try {
      for (int i = 0; i < sharedImageList.length; i++) {
        File imageFile = sharedImageList[i];
        String imageName = DateTime.now().millisecondsSinceEpoch.toString();

        Reference refStorage =
            FirebaseStorage.instance.ref().child('images/$imageName.jpg');
        UploadTask uploadTask = refStorage.putFile(imageFile);

        TaskSnapshot taskSnapshot = await uploadTask;
        String imageUrl = await taskSnapshot.ref.getDownloadURL();

        imageUrls.add(imageUrl);
      }

      // shared_data.clear();
    } catch (error) {
      print('Error uploading images to Firebase Storage: $error');
    }
  }
}
