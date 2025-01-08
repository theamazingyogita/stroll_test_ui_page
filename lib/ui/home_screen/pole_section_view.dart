import 'package:flutter/material.dart';
import 'package:stroll_test_ui/utils/color_utils.dart';
import 'package:stroll_test_ui/utils/font_family-utils.dart';

class PoleSectionView extends StatefulWidget {
  const PoleSectionView({super.key});

  @override
  _PoleSectionViewState createState() => _PoleSectionViewState();
}

class _PoleSectionViewState extends State<PoleSectionView> {
  String selectedValue = 'The serenity past midnight'; // Initial selected value

  @override
  Widget build(BuildContext context) {
    final String option1 = 'The peace in the early mornings';
    final String option2 = 'The magical golden hours';
    final String option3 = 'Wind-down time after dinners';
    final String option4 = 'The serenity past midnight';

    final List<String> PoleValues = [option1, option2, option3, option4];
    final List<String> poleOptions = ['A', 'B', 'C', 'D'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/model.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Angelina,28',
                      style: fontNovaRegularTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'What is your favorite time of the day?',
                      maxLines: 3,
                      softWrap: true,
                      style: fontNovaBoldTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            '"Mine is definitely the peace in the morning."',
            style: fontNovaLightTextStyle.copyWith(
              color: Color(0xffCBC9FF),
              fontSize: 12,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
          ),
          SizedBox(height: 14),
          GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: PoleValues.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedValue =
                        PoleValues[index]; // Update the selected value
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: PoleValues[index] == selectedValue
                          ? ColorUtils.themeColor
                          : Colors.transparent,
                      width: 2,
                    ),
                    color: Color(0xff232A2E),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: PoleValues[index] == selectedValue
                              ? ColorUtils.themeColor
                              : Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: PoleValues[index] == selectedValue
                                ? ColorUtils.themeColor
                                : Colors.white,
                          ),
                        ),
                        height: 20,
                        width: 20,
                        child: Center(
                          child: Text(
                            poleOptions[index],
                            style: fontNovaRegularTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Text(
                          PoleValues[index],
                          style: fontNovaRegularTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          maxLines: 3,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2.12,
            ),
          ),
        ],
      ),
    );
  }
}
