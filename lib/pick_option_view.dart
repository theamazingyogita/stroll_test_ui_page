import 'package:flutter/material.dart';
import 'package:stroll_test_ui/utils/color_utils.dart';
import 'package:stroll_test_ui/utils/font_family-utils.dart';

class PickOptionView extends StatelessWidget {
  const PickOptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Pick you option\nSee who has similar mind',
            style: fontNovaRegularTextStyle.copyWith(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.all(10),
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(
                        color: ColorUtils.themeColor,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                icon: Icon(
                  Icons.mic_rounded,
                  color: ColorUtils.themeColor,
                  size: 32,
                ),
                onPressed: () {},
              ),
              SizedBox(width: 10),
              IconButton(
                padding: EdgeInsets.all(10),
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(ColorUtils.themeColor),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                icon: Icon(
                  Icons.arrow_forward,
                  size: 32,
                  color: Colors.black,
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
