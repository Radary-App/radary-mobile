import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/theming/app_colors.dart';
import 'package:radary/features/home/ui/views/home_view.dart';
import 'package:radary/generated/l10n.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ResponsiveNavigationBar(
        backgroundColor: bluetransparent,
        outerPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        borderRadius: 15,
        selectedIndex: _selectedIndex,
        onTabChange: _onTabChange,
        // showActiveButtonText: false,
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        navigationBarButtons: <NavigationBarButton>[
          NavigationBarButton(
              padding: const EdgeInsets.all(10),
              text: S.of(context).Home,
              icon: Icons.home,
              backgroundColor: blue),
          NavigationBarButton(
              padding: const EdgeInsets.all(10),
              text: S.of(context).MyReports,
              icon: Icons.track_changes,
              backgroundColor: blue),
          NavigationBarButton(
              padding: const EdgeInsets.all(10),
              text: S.of(context).MyProfile,
              icon: Icons.person_2_outlined,
              backgroundColor: blue),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: const <Widget>[
          HomeView(),
          Center(child: Text('Tab 2')),
          Center(child: Text('Tab 3')),
        ],
      ),
    );
  }
}
