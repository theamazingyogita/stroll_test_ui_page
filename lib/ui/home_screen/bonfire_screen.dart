import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_test_ui/pick_option_view.dart';
import 'package:stroll_test_ui/ui/home_screen/pole_section_view.dart';
import 'package:stroll_test_ui/utils/color_utils.dart';
import 'package:stroll_test_ui/utils/font_family-utils.dart';

class BonfireScreen extends StatelessWidget {
  const BonfireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Image.asset(
          'assets/background video.png',
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Stroll Bonfire',
                      textAlign: TextAlign.center,
                      style: fontNovaBoldTextStyle.copyWith(
                        color: ColorUtils.themeColor,
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 1.0,
                            offset: Offset(2, 2),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: ColorUtils.themeColor,
                        size: 40,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/bonfire.svg',
                      colorFilter: ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                      height: 10,
                      width: 10,
                    ),
                    Text(
                      ' 22h 4m',
                      style: fontNovaRegularTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset(
                      'assets/User.svg',
                      height: 10,
                      width: 10,
                      colorFilter: ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    Text(
                      ' 103',
                      style: fontNovaRegularTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Stack(
          children: [
            Positioned.fill(
              bottom: 0,
              top: MediaQuery.of(context).size.height * 0.3,
              // Start fading from 20% of the screen height
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.2, 0.4, 0.9],
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black,
                      Colors.black,
                    ],
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PoleSectionView(),
                    PickOptionView(),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
