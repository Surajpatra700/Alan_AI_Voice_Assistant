import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String sdkKey =
      "5436d6e06d6c4efd67c00e2576fe2bc42e956eca572e1d8b807a3e2338fdd0dc/stage";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAlan();
  }

  initAlan() {
    /// Init Alan Button with project key from Alan AI Studio
    AlanVoice.addButton(sdkKey, buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT);

    /// Handle commands from Alan AI Studio
    AlanVoice.callbacks.add((command) {
      _handleCommand(command.data);
      //debugPrint("got new command ${command.toString()}");
    });
  }

  _handleCommand(Map<String, dynamic> command) {
    switch (command["command"]) {
      case "increment":
        increment();
        break;
      default:
        debugPrint("Unknown Command");
    }
  }

  int counter = 0;

  increment() {
    setState(() {
      counter+=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alan AI"),
      ),
      body: Center(
        child: Text("${counter}",textScaleFactor: 25,),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     changeLogo();
      //     setState(() {
      //       logo = changeLogo();
      //     });
      //   },
      //   child: Icon(Icons.change_circle),
      // ),
    );
  }
}
