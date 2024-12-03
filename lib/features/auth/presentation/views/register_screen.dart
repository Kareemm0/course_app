import 'package:course_app/features/auth/presentation/cubit/register/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/constant/app_sized.dart';
import '../../../../Core/styles/app_text_styles.dart';
import '../../../../Core/utils/app_colors.dart';
import '../../../../Core/widget/custom_app_bar.dart';
import '../../../../Core/widget/custom_app_button.dart';
import '../widget/custom_auth_text.dart';
import '../widget/custom_forget_password_widget.dart';
import '../widget/custom_sign_in_divider.dart';
import '../widget/custom_social_media_row_widget.dart';
import '../widget/custom_text_form_filed.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        title: "Sign UP",
        automaticallyImplyLeading: false,
      ),
      body: BlocProvider(
        create: (context) => RegisterCubit(),
        child: BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
            final cubit = context.read<RegisterCubit>();
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    height(heightSize(context) * 0.1),
                    Text(
                      "FullName ",
                      style: AppTextStyles.styleRegular14(context).copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600),
                    ),
                    height(4),
                    CustomTextFormFiled(
                      hintText: "name",
                      controller: cubit.emailController,
                    ),
                    height(16),
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
                    height(16),
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
                    height(16),
                    Text(
                      "Confirm Password",
                      style: AppTextStyles.styleRegular14(context).copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600),
                    ),
                    height(4),
                    CustomTextFormFiled(
                      hintText: "**********************",
                      controller: cubit.passwordController,
                    ),
                    height(4),
                    const CustomForgetPasswordWidget(),
                    height(16),
                    const CustomAppButton(
                      text: "Sign UP ",
                    ),
                    height(32),
                    const CustomSignInDivider(),
                    height(16),
                    const CustomSocialMediaRowWidget(),
                    height(heightSize(context) * 0.05),
                    const CustomAuthText(
                      isLoadgin: false,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
