import 'package:flutter/material.dart';

import '../../../../../Core/styles/app_text_styles.dart';

class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: AppTextStyles.styleRegular14(context),
          ),
        ),
      ],
    );
  }
}
