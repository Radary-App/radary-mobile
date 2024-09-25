import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import '../../../../core/routing/route.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../../../home/logic/cubit/add_proplem_cubit.dart';
import '../../../home/logic/cubit/add_proplem_state.dart';

class AddProblemBlocListener extends StatelessWidget {
  const AddProblemBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddProblemCubit, AddProblemState>( // Corrected name
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error, // Use underscore-prefixed classes
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            _showLoadingDialog(context);
          },
          success: (response) {
            context.pop(); // Dismiss loading dialog
            context.pushNamed(Routes.confirmView);
          },
          error: (error) {
            context.pop(); // Dismiss loading dialog
            _setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
        child: SpinKitWanderingCubes(
          color: blue,
          size: 50.0,
        ),
      ),
    );
  }

  void _setupErrorState(BuildContext context, String error) {
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
          style: AppTextStyles.font12BlackRegular,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              S.of(context).Got_it,
              style: AppTextStyles.font12BlackRegular,
            ),
          ),
        ],
      ),
    );
  }
}