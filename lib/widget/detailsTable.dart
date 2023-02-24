import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsTable extends StatelessWidget {
  const DetailsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(
          horizontalInside: BorderSide(color: Colors.white, width: 2)),
      columnWidths: const {
        0: IntrinsicColumnWidth(),
        1: IntrinsicColumnWidth(),
        2: FlexColumnWidth()
      },
      children: [
        item(
            icon: Icons.car_crash_sharp,
            first: 'اللون الخارجي',
            second: 'ابيض'),
        item(
            icon: Icons.car_crash_sharp, first: 'اللون الداخلي', second: 'بيج'),
        item(icon: Icons.car_crash_sharp, first: 'نوع المقعد', second: 'مخمل'),
        item(
            icon: Icons.car_crash_sharp,
            first: 'فتحة السقف',
            second: '',
            iconCheck: Icons.check),
        item(
            icon: Icons.car_crash_sharp,
            first: 'كاميرا خلفية',
            second: '',
            iconCheck: Icons.check),
        item(
            icon: Icons.car_crash_sharp, first: 'سينسر', second: 'امامي- خلفي'),
        item(
            icon: Icons.car_crash_sharp,
            first: 'ناقل الحركة',
            second: 'اوتوماتيك'),
      ],
    );
  }

  item({IconData? icon, String? first, String? second, IconData? iconCheck}) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.only(right: 10, top: 5, bottom: 5, left: 5),
        child: Icon(icon),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 5, top: 5, bottom: 5),
        child: Text(
          first!,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: second! == ''
            ? Icon(iconCheck)
            : Text(second,
                textAlign: TextAlign.center, style: TextStyle(fontSize: 16.sp)),
      )
    ]);
  }
}
