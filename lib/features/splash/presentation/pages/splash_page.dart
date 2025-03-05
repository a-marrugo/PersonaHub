import 'package:flutter/material.dart';
import 'package:personal_hub/core/presentation/pages/base_page.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';
import 'package:personal_hub/core/shared/constants/assets_constants.dart';
import 'package:personal_hub/core/shared/l10n/l10n.dart';

/// SplashPage is the initial screen of the app.
///
/// It displays a logo/image at the top and a bottom card with a title,
/// description, and a call-to-action button.
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Stack(
        children: [
          Positioned(
            top: 200,
            right: 0,
            left: 0,
            child: Image.asset(
              AssetsConstantsImg.imgQR,
              width: 160,
              height: 160,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              elevation: 10,
              shadowColor: Colors.black54,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(61),
                  topRight: Radius.circular(61),
                ),
              ),
              color: const Color(0xFF333333),
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(51, 22, 51, 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 5,
                      width: 134,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFDB623),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    const SizedBox(height: 36),
                    Text(
                      context.l10n.start,
                      style: const TextStyle(
                        color: Color(0xFFFEFEFE),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      context.l10n.aboutApp,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFFFEFEFE),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFFFDB623),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 24),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  context.l10n.lestGo,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: AppPalette.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_rounded,
                              color: AppPalette.primaryColor,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
