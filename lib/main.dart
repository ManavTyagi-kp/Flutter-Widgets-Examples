// Flutter Buttons,
// Stack,
// Forms,
// AlertDialog,
// Icons,
// Images,
// Card,
// tabbar,
// Drawer

import 'package:dart_widgets/buttons.dart';
import 'package:dart_widgets/forms.dart';
import 'package:dart_widgets/heroNavigate.dart';
import 'package:dart_widgets/navigate2.dart';
import 'package:dart_widgets/progressbar.dart';
import 'package:dart_widgets/returndataNav.dart';
import 'package:dart_widgets/sendDataNav.dart';
import 'package:dart_widgets/slider.dart';
import 'package:dart_widgets/stack.dart';
import 'package:dart_widgets/switch.dart';
import 'package:dart_widgets/toast.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyAppBar(),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('Fltter Widgets'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      // body: const TodoScreen(), // Send data to a new screen
      // body: const HeroClass(), // Animate a widget across screens
      // body: const FirstRoute(), // Navigate to a new screen and back
      // body: const SelectionButton(), // Return data from a screen

      // body: const MyToast(), // toasts in flutter

      // body: const MyProgressBar(), // Progress bar
      // body: const MySlider(), //slider
      body: const MySwitch(), // Switch
    );
  }
}

class ImportAppbar extends StatelessWidget {
  final String title;
  const ImportAppbar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      title: Text(title),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
  }
}
