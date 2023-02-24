import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newtask/constant/color.dart';

class gridViewItem extends StatelessWidget {
  String? image;
Color? color;
  gridViewItem(this.image, this. color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      width: MediaQuery.of(context).size.width / 2.1,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: color,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'جي ام سي | يوكن | الفئة الرابعة',
                  textAlign: TextAlign.center,
                ),
              )),
          Positioned(
            top: 21,
            right: 0,
            left: 0,
            child: Container(
                height: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          image!,
                        )))),
          ),
          Positioned(
            top: 138.h,
            right: 0,
            left: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 10,
                          child: SvgPicture.asset('asset/Home - money.svg')),
                      Text(
                        'السعر',
                        style: TextStyle(fontSize: 10.sp),
                      ),
                      Text(
                        '20000',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
                const SizedBox(
                  width: 1,
                ),
                Expanded(
                    child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 10,
                          child: SvgPicture.asset('asset/Home - year.svg')),
                      Text(
                        'سنةالصنع',
                        style: TextStyle(fontSize: 10.sp),
                        // textAlign: TextAlign.center,
                      ),
                      Text(
                        '2019',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
                const SizedBox(
                  width: 1,
                ),
                Expanded(
                    child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 10,
                          child: SvgPicture.asset('asset/Home - km.svg')),
                      Text(
                        'كم',
                        style: TextStyle(fontSize: 10.sp),
                      ),
                      Text(
                        '20000',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
                const SizedBox(
                  width: 1,
                ),
                Expanded(
                    child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 10,
                          child: SvgPicture.asset('asset/Home - Ad4.svg')),
                      Text(
                        'مكفولةل',
                        style: TextStyle(fontSize: 10.sp),
                        //: TextAlign.center,
                      ),
                      Text(
                        '2021',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
