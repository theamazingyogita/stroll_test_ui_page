import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroll_test_ui/utils/color_utils.dart';

import '../../utils/font_family-utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: SafeArea(
        bottom: true,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  Image.asset(
                    'assets/background video.png',
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Stroll Bonfire',
                      textAlign: TextAlign.center,
                      style: fontNovaBoldTextStyle.copyWith(
                        color: Color(0xffB3ADF6),
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 3.0,
                            color: Color(0x000000ff),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 8,
                            child: Text(
                              'Pick you option\nSee who has similar mind',
                              style: fontNovaBoldTextStyle.copyWith(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
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
                                  backgroundColor: WidgetStatePropertyAll(
                                      ColorUtils.themeColor),
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
                    ),
                  ),
                ],
              ),
              Container(),
              Container(),
              Container(),
            ],
          ),
          bottomNavigationBar: Container(
            color: Color(0xff0F1115),
            child: TabBar(
              padding: EdgeInsets.only(
                bottom: 10,
                top: 10,
              ),
              automaticIndicatorColorAdjustment: true,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              controller: _tabController,
              labelColor: Colors.black45,
              tabs: [
                SvgPicture.asset(
                  'assets/swap.svg',
                  height: 34,
                  width: 34,
                ),
                SvgPicture.asset(
                  'assets/bonfire.svg',
                  height: 34,
                  width: 34,
                ),
                SvgPicture.asset(
                  'assets/chat.svg',
                  height: 34,
                  width: 34,
                ),
                SvgPicture.asset(
                  'assets/User.svg',
                  height: 54,
                  width: 44,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
