import 'package:flutter/material.dart';
import 'package:personal_hub/core/presentation/pages/base_page.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';
import 'package:personal_hub/core/presentation/widgets/text_button_widget.dart';
import 'package:personal_hub/core/shared/constants/assets_constants.dart';
import 'package:personal_hub/core/shared/extensions/build_context_extension.dart';
import 'package:personal_hub/core/shared/l10n/l10n.dart';
import 'package:personal_hub/core/shared/router/route_constants.dart';

/// Landing page of the application, featuring an animated introduction
/// with a QR image and a bottom card with a call-to-action button.
class LandingPage extends StatefulWidget {
  /// Creates a [LandingPage] instance.
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
              fit: BoxFit.cover,
              width: 160,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SlideTransition(
              position: _slideAnimation,
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
                      TextButtonWidget(
                        onPressed: () => context.router.navigate(
                          context,
                          push: true,
                          navigationConstant: RouteConstants.signUpPage,
                        ),
                        text: context.l10n.lestGo,
                        icon: Icons.arrow_forward_rounded,
                        textColor: AppPalette.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
