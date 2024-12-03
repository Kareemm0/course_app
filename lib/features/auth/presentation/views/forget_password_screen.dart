import 'package:course_app/Core/widget/custom_app_bar.dart';
import 'package:course_app/features/auth/presentation/cubit/forget_password/forget_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/constant/app_sized.dart';
import '../../../../Core/styles/app_text_styles.dart';
import '../../../../Core/utils/app_colors.dart';
import '../../../../Core/widget/custom_app_button.dart';
import '../widget/custom_text_form_filed.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
      child: BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
        builder: (context, state) {
          final cubit = context.read<ForgetPasswordCubit>();
          return Scaffold(
            appBar: appBar(
              context,
              title: "Reset Password",
              automaticallyImplyLeading: false,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    height(heightSize(context) * 0.2),
                    Text(
                      "Email",
                      style: AppTextStyles.styleRegular14(context).copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600),
                    ),
                    height(4),
                    CustomTextFormFiled(
                      hintText: "demo@mail.com",
                      controller: cubit.emailController,
                    ),
                    height(heightSize(context) * 0.2),
                    const CustomAppButton(
                      text: "sUBMIT",
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
