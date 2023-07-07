import 'package:advertisement/constants/sized_box.dart';
import 'package:advertisement/service/date_time.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _name = TextEditingController();
  final _dateTime = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddProduct'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: ListView(
          children: [
            CustomTextField(
              hinText: 'title',
              controller: _title,
            ),
            AppSizes.height10,
            CustomTextField(
              hinText: 'description',
              controller: _description,
              maxLines: 5,
            ),
            AppSizes.height10,
            CustomTextField(
              hinText: 'Your name',
              controller: _name,
            ),
            AppSizes.height10,
            CustomTextField(
              hinText: 'Choose date',
              controller: _dateTime,
              onTap: () async {
                await DateTimeService.showDateTimePicker(
                  context,
                  (value) {
                    _dateTime.text = value.toString();
                  },
                );
              },
            ),
            AppSizes.height10,
            CustomTextField(
              hinText: 'Enter your phone number',
              controller: _phoneNumber,
            ),
            AppSizes.height10,
            CustomTextField(
              hinText: 'Enter your address',
              controller: _address,
            ),
          ],
        ),
      ),
    );
  }
}
