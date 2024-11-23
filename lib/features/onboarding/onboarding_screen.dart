import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:doctor_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doctor_app/features/onboarding/widgets/get_started_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
      padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
      child: Column(
        children: [
          const DocLogoAndName(),
          SizedBox(
            height: 30.h,
          ),
          const DoctorImageAndText(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  style: TextStyles.font13GrayRegular,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.h,
                ),
                const GetStartedButton(),
              ],
            ),
          )
        ],
      ),
    ))));
  }
}
