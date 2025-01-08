import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_test_ui/pick_option_view.dart';
import 'package:stroll_test_ui/ui/home_screen/bonfire_screen.dart';
import 'package:stroll_test_ui/ui/home_screen/pole_section_view.dart';
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
        bottom: false,
        top: false,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              BonfireScreen(),
              _buildDummmyScreen(),
              _buildDummmyScreen(),
              _buildDummmyScreen(),
            ],
          ),
          bottomNavigationBar: Container(
            color: Color(0xff0F1115),
            child: TabBar(
              padding: EdgeInsets.only(
                bottom: 26,
                top: 8,
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
                  colorFilter: ColorFilter.mode(
                    _tabController.index == 1
                        ? ColorUtils.themeColor
                        : Color(0xff6F6E7C),
                    BlendMode.srcIn,
                  ),
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

  _buildDummmyScreen() {
    return Container(
      color: Colors.white,
    );
  }
}
