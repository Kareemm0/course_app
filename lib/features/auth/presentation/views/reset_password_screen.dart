import 'package:course_app/Core/widget/custom_app_bar.dart';
import 'package:course_app/features/auth/presentation/cubit/reset_password/cubit/reset_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/constant/app_sized.dart';
import '../../../../Core/styles/app_text_styles.dart';
import '../../../../Core/utils/app_colors.dart';
import '../../../../Core/widget/custom_app_button.dart';
import '../widget/custom_text_form_filed.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordCubit(),
      child: BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
        builder: (context, state) {
          final cubit = context.read<ResetPasswordCubit>();
          return Scaffold(
            appBar: appBar(context,
                title: "Reset Password", automaticallyImplyLeading: false),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    height(heightSize(context) * 0.2),
                    Text(
                      "Password",
                      style: AppTextStyles.styleRegular14(context).copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600),
                    ),
                    height(4),
                    CustomTextFormFiled(
                      hintText: "**********************",
                      controller: cubit.passwordController,
                    ),
                    height(24),
                    Text(
                      "Confirm Password",
                      style: AppTextStyles.styleRegular14(context).copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600),
                    ),
                    height(4),
                    CustomTextFormFiled(
                      hintText: "**********************",
                      controller: cubit.confirmPasswordController,
                    ),
                    height(64),
                    const CustomAppButton(
                      text: "SUBMIT",
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
