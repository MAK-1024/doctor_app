import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(

        onPressed: () {

          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(const Size(double.infinity , 55)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))
        ),
        
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteMedium,
        ));
  }
}
