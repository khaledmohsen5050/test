import 'dart:io';

import 'package:flutter/material.dart';

class Imagepicker extends StatelessWidget {
  final File imagefile;
  Imagepicker.fromfile(this.imagefile);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.1,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundColor: Color.fromRGBO(112, 112, 112, 1),
          radius: 55,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 55 - 0.1,
            backgroundImage: (imagefile != null) ? FileImage(imagefile) : null,
            child: (imagefile == null)
                ? Center(
                    child: Icon(Icons.camera_alt,
                        size: 40, color: Colors.grey[600]))
                : null,
          ),
        ),
      ),
    );
  }
}
