import 'package:flutter/material.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          "https://png.pngtree.com/thumb_back/fh260/background/20240421/pngtree-blue-water-splash-wave-screen-background-image_15717616.jpg"
        ),
      ),
    );
  }
}
