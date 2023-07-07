import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimeService {
  static Future<void> showDateTimePicker(
      BuildContext context, void Function(DateTime) onDateTimeChanged) {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height * 0.25,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: onDateTimeChanged,
              initialDateTime: DateTime.now(),
              minimumYear: 2020,
              maximumYear: 2025,
            ),
          );
        });
  }
}
