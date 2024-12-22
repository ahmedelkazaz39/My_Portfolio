import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_manager.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import '../constants/gradient_colors.dart';
import '../widgets/desktop_skills.dart';
import '../widgets/mobile_drawer.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/mobile_skills.dart';
import '../widgets/project_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer.dart';
import '../constants/size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isDesktop = screenSize.width >= kMinDesktopWidth;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: ColorManager.scaffoldBg,
      endDrawer: isDesktop
          ? null
          : MobileDrawer(
              onNavItemTap: (int navIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
              },
            ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                SizedBox(key: navBarKeys.first),
                if (isDesktop) const MainDesktop() else const MainMobile(),

                //! Skills Section
                Container(
                  key: navBarKeys[1],
                  width: screenSize.width,
                  // color: ColorManager.bgLight1,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return gradient.createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          );
                        },
                        child: const Text(
                          'What I can do',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: ColorManager.whitePrimary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      isDesktop ? const DesktopSkills() : const MobileSkills(),
                    ],
                  ),
                ),

                // Projects Section
                ProjectSection(key: navBarKeys[2]),

                // Contact Section
                ContactSection(key: navBarKeys[3]),

                // Footer
                const Footer(),
              ],
            ),
          ),

          // Fixed Header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: isDesktop
                ? HeaderDesktop(
                    onNavMenuTap: (int index) {
                      scrollToSection(index);
                    },
                  )
                : HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
          ),
        ],
      ),
    );
  }

  void scrollToSection(int navIndex) {
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
