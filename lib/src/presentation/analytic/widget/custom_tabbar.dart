import 'package:flutter/material.dart';

import '../../../core/setting/localization/app_localizations.dart';
import '../../../core/utils/constants/app_styles.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key, required this.controller});
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TabBar(
          controller: controller,
          labelColor: Colors.black87,
          labelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          unselectedLabelColor: const Color.fromRGBO(45, 216, 198, 1),
          unselectedLabelStyle: AppStyles.p,
          dividerHeight: 0,
          dividerColor: Colors.transparent,
          isScrollable: false,
          indicatorColor: Colors.red,
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          tabs: [
            Tab(text: AppLocalizations.of(context).translate('week')),
            Tab(text: AppLocalizations.of(context).translate('month')),
            Tab(text: AppLocalizations.of(context).translate('year'))
          ]),
    );
  }
}
