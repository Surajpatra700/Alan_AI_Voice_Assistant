import 'package:flutter/material.dart';

class DocDownload extends StatefulWidget {
  const DocDownload({super.key});

  @override
  State<DocDownload> createState() => _DocDownloadState();
}

class _DocDownloadState extends State<DocDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Download File"),
      ),
      body: Center(
        child: Text("Download File"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //showDialog(
              //context: context, builder: (context) => DownloadingDialog());
        },
        child: Icon(Icons.download),
      ),
    );
  }
}
