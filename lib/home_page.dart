import 'package:external_app_launcher/external_app_launcher.dart'
    show LaunchApp;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _launcher({
    String androidPackageName = 'com.ngtvexperience.app',
    String iosUrlScheme = 'NGTV://',
  }) async {
    /*
    final isAppInstalled = await LaunchApp.isAppInstalled(
      androidPackageName: androidPackageName,
      iosUrlScheme: iosUrlScheme,
    );

    print('isAppInstalled $isAppInstalled');
     */

    await LaunchApp.openApp(
      androidPackageName: androidPackageName,
      iosUrlScheme: iosUrlScheme,
      openStore: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launcher,
          child: const Text('Open NGTV app'),
        ),
      ),
    );
  }
}
