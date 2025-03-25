import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, this.scaffoldKey});

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: Icon(Icons.menu, color: AppColors.periwinkle),
        onPressed: () => scaffoldKey?.currentState?.openDrawer(),
      ),
      expandedHeight: 100,
      scrolledUnderElevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text("$_getGreeting, Richard",
            textAlign: TextAlign.start,
            style: TextStyle(color: AppColors.tropicalIndigo)),
        collapseMode: CollapseMode.pin,
      ),
      pinned: true,
    );
  }

  String get _getGreeting {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return "Bom dia";
    } else if (hour < 18) {
      return "Boa tarde";
    } else {
      return "Boa noite";
    }
  }
}
