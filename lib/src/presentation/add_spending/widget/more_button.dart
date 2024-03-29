import 'package:flutter/material.dart';

import '../../../core/setting/localization/app_localizations.dart';
import '../../../core/utils/constants/app_styles.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({super.key, required this.action, required this.more});

  final Function action;
  final bool more;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        action();
      },
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            more
                ? AppLocalizations.of(context).translate('hide_away')
                : AppLocalizations.of(context).translate('more_details'),
            style: AppStyles.p,
          ),
          Icon(more ? Icons.arrow_drop_up : Icons.arrow_drop_down)
        ],
      ),
    );
  }
}
