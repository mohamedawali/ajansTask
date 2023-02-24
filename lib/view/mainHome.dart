import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newtask/model/listModels.dart';
import 'package:newtask/view/careDetails.dart';
import 'package:newtask/constant/color.dart';

import '../widget/circleItem.dart';
import '../widget/gridView.dart';

class MainHome extends StatelessWidget {
  List<ListModels> itemList = [];
  MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    items();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
                leading: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, right: 15, bottom: 15, left: 15),
                  child: SizedBox(
                      child: SvgPicture.asset('asset/Home - menu.svg')),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Stack(children: [
                      SizedBox(
                        height: 45,
                        width: 30,
                        child:
                            SvgPicture.asset('asset/Home - Notification .svg'),
                      ),
                      const Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 8,
                            child: CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius: 6,
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          ))
                    ]),
                  ),
                ]),
            body:
//         Container(
//           height: MediaQuery.of(context).size.height,
//           color: Colors.white,
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     height: 90.h,
//                     color: appbarColor,
//                     child: Padding(
//                       padding:
//                       const EdgeInsets.only(top: 40, bottom: 5, left: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           SizedBox(
//                             height: 30,
//                             width: 40,
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon:
//                                 SvgPicture.asset('asset/Home - menu.svg')),
//                           ),
//                           Stack(children: [
//                             SizedBox(
//                               height: 45,
//                               width: 30,
//                               child: SvgPicture.asset(
//                                 'asset/Home - Notification .svg',
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                             const Positioned(
//                                 top: 0,
//                                 right: 0,
//                                 child: CircleAvatar(
//                                   backgroundColor: Colors.white,
//                                   radius: 8,
//                                   child: CircleAvatar(
//                                     backgroundColor: Colors.orange,
//                                     radius: 6,
//                                     child: Text(
//                                       '2',
//                                       style: TextStyle(
//                                           fontSize: 10, color: Colors.white),
//                                     ),
//                                   ),
//                                 ))
//                           ]),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//         Container(
//                height: MediaQuery.of(context).size.height - 92,
//                   child:
                SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 135.h,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 8, bottom: 20),
                              child: ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 8,
                                  itemBuilder: (context, index) =>
                                      const CircleItem()),
                            )),
                        Container(
                          height: MediaQuery.of(context).size.height / 3.9,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/image6.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey)),
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: 'ابحث عن سيارتك',
                                  border: InputBorder.none,
                                  // border:   OutlineInputBorder(borderSide: BorderSide.none),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: SizedBox(
                                      width: 20,
                                      child: SvgPicture.asset(
                                        'asset/Home - Search.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 15),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: mainElevatedButtonColor,
                                      minimumSize: Size(0, 30.h),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25))),
                                  child: const Text('اسيوي'),
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: mainElevatedButtonColor,
                                      minimumSize: Size(0, 30.h),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  child: const Text('اوربي'),
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: mainElevatedButtonColor,
                                      minimumSize: Size(0, 30.h),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25))),
                                  child: const Text('امريكي'),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Wrap(
                            spacing: 2,
                            runSpacing: 5,
                            children:

                            itemList
                                    .map(
                                      (e) => InkWell(
                                          onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const CareDetails())),
                                          child:
                                              gridViewItem(e.image, e.color)),
                                    )
                                    .toList(),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 5,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/image5.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ))));
  }

  void items() {
    for (int i = 0; i < imageList.length; i++) {
      itemList.add(ListModels(imageList[i], colorList[i]));
    }
  }
}
