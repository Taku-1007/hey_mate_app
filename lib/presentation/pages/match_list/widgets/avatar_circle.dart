import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/gen/assets.gen.dart';

class AvatarCircle extends StatelessWidget {
  const AvatarCircle({
    super.key,
    required this.avatar,
    required this.fallbackInitial,
    required this.size,
  });

  final AssetGenImage? avatar;
  final String fallbackInitial;
  final double size;

  @override
  Widget build(BuildContext context) {
    final gradient = _gradientForFallback(fallbackInitial);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: avatar == null ? gradient : null,
      ),
      child: ClipOval(
        child:
            avatar != null
                ? avatar!.image(width: size, height: size, fit: BoxFit.cover)
                : Center(
                  child: Text(
                    fallbackInitial,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: size * 0.36,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
      ),
    );
  }
}

LinearGradient _gradientForFallback(String fallbackInitial) {
  const palettes = [
    [AppColors.avatarGradientPeachStart, AppColors.avatarGradientPeachEnd],
    [AppColors.avatarGradientBlueStart, AppColors.avatarGradientBlueEnd],
    [AppColors.avatarGradientGoldStart, AppColors.avatarGradientGoldEnd],
    [AppColors.avatarGradientMintStart, AppColors.avatarGradientMintEnd],
  ];

  final palette = palettes[fallbackInitial.codeUnitAt(0) % palettes.length];

  return LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: palette,
  );
}
