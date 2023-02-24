import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/color.dart';
import '../widget/detailsTable.dart';
import '../widget/gridView.dart';
class CareDetails extends StatelessWidget {
  const CareDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.3,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/image11.png'),
                              fit: BoxFit.cover)),
                    ),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 5, top: 5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    backgroundColor: floatingButtonColor,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: SizedBox(
                                        height: 20,
                                        child:
                                            SvgPicture.asset('asset/Back.svg')),
                                  ),
                                  Row(
                                    children: [
                                      FloatingActionButton(
                                        mini: true,
                                        backgroundColor: floatingButtonColor,
                                        onPressed: () {},
                                        child: SizedBox(
                                            height: 20,
                                            child: SvgPicture.asset(
                                                'asset/Car Page - Share.svg')),
                                      ),

                                      SizedBox(
                                        width: 10.w,
                                      ),

                                      FloatingActionButton(
                                        mini: true,
                                        backgroundColor: floatingButtonColor,
                                        onPressed: () {},
                                        child: SizedBox(
                                            height: 20,
                                            child: SvgPicture.asset(
                                                'asset/Car Page - Fav.svg')),
                                      ),

                                    ],
                                  )
                                ]))),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          children: [
                            Expanded(
                                child: Card(
                              color: cardColor,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Column(
                                  children: [
                                    SizedBox(
                                        height: 30,
                                        child: SvgPicture.asset(
                                            'asset/Car Page - Slindr.svg')),
                                    Text(
                                      'المحرك/سلندر',
                                      style: TextStyle(fontSize: 12.sp),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      '6',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                                child: Card(
                              color: cardColor,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Column(
                                  children: [
                                    SizedBox(height: 30,child: SvgPicture.asset('asset/Home - year.svg')),
                                    Text(
                                      'سنة الصنع',
                                      style: TextStyle(fontSize: 12.sp),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      '2019',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                                child: Card(
                              color: cardColor,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Column(
                                  children: [
                                    SizedBox(height: 30,child: SvgPicture.asset('asset/Home - km.svg')),
                                    Text(
                                      'الممشي',
                                      style: TextStyle(fontSize: 12.sp),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      '2000',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('يوكن بحالة جيدة',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Text('8,700 د.ك',
                        style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: makfolColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 20,
                          child:
                              SvgPicture.asset("asset/Car Page - Makfula.svg")),
                       Text(
                        'مكفولة حتي 70000 كم',
                        style: TextStyle(color: Colors.white,fontSize: 18.sp),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only( right: 15, top: 20),
                  child: Container(
                      color: tableColor, child: const DetailsTable())),
               Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Text(
                    "رنجات المونيوم 18 انش اسود وكروم-ديكور خشب+كروم-مقعد السائق الكهربي-دواسة جانبية-تحكم بالمقود مع تعديل يدوي-F1-نظام المرتفعات-سايد بريك كهربائي-مراءة دخليك اوتو-USB-Traction off-شاحن كهربائي"
                  ,style: TextStyle(fontSize: 16.sp),),
              ),

              Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
                  child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: profileColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: NetworkImage(
                                        'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg'))),
                            Text(
                              'يوكن للسيارات المعتمدة',style: TextStyle(fontSize: 14.sp),
                            ),
                            Text(
                              'كل السيارات',style: TextStyle(fontSize: 14.sp),
                            )
                          ],
                        ),
                      ))),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
               // height: 210,
                //height: MediaQuery.of(context).size.height / 3.1,
                child: Row(
                  children: [
                    Expanded(
                        child: gridViewItem(
                      imageList[0],colorList[0]

                    )),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(child: gridViewItem(imageList[1],colorList[1]

                    ))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 25, bottom: 25),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        child: FloatingActionButton(
                          backgroundColor: callColor,
                          onPressed: () {},
                          child: SizedBox(
                            height: 20,
                            child:
                                SvgPicture.asset('asset/Car Page - Call.svg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: FloatingActionButton(
                          backgroundColor: chatColor,
                          onPressed: () {},
                          child: SizedBox(
                            height: 20,
                            child: SvgPicture.asset(
                                'asset/Car Page - Chat by WHatsapp.svg'),
                          ),
                        ),
                        //),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: elevatedButtonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        child: Row(
                          children: const [
                            SizedBox(
                                height: 25,
                                child: Icon(
                                  Icons.location_on_outlined,
                                )),
                            Text('موقع السيارة')
                          ],
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                    color: elevatedButtonColor))),
                        child: Row(
                          children: [
                            SizedBox(
                                height: 25,
                                child: SvgPicture.asset(
                                    'asset/Car Page - Book.svg')),
                            const Text(
                              'احجز السيارة',
                              style: TextStyle(color: elevatedButtonColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
