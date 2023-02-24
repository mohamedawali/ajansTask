import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CircleItem extends StatelessWidget {
  const CircleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container( width: 65.w,
      height: 65.h,
      decoration:  BoxDecoration(color: Colors.white,
        shape: BoxShape.circle,border:Border.all(color: Colors.red)),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(

                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage('asset/image1.png')))),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
         Text("جي ام سي",
            style: TextStyle(
                fontSize: 14.sp, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
