import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_hub/core/presentation/pages/base_page.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';
import 'package:personal_hub/core/presentation/styles/font_family.dart';
import 'package:personal_hub/core/presentation/widgets/snack_bar_helper.dart';
import 'package:personal_hub/core/shared/constants/assets_constants.dart';
import 'package:personal_hub/core/shared/extensions/build_context_extension.dart';
import 'package:personal_hub/core/shared/l10n/l10n.dart';
import 'package:personal_hub/core/shared/router/route_constants.dart';
import 'package:personal_hub/features/sign_up/application/providers/provider.dart';
import 'package:personal_hub/features/sign_up/presentation/widgets/sign_up_form_widget.dart';

/// A stateless widget representing the sign-up page.
class SignUpPage extends ConsumerStatefulWidget {
  /// Creates a `SignUpPage`.
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ref.listen(registerUserNotifier, (_, newState) {
      newState.maybeWhen(
        orElse: () {},
        loading: () {
          setState(() {
            isLoading = true;
          });
        },
        data: (_) {
          setState(() {
            isLoading = false;
          });
          context.router
              .navigate(context, navigationConstant: RouteConstants.homePage);
        },
        error: (_, __) {
          setState(() {
            isLoading = false;
          });
          SnackbarHelper.showError(context, context.l10n.somethingWasWrong);
        },
      );
    });

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BasePage(
        isLoading: isLoading,
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 36),
                      child: Image.asset(
                        AssetsConstantsImg.imgQRFill,
                        width: 160,
                        height: 160,
                      ),
                    ),
                  ),
                  const SizedBox(height: 38),
                  Text(
                    context.l10n.signUp,
                    style:
                        const TextStyle(fontSize: 30, fontWeight: FontW.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: SignUpFormWidget(),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 46, bottom: 100),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${context.l10n.alreadyHaveAccount} ',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14),
                            ),
                            TextSpan(
                              text: context.l10n.login,
                              style: const TextStyle(
                                color: AppPalette.accentColor,
                                fontSize: 14,
                                fontWeight: FontW.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
