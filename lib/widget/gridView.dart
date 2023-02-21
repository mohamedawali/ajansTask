import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class gridViewItem extends StatelessWidget {
  String? image;
  Color color;
      gridViewItem( this. image, this.color, { Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Align(
            alignment: Alignment.topCenter,
            child: Container(color: color,width: MediaQuery.of(context).size.width,
              child: const Text(
                'جي ام سي | يوكن | الفئة الرابعة',
                textAlign: TextAlign.center,
              ),
            )),


            Positioned(top: 24,right: 0,left: 0,
              child: Container(
                  height: 130.h,

                  decoration:  BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,
                          image: AssetImage(
                   image!,
                  )
                          //
                          ))),
            ),
            Positioned(
              bottom: 1,
              right: 0,
              left: 0,
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5,right: 2,left: 2),
                      child: Column(
                        children: [
                          SvgPicture.asset('asset/Home - money.svg'),
                          Text(
                            'السعر',   style: TextStyle(fontSize: 12.sp),
                            textAlign: TextAlign.center,

                          ),
                          Text(
                            '20000',   style: TextStyle(fontSize: 12.sp),

                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  )),const SizedBox(width: 1,),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5,right: 2,left: 2),
                      child: Column(
                        children: [
                          SvgPicture.asset('asset/Home - year.svg'),
                          Text(
                            'سنة الصنع',
                            style: TextStyle(fontSize: 12.sp),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '2019',   style: TextStyle(fontSize: 12.sp),
                            textAlign: TextAlign.center,

                          )
                        ],
                      ),
                    ),
                  )),const SizedBox(width: 1,),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5,right: 2,left: 2),
                      child: Column(
                        children: [
                          SvgPicture.asset('asset/Home - km.svg'),
                          Text(
                            'كم',   style: TextStyle(fontSize: 12.sp),
                            textAlign: TextAlign.center,

                          ),
                          Text(
                            '20000',   style: TextStyle(fontSize: 12.sp),

                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  )),const SizedBox(width: 1,),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5,right: 2,left: 2),
                      child: Column(
                        children: [
                          SvgPicture.asset('asset/Home - Ad4.svg'),
                          Text(
                            'مكفولةل',   style: TextStyle(fontSize: 12.sp),
                            textAlign: TextAlign.center,

                          ),
                          Text(
                            '2021',   style: TextStyle(fontSize: 12.sp),

                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            )
          ],
        );
  }
}
