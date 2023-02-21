import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:music_app_ui/page_one.dart';
import 'package:music_app_ui/page_two.dart';

void main() {
  runApp(const MaterialApp(
    home: MusicAppUi(),
  ));
}

class MusicAppUi extends StatefulWidget {
  const MusicAppUi({super.key});

  @override
  State<MusicAppUi> createState() => _MusicAppUiState();
}

class _MusicAppUiState extends State<MusicAppUi> {
  final pages = [Home(), null, Playlist(), null];
  int _currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
          selectedIndex: _currentSelectedIndex,
          onTabChange: (newIndex) {
            setState(() {
              _currentSelectedIndex = newIndex;
            });
          },
          activeColor: const Color(0xffF8AFA6),
          gap: 8,
          backgroundColor: const Color(0xff454545),
          color: Colors.white,
          tabs: const [
            GButton(text: "Home", icon: Icons.home_outlined),
            GButton(text: "Search", icon: Icons.search_outlined),
            GButton(text: "Playlist", icon: Icons.featured_play_list),
            GButton(text: "More", icon: Icons.more_horiz),
          ]),
      body: pages[_currentSelectedIndex],
    );
  }
}
