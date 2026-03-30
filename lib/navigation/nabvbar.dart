import 'package:care_kapital_mobile_app/pages/homepage/homepage.dart';
import 'package:care_kapital_mobile_app/pages/profile/profile.dart';
import 'package:flutter/material.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  // Track which tab is selected
  int _selectedIndex = 0;

  // List of pages to display for each tab
  final List<Widget> _pages = [
    const Homepage(),
        const Center(child: Text('Investments Page')),
    const Center(child: Text('Payouts Page')),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: _pages[_selectedIndex],

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -2), 
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          
          type: BottomNavigationBarType.fixed, 
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF0D63D1), 
          unselectedItemColor: const Color(0xFF6C757D), 
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15,
          ),
          showUnselectedLabels: true,
          
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.home_outlined,size: 25,),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.home,size: 25,),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.trending_up_outlined,size: 25,),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.trending_up,size: 25,),
              ),
              label: 'Investments',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.credit_card_outlined,size: 25,),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.credit_card,size: 25,),
              ),
              label: 'Payouts',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.person_outline,size: 25,),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.person,size: 25,),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}