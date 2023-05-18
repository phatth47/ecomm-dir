import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return (Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(51.0, 70.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Find your Gadget',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.center,
                    end: FractionalOffset.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(rect);
                },
                blendMode: BlendMode.dstIn,
                child: const Image(
                  image: AssetImage('assets/images/splash.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xff5956E9),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 16,
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "auth");
              },
              child: const Text('Get Started'),
            )
          ],
        ),
      ),
    ));
  }
}
