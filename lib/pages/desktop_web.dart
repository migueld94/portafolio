// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:portfolio2024/assets/l10n/l10n.dart';
import 'package:portfolio2024/assets/utils/assets.dart';
import 'package:portfolio2024/assets/utils/methods/utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portfolio2024/assets/utils/widgets/language.dart';
import 'package:portfolio2024/assets/utils/widgets/on_hover.dart';
import 'package:portfolio2024/assets/utils/widgets/card_info.dart';
import 'package:portfolio2024/assets/utils/widgets/change_theme.dart';
import 'package:portfolio2024/assets/utils/theme/themes_provider.dart';
import 'package:portfolio2024/assets/utils/widgets/timeline_tile.dart';
import 'package:portfolio2024/pages/desktop/sections/section_about.dart';
import 'package:portfolio2024/pages/desktop/sections/section_home.dart';
import 'package:portfolio2024/pages/desktop/sections/section_resume.dart';

class DesktopWeb extends StatefulWidget {
  const DesktopWeb({super.key});

  @override
  State<DesktopWeb> createState() => _DesktopWebState();
}

class _DesktopWebState extends State<DesktopWeb> {
  final homeItem = GlobalKey();
  final aboutUsItem = GlobalKey();
  final resumeItem = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: PortfolioColors.colorBlack,
      appBar: AppBar(
        backgroundColor: PortfolioColors.colorBlack,
        title: Row(
          children: [
            GestureDetector(
              onTap: () => scrollToItem(homeItem),
              child: OnHoverButton(
                builder: (isHovered) {
                  final color = isHovered
                      ? PortfolioColors.colorOrange
                      : PortfolioColors.colorWhite;
                  return AutoSizeText(
                    AppLocalizations.of(context)!.items_00,
                    style:
                        context.theme.textTheme.textNav.copyWith(color: color),
                  );
                },
              ),
            ),
            horizontalMargin40,
            GestureDetector(
              onTap: () => scrollToItem(aboutUsItem),
              child: OnHoverButton(
                builder: (isHovered) {
                  final color = isHovered
                      ? PortfolioColors.colorOrange
                      : PortfolioColors.colorWhite;
                  return AutoSizeText(
                    AppLocalizations.of(context)!.section_about_me,
                    style:
                        context.theme.textTheme.textNav.copyWith(color: color),
                  );
                },
                // child:
              ),
            ),
            horizontalMargin40,
            GestureDetector(
              onTap: () => scrollToItem(resumeItem),
              child: OnHoverButton(
                builder: (isHovered) {
                  final color = isHovered
                      ? PortfolioColors.colorOrange
                      : PortfolioColors.colorWhite;
                  return AutoSizeText(
                    AppLocalizations.of(context)!.items_04,
                    style:
                        context.theme.textTheme.textNav.copyWith(color: color),
                  );
                },
              ),
            ),
          ],
        ),
        actions: const [
          LanguagePickerWidget(),
          horizontalMargin24,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Section Home
            SectionHome(currentWidth: currentWidth, key: homeItem),

            // Section About
            SectionAbout(currentWidth: currentWidth, key: aboutUsItem),

            // Section Resume
            SectionResume(currentWidth: currentWidth, key: resumeItem),
          ],
        ),
      ),
    );
  }
}