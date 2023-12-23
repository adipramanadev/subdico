import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/submodel.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_common.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_data_helpers.dart';
import 'otpverificationscreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  CountryModel? selectedCountry;
  List<CountryModel> countryList = getCountryList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 60, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Selamat Datang',
                  style: hsBoldTextStyle(
                      weight: FontWeight.bold, size: headingFontSize)),
              SizedBox(height: 16),
              Text('Input Nomor Handphone \nUntuk Memulai',
                  style: hsSecondaryTextStyle(
                      size: subHeadingFontSize, color: Colors.grey)),
              SizedBox(height: 30),
              DropdownButtonFormField(
                value: selectedCountry,
                dropdownColor: Theme.of(context).cardColor,
                items: countryList.map((mData) {
                  return DropdownMenuItem(
                    child: Row(
                      children: [
                        Image.asset(mData.imagePath!, height: 30, width: 30),
                        SizedBox(width: 8),
                        Text(mData.title!, style: hsPrimaryTextStyle()),
                      ],
                    ),
                    value: mData,
                  );
                }).toList(),
                onChanged: (dynamic value) {
                  selectedCountry = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                style: hsPrimaryTextStyle(),
                decoration: InputDecoration(
                  hintText: 'Nomor Handphone',
                  hintStyle: hsSecondaryTextStyle(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(16)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(16)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text('Privasi dan Perjanjian', style: hsBoldTextStyle()),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OtpVersifications();
                        },
                      ),
                    );
                  },
                  child: Text('Lanjutkan',
                      style: hsPrimaryTextStyle(color: Colors.white)),
                  style: primaryButtonStyle(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
