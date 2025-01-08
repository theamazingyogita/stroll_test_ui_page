import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
    _tabController = TabController(length: 3, vsync: this);

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
                children: [
                  Image.asset(
                    'assets/background video.png',
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: kToolbarHeight,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Stroll Bonfire',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.novaSquare().copyWith(
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
                  ),
                  Container(
                    child: Flex(
                      direction: Axis.horizontal,
                    ),
                  ),
                ],
              ),
              Container(),
              Container(),
              Container(),
            ],
          ),
          bottomNavigationBar: TabBar(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            automaticIndicatorColorAdjustment: true,
            dividerColor: Colors.transparent,
            indicatorColor: Colors.transparent,
            controller: _tabController,
            labelColor: Colors.black45,
            tabs: [
              SvgPicture.asset('assets/swap.svg'),
              SvgPicture.asset('assets/bonfire.svg'),
              Image.asset('assets/chat.png'),
              SvgPicture.asset('assets/User.svg')
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
