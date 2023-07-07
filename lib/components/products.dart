import 'dart:io';

import 'package:advertisement/constants/sized_box.dart';
import 'package:advertisement/service/date_time.dart';
import 'package:advertisement/service/image_upload.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  late File imageFile;
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
            // CustomTextField(
            //   focusNode: primaryFocus,
            //   prefixIcon: Center(
            //     child: IconButton(
            //       icon: const Icon(
            //         Icons.add_a_photo,
            //         size: 70,
            //         color: Color(0xffffffff),
            //       ),
            //       onPressed: () {},
            //     ),
            //   ),
            //   controller: _description,
            //   maxLines: 5,
            // ),

            ImageContainer(),

            AppSizes.height10,
            CustomTextField(
              hinText: 'Your name',
              controller: _name,
            ),
            AppSizes.height10,
            CustomTextField(
              hinText: 'Choose date',
              controller: _dateTime,
              focusNode: FocusNode(),
              onTap: () async {
                await DateTimeService.showDateTimePicker(
                  context,
                  (value) {
                    _dateTime.text = DateFormat('d MMMM y')
                        .format(DateTime.parse(value.toString()));
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

class ImageContainer extends StatefulWidget {
  ImageContainer({super.key});
  final List<dynamic> images = [];

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  late ImagePickerService service;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[500],
        border: Border.all(),
      ),
      child: widget.images.isNotEmpty
          ? ListView()
          : IconButton(
              onPressed: () async {
                service.pickImages();
              },
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.black,
                size: 100,
              )),
    );
  }
}
