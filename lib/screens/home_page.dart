import 'package:flutter/material.dart';
import 'package:hangman/constant/constants.dart';
import 'package:hangman/services/assets_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2e142c),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                AssetsManager.bg,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Text(
                    'HANGMAN',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color(0xfff9c9b0),
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PatrickHand',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  SizedBox(
                    width: appSize(context).width / 1.5,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xfff27d4c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Başla',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'PatrickHand',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: appSize(context).width / 1.5,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xfff27d4c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Çıkış',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'PatrickHand',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Image.asset(
                            AssetsManager.logo,
                            width: appSize(context).width / 4,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
