import 'package:course_app/Core/constant/app_sized.dart';
import 'package:course_app/Core/functions/show_toast.dart';
import 'package:course_app/Core/functions/validation.dart';
import 'package:course_app/Core/styles/app_text_styles.dart';
import 'package:course_app/Core/utils/app_colors.dart';
import 'package:course_app/Core/utils/app_images.dart';
import 'package:course_app/Core/widget/custom_app_bar.dart';
import 'package:course_app/di.dart';
import 'package:course_app/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:course_app/features/auth/presentation/cubit/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../../Core/widget/custom_app_button.dart';
import '../widget/custom_auth_text.dart';
import '../widget/custom_forget_password_widget.dart';
import '../widget/custom_sign_in_divider.dart';
import '../widget/custom_social_media_row_widget.dart';
import '../widget/custom_text_form_filed.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt()),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
          } else if (state is LoginFailureState) {
            showToast(message: state.message);
          }
        },
        builder: (context, state) {
          final cubit = context.read<LoginCubit>();
          return Scaffold(
            appBar: appBar(context, title: "Login"),
            body: state is LoginLoadingStateState
                ? Center(child: Lottie.asset(AppImages.loader))
                : SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Form(
                        key: cubit.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            height(heightSize(context) * 0.2),
                            Text(
                              "Email",
                              style: AppTextStyles.styleRegular14(context)
                                  .copyWith(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w600),
                            ),
                            height(4),
                            CustomTextFormFiled(
                              hintText: "demo@mail.com",
                              controller: cubit.emailController,
                              validator: (val) {
                                return AppValidation.emailValidator(
                                    cubit.emailController.text);
                              },
                            ),
                            height(64),
                            Text(
                              "Password",
                              style: AppTextStyles.styleRegular14(context)
                                  .copyWith(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w600),
                            ),
                            height(4),
                            CustomTextFormFiled(
                              hintText: "**********************",
                              controller: cubit.passwordController,
                              validator: (val) {
                                return AppValidation.passwordVaildtor(
                                    cubit.passwordController.text);
                              },
                            ),
                            height(4),
                            const CustomForgetPasswordWidget(),
                            height(16),
                            CustomAppButton(
                              text: "Login",
                              onPressed: () => cubit.login(),
                            ),
                            height(32),
                            const CustomSignInDivider(),
                            height(16),
                            const CustomSocialMediaRowWidget(),
                            height(heightSize(context) * 0.1),
                            const CustomAuthText(
                              isLoadgin: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
