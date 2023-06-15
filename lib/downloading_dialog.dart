import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DownloadDialog extends StatefulWidget {
  const DownloadDialog({super.key});

  @override
  State<DownloadDialog> createState() => _DownloadDialogState();
}

class _DownloadDialogState extends State<DownloadDialog> {
  Dio dio = Dio();
  double progress = 0.0;

  void startDownloading() async {
    const String url = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
