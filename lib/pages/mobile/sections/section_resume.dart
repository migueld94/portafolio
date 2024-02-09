// ignore_for_file: non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portfolio2024/assets/utils/constants.dart';
import 'package:portfolio2024/assets/utils/methods/utils.dart';
import 'package:portfolio2024/assets/utils/theme/themes_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portfolio2024/assets/utils/widgets/on_hover.dart';
import 'package:timeline_tile/timeline_tile.dart';

class SectionResume extends StatelessWidget {
  const SectionResume({
    super.key,
    required this.currentWidth,
  });

  final Size currentWidth;

  @override
  Widget build(BuildContext context) {
    String url_scrum = "${Constants.certificateURL}certification_scrum.pdf";
    String url_marketing =
        "${Constants.certificateURL}certification_marketing.pdf";
    String url_transformation_employment =
        "${Constants.certificateURL}certification_digital_transformation_employment.pdf";
    String url_cloud_computing =
        "${Constants.certificateURL}certification_cloud_computing.pdf";
    String url_ecommerce =
        "${Constants.certificateURL}certification_ecommerce.pdf";
    String url_digital_skills_professionals =
        "${Constants.certificateURL}certification_digital_skills_professionals.pdf";
    String url_cybersecurity =
        "${Constants.certificateURL}certification_cybersecurity.pdf";

    return Padding(
      padding: allPadding16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            // 'What can i do?',
            AppLocalizations.of(context)!.doing,
            style: context.theme.textTheme.subtitle_01,
          ),
          verticalMargin8,
          AutoSizeText(
            AppLocalizations.of(context)!.work,
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            AppLocalizations.of(context)!.design,
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin16,

          AutoSizeText(
            // 'Hobbies',
            AppLocalizations.of(context)!.hobbies,
            style: context.theme.textTheme.subtitle_01,
          ),
          verticalMargin8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: borderRadius20,
                  border: Border.all(
                    color: PortfolioColors.colorWhite,
                  ),
                ),
                child: Icon(
                  Ionicons.airplane_outline,
                  color: PortfolioColors.colorWhite,
                ),
              ),
              horizontalMargin8,
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: borderRadius20,
                  border: Border.all(
                    color: PortfolioColors.colorWhite,
                  ),
                ),
                child: Icon(
                  Ionicons.bicycle_outline,
                  color: PortfolioColors.colorWhite,
                ),
              ),
              horizontalMargin8,
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: borderRadius20,
                  border: Border.all(
                    color: PortfolioColors.colorWhite,
                  ),
                ),
                child: Icon(
                  Ionicons.car_sport_outline,
                  color: PortfolioColors.colorWhite,
                ),
              ),
            ],
          ),
          verticalMargin8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: borderRadius20,
                  border: Border.all(
                    color: PortfolioColors.colorWhite,
                  ),
                ),
                child: Icon(
                  Ionicons.football_outline,
                  color: PortfolioColors.colorWhite,
                ),
              ),
              horizontalMargin8,
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: borderRadius20,
                  border: Border.all(
                    color: PortfolioColors.colorWhite,
                  ),
                ),
                child: Icon(
                  Ionicons.game_controller_outline,
                  color: PortfolioColors.colorWhite,
                ),
              ),
              horizontalMargin8,
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: borderRadius20,
                  border: Border.all(
                    color: PortfolioColors.colorWhite,
                  ),
                ),
                child: Icon(
                  Ionicons.headset_outline,
                  color: PortfolioColors.colorWhite,
                ),
              ),
            ],
          ),
          verticalMargin16,
          // Bloque 1
          AutoSizeText(
            AppLocalizations.of(context)!.section_skills,
            style: context.theme.textTheme.subtitle_01,
          ),
          verticalMargin8,
          AutoSizeText(
            'Flutter - Dart',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            'Python - Django',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            'Angular',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            'Java',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            'HTML - CSS - JavaScript',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            'Oracle - Postgres',
            style: context.theme.textTheme.subtitle_03,
          ),

          verticalMargin16,
          AutoSizeText(
            AppLocalizations.of(context)!.personal_skill,
            style: context.theme.textTheme.subtitle_01,
          ),
          verticalMargin8,
          AutoSizeText(
            AppLocalizations.of(context)!.section_skills_api,
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            AppLocalizations.of(context)!.section_skills_learner,
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            AppLocalizations.of(context)!.section_skills_proactive,
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            AppLocalizations.of(context)!.section_skills_advanced,
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin16,

          AutoSizeText(
            // 'Software Skills',
            AppLocalizations.of(context)!.software_skill,
            style: context.theme.textTheme.subtitle_01,
          ),
          verticalMargin8,
          AutoSizeText(
            'Git - GitLab - GitHub',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            'Figma - Jira',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            'PyCharm - VSCode',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            'Toad - PL/SQL Develop',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin8,
          AutoSizeText(
            'Office - Google Worksheets',
            style: context.theme.textTheme.subtitle_03,
          ),
          verticalMargin16,
          // Languages
          AutoSizeText(
            AppLocalizations.of(context)!.section_lenguage,
            style: context.theme.textTheme.subtitle_01,
          ),
          verticalMargin8,
          Row(
            children: [
              Icon(
                Icons.arrow_right,
                color: PortfolioColors.colorWhite,
              ),
              horizontalMargin8,
              AutoSizeText(
                AppLocalizations.of(context)!.english_lenguage,
                style: context.theme.textTheme.subtitle_03,
              ),
            ],
          ),
          verticalMargin8,
          Row(
            children: [
              Icon(
                Icons.arrow_right,
                color: PortfolioColors.colorWhite,
              ),
              horizontalMargin8,
              AutoSizeText(
                AppLocalizations.of(context)!.spanish_lenguage,
                style: context.theme.textTheme.subtitle_03,
              ),
            ],
          ),
          verticalMargin16,

          // Bloque 2
          AutoSizeText(
            AppLocalizations.of(context)!.section_work_experience,
            style: context.theme.textTheme.subtitle_01,
          ),
          verticalMargin4,
          AutoSizeText(
            'EMSER | Cordoba, Argentina',
            style: context.theme.textTheme.subtitle_02,
          ),
          verticalMargin8,
          SizedBox(
            height: 50,
            child: TimelineTile(
              isFirst: true,
              alignment: TimelineAlign.manual,
              lineXY: 0.4,
              beforeLineStyle: LineStyle(color: PortfolioColors.colorWhite),
              indicatorStyle: IndicatorStyle(
                width: 20,
                color: PortfolioColors.colorWhite,
                iconStyle: IconStyle(
                  iconData: Icons.done,
                  color: PortfolioColors.colorBlack,
                ),
              ),
              startChild: AutoSizeText(
                '09/2024 - 09/2024',
                style: context.theme.textTheme.subtitle_03,
              ),
              endChild: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: AutoSizeText(
                  'Fast2Ship\n${AppLocalizations.of(context)!.work_ocupation_00}',
                  style: context.theme.textTheme.subtitle_03,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: TimelineTile(
              // isFirst: true,
              alignment: TimelineAlign.manual,
              lineXY: 0.4,
              beforeLineStyle: LineStyle(color: PortfolioColors.colorWhite),
              indicatorStyle: IndicatorStyle(
                width: 20,
                color: PortfolioColors.colorWhite,
                iconStyle: IconStyle(
                  iconData: Icons.done,
                  color: PortfolioColors.colorBlack,
                ),
              ),
              startChild: AutoSizeText(
                '09/2024 - 09/2024',
                style: context.theme.textTheme.subtitle_03,
              ),
              endChild: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: AutoSizeText(
                  'GoTruck\n${AppLocalizations.of(context)!.work_ocupation_01}',
                  style: context.theme.textTheme.subtitle_03,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: TimelineTile(
              isLast: true,
              alignment: TimelineAlign.manual,
              lineXY: 0.4,
              beforeLineStyle: LineStyle(color: PortfolioColors.colorWhite),
              indicatorStyle: IndicatorStyle(
                width: 20,
                color: PortfolioColors.colorWhite,
                iconStyle: IconStyle(
                  iconData: Icons.done,
                  color: PortfolioColors.colorBlack,
                ),
              ),
              startChild: AutoSizeText(
                '09/2024 - 09/2024',
                style: context.theme.textTheme.subtitle_03,
              ),
              endChild: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: AutoSizeText(
                  'Gev+\n${AppLocalizations.of(context)!.work_ocupation_01}',
                  style: context.theme.textTheme.subtitle_03,
                ),
              ),
            ),
          ),
          verticalMargin8,
          AutoSizeText(
            'ONAT | ${AppLocalizations.of(context)!.location}',
            style: context.theme.textTheme.subtitle_02,
          ),
          verticalMargin8,
          SizedBox(
            height: 50,
            child: TimelineTile(
              isFirst: true,
              alignment: TimelineAlign.manual,
              lineXY: 0.4,
              beforeLineStyle: LineStyle(color: PortfolioColors.colorWhite),
              indicatorStyle: IndicatorStyle(
                width: 20,
                color: PortfolioColors.colorWhite,
                iconStyle: IconStyle(
                  iconData: Icons.done,
                  color: PortfolioColors.colorBlack,
                ),
              ),
              startChild: AutoSizeText(
                '09/2024 - 09/2024',
                style: context.theme.textTheme.subtitle_03,
              ),
              endChild: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: AutoSizeText(
                  '${AppLocalizations.of(context)!.work_ocupation_02}\n${AppLocalizations.of(context)!.work_ocupation_tax}',
                  style: context.theme.textTheme.subtitle_03,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: TimelineTile(
              isLast: true,
              alignment: TimelineAlign.manual,
              lineXY: 0.4,
              beforeLineStyle: LineStyle(color: PortfolioColors.colorWhite),
              indicatorStyle: IndicatorStyle(
                width: 20,
                color: PortfolioColors.colorWhite,
                iconStyle: IconStyle(
                  iconData: Icons.done,
                  color: PortfolioColors.colorBlack,
                ),
              ),
              startChild: AutoSizeText(
                '09/2024 - 09/2024',
                style: context.theme.textTheme.subtitle_03,
              ),
              endChild: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: AutoSizeText(
                  '${AppLocalizations.of(context)!.work_ocupation_02}\n${AppLocalizations.of(context)!.work_ocupation_science}',
                  style: context.theme.textTheme.subtitle_03,
                ),
              ),
            ),
          ),
          verticalMargin16,
          // 'Education',
          AutoSizeText(
            AppLocalizations.of(context)!.section_education,
            style: context.theme.textTheme.subtitle_01,
          ),
          verticalMargin8,
          SizedBox(
            height: 80,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.4,
              beforeLineStyle: LineStyle(color: PortfolioColors.colorWhite),
              indicatorStyle: IndicatorStyle(
                width: 20,
                color: PortfolioColors.colorWhite,
                iconStyle: IconStyle(
                  iconData: Icons.done,
                  color: PortfolioColors.colorBlack,
                ),
              ),
              startChild: AutoSizeText(
                '2024 - 2024',
                style: context.theme.textTheme.subtitle_03,
              ),
              endChild: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: AutoSizeText(
                  '${AppLocalizations.of(context)!.university_name}\n${AppLocalizations.of(context)!.university_degree}',
                  style: context.theme.textTheme.subtitle_03,
                ),
              ),
            ),
          ),
          verticalMargin16,

          // 'Certificacion'
          Row(
            children: [
              Icon(
                Ionicons.ribbon_outline,
                color: PortfolioColors.colorWhite,
              ),
              horizontalMargin8,
              AutoSizeText(
                AppLocalizations.of(context)!.section_certificates,
                style: context.theme.textTheme.subtitle_01,
              ),
            ],
          ),
          verticalMargin8,

          // Scrum
          AutoSizeText(
            AppLocalizations.of(context)!.certificate_scrum,
            style: context.theme.textTheme.subtitle,
          ),
          verticalMargin4,
          GestureDetector(
            onTap: () {
              download(url_scrum);
            },
            child: OnHoverText(
              builder: (isHovered) {
                final color = PortfolioColors.colorOrange;
                return Row(
                  children: [
                    AutoSizeText(
                      AppLocalizations.of(context)!.see_more,
                      style: context.theme.textTheme.captions.copyWith(
                        color: isHovered ? color : PortfolioColors.colorWhite,
                      ),
                    ),
                    horizontalMargin4,
                    Icon(
                      Ionicons.paper_plane_outline,
                      size: 12.0,
                      color: isHovered ? color : PortfolioColors.colorWhite,
                    ),
                  ],
                );
              },
            ),
          ),
          verticalMargin8,

          // Marketing
          AutoSizeText(
            AppLocalizations.of(context)!.certificate_marketing,
            style: context.theme.textTheme.subtitle,
          ),
          verticalMargin4,
          GestureDetector(
            onTap: () {
              download(url_marketing);
            },
            child: OnHoverText(
              builder: (isHovered) {
                final color = PortfolioColors.colorOrange;
                return Row(
                  children: [
                    AutoSizeText(
                      AppLocalizations.of(context)!.see_more,
                      style: context.theme.textTheme.captions.copyWith(
                        color: isHovered ? color : PortfolioColors.colorWhite,
                      ),
                    ),
                    horizontalMargin4,
                    Icon(
                      Ionicons.paper_plane_outline,
                      size: 12.0,
                      color: isHovered ? color : PortfolioColors.colorWhite,
                    ),
                  ],
                );
              },
            ),
          ),
          verticalMargin8,

          // Comercio Electronico
          AutoSizeText(
            AppLocalizations.of(context)!.certificate_commerce,
            style: context.theme.textTheme.subtitle,
          ),
          verticalMargin4,
          GestureDetector(
            onTap: () {
              download(url_ecommerce);
            },
            child: OnHoverText(
              builder: (isHovered) {
                final color = PortfolioColors.colorOrange;
                return Row(
                  children: [
                    AutoSizeText(
                      AppLocalizations.of(context)!.see_more,
                      style: context.theme.textTheme.captions.copyWith(
                        color: isHovered ? color : PortfolioColors.colorWhite,
                      ),
                    ),
                    horizontalMargin4,
                    Icon(
                      Ionicons.paper_plane_outline,
                      size: 12.0,
                      color: isHovered ? color : PortfolioColors.colorWhite,
                    ),
                  ],
                );
              },
            ),
          ),
          verticalMargin8,

          // Cybersecurity
          AutoSizeText(
            AppLocalizations.of(context)!.certificate_cybersecurity,
            style: context.theme.textTheme.subtitle,
          ),
          verticalMargin4,
          GestureDetector(
            onTap: () {
              download(url_cybersecurity);
            },
            child: OnHoverText(
              builder: (isHovered) {
                final color = PortfolioColors.colorOrange;
                return Row(
                  children: [
                    AutoSizeText(
                      AppLocalizations.of(context)!.see_more,
                      style: context.theme.textTheme.captions.copyWith(
                        color: isHovered ? color : PortfolioColors.colorWhite,
                      ),
                    ),
                    horizontalMargin4,
                    Icon(
                      Ionicons.paper_plane_outline,
                      size: 12.0,
                      color: isHovered ? color : PortfolioColors.colorWhite,
                    ),
                  ],
                );
              },
            ),
          ),
          verticalMargin8,

          // Transformacion Digital
          AutoSizeText(
            AppLocalizations.of(context)!.certificate_digital_employment,
            style: context.theme.textTheme.subtitle,
          ),
          verticalMargin4,
          GestureDetector(
            onTap: () {
              download(url_transformation_employment);
            },
            child: OnHoverText(
              builder: (isHovered) {
                final color = PortfolioColors.colorOrange;
                return Row(
                  children: [
                    AutoSizeText(
                      AppLocalizations.of(context)!.see_more,
                      style: context.theme.textTheme.captions.copyWith(
                        color: isHovered ? color : PortfolioColors.colorWhite,
                      ),
                    ),
                    horizontalMargin4,
                    Icon(
                      Ionicons.paper_plane_outline,
                      size: 12.0,
                      color: isHovered ? color : PortfolioColors.colorWhite,
                    ),
                  ],
                );
              },
            ),
          ),
          verticalMargin8,

          // Competencias Digitales
          AutoSizeText(
            AppLocalizations.of(context)!.certificate_digital_skills,
            style: context.theme.textTheme.subtitle,
          ),
          verticalMargin4,
          GestureDetector(
            onTap: () {
              download(url_digital_skills_professionals);
            },
            child: OnHoverText(
              builder: (isHovered) {
                final color = PortfolioColors.colorOrange;
                return Row(
                  children: [
                    AutoSizeText(
                      AppLocalizations.of(context)!.see_more,
                      style: context.theme.textTheme.captions.copyWith(
                        color: isHovered ? color : PortfolioColors.colorWhite,
                      ),
                    ),
                    horizontalMargin4,
                    Icon(
                      Ionicons.paper_plane_outline,
                      size: 12.0,
                      color: isHovered ? color : PortfolioColors.colorWhite,
                    ),
                  ],
                );
              },
            ),
          ),
          verticalMargin8,

          // Marketing
          AutoSizeText(
            AppLocalizations.of(context)!.certificate_cloud_computing,
            style: context.theme.textTheme.subtitle,
          ),
          verticalMargin4,
          GestureDetector(
            onTap: () {
              download(url_cloud_computing);
            },
            child: OnHoverText(
              builder: (isHovered) {
                final color = PortfolioColors.colorOrange;
                return Row(
                  children: [
                    AutoSizeText(
                      AppLocalizations.of(context)!.see_more,
                      style: context.theme.textTheme.captions.copyWith(
                        color: isHovered ? color : PortfolioColors.colorWhite,
                      ),
                    ),
                    horizontalMargin4,
                    Icon(
                      Ionicons.paper_plane_outline,
                      size: 12.0,
                      color: isHovered ? color : PortfolioColors.colorWhite,
                    ),
                  ],
                );
              },
            ),
          ),

          // Bloque 3
        ],
      ),
    );
  }
}
