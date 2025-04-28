import 'package:flutter/material.dart';
import 'package:inteliteacher/config/assets.dart';
import 'package:lottie/lottie.dart';

import '../../config/theme.dart';

class CustomCircleLeader extends StatelessWidget {
  final double size;
  final String lottie;
  final String rank;

  const CustomCircleLeader.first({super.key})
      : lottie = AssetsConstants.starFirst,
        size = 100,
        rank = '1';

  const CustomCircleLeader.second({super.key})
      : lottie = AssetsConstants.starSecond,
        size = 80,
        rank = '2';

  const CustomCircleLeader.third({super.key})
      : lottie = AssetsConstants.starThird,
        size = 80,
        rank = '3';

  const CustomCircleLeader.normal({super.key})
      : lottie = AssetsConstants.starPurple,
        size = 40,
        rank = '3';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 4,
              color: AppColors.periwinkle,
            ),
          ),
          child: Lottie.asset(lottie, renderCache: RenderCache.drawingCommands),
        ),
        Positioned(
          bottom: -5,
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.periwinkle,
            ),
            padding: const EdgeInsets.all(4),
            child: Text(rank,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.ghostWhite,
                      fontWeight: FontWeight.w600,
                    )),
          ),
        ),
      ],
    );
  }
}
