import 'package:flutter/material.dart';

class SpaceWidget extends StatelessWidget {
  double? hight;
  double? width; 
 
   SpaceWidget({super.key, this.hight, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight??0,
      width: width??0,

    );
  }
}