import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sip_calculator/app/const/colors.dart';

import '../../../Bottom_NavigationBar/notes/other_notes.dart';
import '../../../Bottom_NavigationBar/other_calculator/other_calculators.dart';
import '../../../appbar/other_appbar.dart';
import '../../../screens/dashbourd/dashbourd.dart';
import '../../../widgets/custom_btn.dart';

class FeatureRequest extends StatefulWidget {
  const FeatureRequest({super.key});

  @override
  State<FeatureRequest> createState() => _FeatureRequestState();
}

class _FeatureRequestState extends State<FeatureRequest> {
  List<String> chipList = [
    "Recycled",
    "Vegetarian",
    "Skilled",
    "Energetic",
    "Friendly",
    "Luxurious"
  ];

  List title = [
    'ThirdScreen',
    'SecondScreen',
    'ImagePickerScreen',
    'HomeScreen',
    'FourthScreen',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: OtherAppbar(
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.to(
              const Dashbourd(),
            );
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.whiteColor,
          ),
        ),
        title: "Feture Request",
        style: GoogleFonts.roboto(),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 5.0,
                runSpacing: 3.0,
                children: const <Widget>[
                  filterChipWidget(chipName: 'Remove Ads(Paid App)'),
                  filterChipWidget(chipName: 'Graphs/ Charts for SIP\n'),
                  filterChipWidget(chipName: 'SIP with Top-Up'),
                  filterChipWidget(chipName: 'Tenure> 40 years\n'),
                  filterChipWidget(chipName: 'PPF'),
                  filterChipWidget(chipName: 'ULIP Calculators'),
                  filterChipWidget(chipName: 'NPS'),
                  filterChipWidget(chipName: 'Tenure in Months'),
                  filterChipWidget(chipName: 'STP'),
                  filterChipWidget(chipName: 'SWP'),
                  filterChipWidget(chipName: 'Others'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30.09,
          ),
          UIButton(
            labelText: "Submit",
            color: AppColors.btnColor,
            style: GoogleFonts.roboto(
              fontSize: 16.8,
              color: AppColors.whiteColor,
            ),
            height: 40.0,
            width: 80.0,
          ),
        ],
      ),
    );
  }
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  const filterChipWidget({required this.chipName});

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;
  List Navigate = const [
    Dashbourd(),
    OtherCalculators(),
    OtherNotes(),
    Dashbourd(),
    OtherCalculators()
  ];
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: const TextStyle(
          color: Color(0xff6200ee),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: const Color(0xffededed),
      onSelected: (isSelected) {
        setState(
          () {
            _isSelected = isSelected;
          },
        );
      },
      selectedColor: const Color(0xffeadffd),
    );
  }
}
