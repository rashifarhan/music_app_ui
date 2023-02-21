import 'package:flutter/material.dart';

import 'data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2E2E2E),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 170),
                child: Text(
                  "Musify",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffF8AFA6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Suggested playlists",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color(0xffF8AFA6),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: 230,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                fit: BoxFit.cover, image: images[index])),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                    itemCount: images.length),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Recommended for you",
                style: TextStyle(fontSize: 20, color: Color(0xffF8AFA6)),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: details[index]["image"]),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        title: Text(
                          details[index]["name"],
                          style: const TextStyle(color: Color(0xffF8AFA6)),
                        ),
                        subtitle: Text(
                          details[index]["subtittle"],
                          style: const TextStyle(color: Colors.white),
                        ),
                        trailing: Wrap(
                          children: const [
                            Icon(
                              Icons.star_border,
                              color: Color(0xffF8AFA6),
                            ),
                            Icon(
                              Icons.download_outlined,
                              color: Color(0xffF8AFA6),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 15,
                        ),
                    itemCount: 8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
