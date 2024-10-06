import 'package:flutter/material.dart';
import 'space_page_export.dart';

class SpaceSplashPage extends StatefulWidget {
  const SpaceSplashPage({super.key});

  @override
  State<SpaceSplashPage> createState() => _SpaceSplashPageState();
}

class _SpaceSplashPageState extends State<SpaceSplashPage> {
  final PageController _pageController = PageController();
  double _progress = 0.33;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: SizedBox(
                  height: 400,
                  width: 400,
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    controller: _pageController,
                    children: [
                      planetImage("assets/planets/image1.png"),
                      planetImage("assets/planets/image2.png"),
                      planetImage("assets/planets/image3.png"),
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              "Explore the\n universe!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Learn more about the \nuniverse where we all live.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white54,
              ),
            ),
            const SizedBox(height: 15),
            // button and its fnction
            SizedBox(
              height: 130,
              width: 130,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    height: 115,
                    width: 115,
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: CircularProgressIndicator(
                        strokeWidth: 4,
                        color: const Color.fromARGB(255, 103, 117, 247),
                        value: _progress == 0.99 ? 1 : _progress,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _progress += 0.33;
                      });
                      if (_pageController.hasClients) {
                        _pageController.animateToPage(
                          _pageController.page!.toInt() + 1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeOut,
                        );
                      }
                      if (_pageController.page!.toInt() == 2) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SpaceHomePage(),
                            ),
                            (route) => false);
                      }
                    },
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.play_arrow_rounded,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
