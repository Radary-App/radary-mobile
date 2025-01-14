import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/core/theming/app_colors.dart';
import '../../../../core/routing/route.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../../logic/cubit/sigin_up_cubit.dart';
import '../../logic/cubit/sigin_up_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            FocusScope.of(context).unfocus(); // Dismiss keyboard
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: blue,
                ),
              ),
            );
          },
          signupSuccess: (signupResponse) {
            if (_isDialogOpen(context)) {
              context.pop(); // Close the loading dialog
            }
            showSuccessDialog(context); // Show success dialog
          },
          signupError: (error) {
            if (_isDialogOpen(context)) {
              context.pop(); // Close the loading dialog
            }
            setupErrorState(context, error); // Show error dialog
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  bool _isDialogOpen(BuildContext context) =>
      ModalRoute.of(context)?.isCurrent != true;

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).Signup_Successful),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(S.of(context).Congratulations),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, 
                backgroundColor: Colors.blue,
                disabledForegroundColor:
                    Colors.grey.withOpacity(0.38), 
              ),
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: Text(S.of(context).ConfirmBtn),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppTextStyles.font14BlackMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop(); // Close error dialog
            },
            child: Text(
              S.of(context).Got_it,
              style: AppTextStyles.font14BlackRegular,
            ),
          ),
        ],
      ),
    );
  }
}
