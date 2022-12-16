import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:notesapp/views/notes_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    goToNextView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/images/notes.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Notes App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const NotesView(), transition: Transition.fade);
    });
  }
}
