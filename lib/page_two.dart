import 'package:flutter/material.dart';
import 'package:music_app_ui/grid_widget.dart';

class Playlist extends StatelessWidget {
  const Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2E2E2E),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const Text(
              "Playlists",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xffF8AFA6),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.black26),
              height: 55,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Color(0xffF8AFA6)),
                      border: InputBorder.none,
                      hintText: "Search...",
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: Color(0xffF8AFA6),
                      )),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  height: 900,
                  width: double.infinity,
                  child: GridPage()),
            ),
          ],
        ),
      )),
    );
  }
}
