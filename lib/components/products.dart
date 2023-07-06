import 'package:advertisement/constants/sized_box.dart';
import 'package:flutter/material.dart';

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
              hinText: 'name',
              controller: _name,
            ),
            AppSizes.height10,
            CustomTextField(
              hinText: 'dateTime',
              controller: _dateTime,
            ),
            AppSizes.height10,
            CustomTextField(
              hinText: 'phoneNumber',
              controller: _phoneNumber,
            ),
            AppSizes.height10,
            CustomTextField(
              hinText: 'address',
              controller: _address,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinText,
    this.controller,
    this.maxLines,
  });
  final String hinText;
  final TextEditingController? controller;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        filled: true,
        hintText: hinText,
        labelText: 'Your name',
      ),
    );
  }
}
