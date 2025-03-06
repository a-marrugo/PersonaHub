import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_hub/core/presentation/pages/base_page.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';
import 'package:personal_hub/core/presentation/styles/font_family.dart';
import 'package:personal_hub/core/presentation/widgets/snack_bar_helper.dart';
import 'package:personal_hub/core/presentation/widgets/text_button_widget.dart';
import 'package:personal_hub/core/shared/constants/assets_constants.dart';
import 'package:personal_hub/core/shared/l10n/l10n.dart';
import 'package:personal_hub/features/home/application/providers/provider.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';

/// **HomePage** is a StatefulWidget that represents the main
/// screen of the application. It is used to display the user's information
/// and provide navigation to manage addresses.
class HomePage extends ConsumerStatefulWidget {
  /// Creates a new instance of the HomePage widget.
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  bool isLoading = false;
  User? user;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(getUserNotifier.notifier).fetchData(null);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(getUserNotifier, (_, newState) {
      newState.maybeWhen(
        orElse: () {},
        loading: () {
          setState(() {
            isLoading = true;
          });
        },
        data: (data) {
          setState(() {
            isLoading = false;
            user = data.data;
          });
        },
        error: (_, __) {
          setState(() {
            isLoading = false;
          });
          SnackbarHelper.showError(context, context.l10n.somethingWasWrong);
        },
      );
    });
    return BasePage(
      appBarTitle: context.l10n.home,
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height -
                        kTextTabBarHeight * 4,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.zero,
                        child: Image.asset(
                          AssetsConstantsImg.imgQRFill,
                          width: 170,
                        ),
                      ),
                      const SizedBox(height: 38),
                      Text(
                        user?.fullName() ?? '',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontW.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 11, bottom: 16),
                        child: Text(
                          context.l10n.homeDescription,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      TextButtonWidget(
                        onPressed: () {},
                        text: context.l10n.goAddress,
                        textColor: AppPalette.primaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
