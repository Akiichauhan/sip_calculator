import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sip_calculator/app/appbar/other_appbar.dart';
import 'package:sip_calculator/app/const/colors.dart';
import 'package:sip_calculator/app/widgets/mystring.dart';

class TermsOfUse extends StatefulWidget {
  const TermsOfUse({super.key});

  @override
  State<TermsOfUse> createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherAppbar(
        centerTitle: true,
        title: "SIP Calculator",
        style: GoogleFonts.roboto(
          fontSize: 18.0,
        ),
        mainColor: AppColors.drawersubmenuappbarColor,
        leading: const Icon(
          Icons.style,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title(),
                const SizedBox(
                  height: 10.0,
                ),
                _myAns(),
                const SizedBox(
                  height: 20.0,
                ),
                _myAns(),
                _myAns(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return MyString(
      myText: "Terms of Use",
      style: GoogleFonts.roboto(
        fontSize: 28.0,
      ),
    );
  }

  Widget _myAns() {
    return MyString(
      myText:
          "Welcome to SIP Calculator App. The app is owned and operated by Fund Easy and Milan Seth. This document/agreement/understanding is an electronic record in terms of Information Technology Act, 2000 and is generated by a computer system and does not require any physical or digital signatures. This document is published in accordance with the provisions of Rule 3 of the Information Technology (Intermediaries Guidelines) Rules, 2011.",
      style: GoogleFonts.roboto(
        fontSize: 18.0,
      ),
    );
  }
}
