import 'package:flutter/material.dart';

import '../../config/assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsConstants.logo,
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
