import 'package:flutter/material.dart';
class DetailsTable extends StatelessWidget {
  const DetailsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(horizontalInside: BorderSide(color: Colors.white,width: 2)),
      columnWidths: const {
        0: IntrinsicColumnWidth(),
        1:  IntrinsicColumnWidth(),
        2: FlexColumnWidth()
      },
      children:  const [
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.car_crash_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('الون الخارجي'),
          ),
          Text('ابيض ',textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.car_crash_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('اللون الداخلي'),
          ),
          Text('بيج',textAlign: TextAlign.center)
        ]), TableRow(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.car_crash_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('نوع المقعد'),
          ),
          Text('مخمل',textAlign: TextAlign.center)
        ]), TableRow(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.car_crash_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('فتحة السقف'),
          ),
          Icon(Icons.check)
        ]), TableRow(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.car_crash_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('كاميرا خلفية'),
          ),
          Icon(Icons.check)
        ]),  TableRow(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.car_crash_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('سينسر'),
          ),
          Text('امامي- خلفي',textAlign: TextAlign.center)
        ]), TableRow(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.car_crash_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('سليندر'),
          ),
          Text('خلفي',textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.car_crash_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('ناقل الحركة'),
          ),
          Text('اوتوماتيك',textAlign: TextAlign.center)
        ])
      ],
    );
  }
}
