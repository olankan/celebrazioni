import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:celebrazioni/presentation/dashboard/provider/providers.dart';
import 'package:celebrazioni/theme/custom_text_style.dart';
import 'package:celebrazioni/theme/theme_helper.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends ConsumerWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottonIndex = ref.watch(bottomBarIndexProvider);

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffDCDFE3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SalomonBottomBar(
          // itemShape: ShapeBorder.lerp(Radius.circular(7), b, t),
          currentIndex: bottonIndex,
          onTap: (index) {
            ref.watch(bottomBarIndexProvider.notifier).state = index;
          },
          backgroundColor: PrimaryColors.white,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/images/Home.svg',
                color: bottonIndex == 0
                    ? PrimaryColors.primary
                    : Color(0xffADA4A5),
                fit: BoxFit.scaleDown,
              ),
              title: Text(
                "Home",
                style: CustomTextStyles.body1Poppins_12x4.copyWith(
                  color: PrimaryColors.black,
                ),
              ),
              selectedColor: Color(0xff0C81E4).withOpacity(0.1),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(
                Icons.image_rounded,
                size: 27.r,
                color: bottonIndex == 1
                    ? PrimaryColors.primary
                    : Color(0xffADA4A5),
              ),
              title: Text(
                "Gallery",
                style: CustomTextStyles.body1Poppins_12x4.copyWith(
                  color: PrimaryColors.black,
                ),
              ),
              selectedColor: Color(0xff0C81E4).withOpacity(0.1),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/images/Chat.svg',
                color: bottonIndex == 2
                    ? PrimaryColors.primary
                    : Color(0xffADA4A5),
                fit: BoxFit.scaleDown,
              ),
              title: Text(
                "Chats",
                style: CustomTextStyles.body1Poppins_12x4.copyWith(
                  color: PrimaryColors.black,
                ),
              ),
              selectedColor: Color(0xff0C81E4).withOpacity(0.1),
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/images/Messages.svg',
                color: bottonIndex == 3
                    ? PrimaryColors.primary
                    : Color(0xffADA4A5),
                fit: BoxFit.scaleDown,
              ),
              title: Text(
                "Inbox",
                style: CustomTextStyles.body1Poppins_12x4.copyWith(
                  color: PrimaryColors.black,
                ),
              ),
              selectedColor: Color(0xff0C81E4).withOpacity(0.1),
            ),
          ]),
    );
  }
}
