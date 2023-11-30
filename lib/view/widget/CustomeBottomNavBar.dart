import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:new_batic/view/screen/FavoriteScreen.dart';
import 'package:new_batic/view/screen/Search_Page.dart';
import 'package:new_batic/view/screen/MyHome.dart';
import 'package:new_batic/view/screen/profile.dart';
import 'package:new_batic/view/screen/search_bar_screen.dart';

class NavigationDestination {
  final Icon icon;
  final String label;
  final Color selectedColor;

  NavigationDestination({
    required this.icon,
    required this.label,
    required this.selectedColor,
  });
}

class NavigationBar extends StatelessWidget {
  final Color backgroundColor;
  final double height;
  final double elevation;
  final int selectedIndex;
  final Function(int) onDestinationSelected;
  final List<NavigationDestination> destinations;
  final TextStyle labelStyle; 

  NavigationBar({
    required this.backgroundColor,
    required this.height,
    required this.elevation,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
    required this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: backgroundColor,
      type: BottomNavigationBarType.fixed,
      elevation: elevation,
      selectedItemColor: destinations[selectedIndex].selectedColor,
      currentIndex: selectedIndex,
      items: destinations.map((destination) {
        return BottomNavigationBarItem(
          icon: destination.icon,
          label: destination.label,
        );
      }).toList(),
      selectedLabelStyle: labelStyle, // Add this line
      onTap: onDestinationSelected,
    );
  }
}

class CustomeBottomNavBar extends StatelessWidget {
  const CustomeBottomNavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: Color(0xffF0F2F6),
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Saved',
              selectedColor: Color(0xff6482C4),
            ),
            NavigationDestination(
              icon: Icon(Icons.label_important_sharp),
              label: 'My Home',
              selectedColor: Color(0xff6482C4),
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
              selectedColor: Color(0xff6482C4),
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Account',
              selectedColor: Color(0xff6482C4),
            ),
          ],
          labelStyle: TextStyle(
            fontFamily: 'Kadwa', 
            fontWeight: FontWeight.bold, 
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const FavoriteScreen(),
    const MyHome(),
     const Search_Page(),
      SearchBarScreen(),
  ];
}
