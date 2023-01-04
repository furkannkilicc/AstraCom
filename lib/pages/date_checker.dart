import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataChecker {

}

class _DateTime extends StatefulWidget {
  const _DateTime({Key? key}) : super(key: key);

  @override
  State<_DateTime> createState() => _DateTimeState();
}

class _DateTimeState extends State<_DateTime> {

  final TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: TextField(
        controller: _date,
        decoration: const InputDecoration(
            icon: Icon(Icons.calendar_today_rounded),
            labelText: "Select Date"),
        onTap: () async {
          DateTime? pickeddate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101));
          if(pickeddate != null){
            setState(() {
              _date.text = DateFormat('yyyy-MM-dd').format(pickeddate);
            });
          }
        },
      ),
    );
  }
}
