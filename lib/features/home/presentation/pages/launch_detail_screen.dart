import 'package:flutter/material.dart';

import 'launch_detail_arguments.dart';

class LaunchDetailScreen extends StatefulWidget {
  final LaunchDetailArguments launchDetailArguments;

  const LaunchDetailScreen({
    Key? key,
    required this.launchDetailArguments,
  }) : super(key: key);

  @override
  _LaunchDetailScreenState createState() => _LaunchDetailScreenState();
}

class _LaunchDetailScreenState extends State<LaunchDetailScreen> {
  String url = '';

  @override
  Widget build(BuildContext context) {
    if (widget.launchDetailArguments.articles.links.flickr_images!.isNotEmpty) {
      url = widget.launchDetailArguments.articles.links.flickr_images?.first;
    } else {
      url = "https://via.placeholder.com/300";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Launch Details Screen'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Hero(
            tag: url,
            child: Image.network(url),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              widget.launchDetailArguments.articles.mission_name,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              widget.launchDetailArguments.articles.launch_date_utc,
            ),
          ),
          Text(widget.launchDetailArguments.articles.rocket.rocket_name),
        ],
      ),
    );
  }
}
