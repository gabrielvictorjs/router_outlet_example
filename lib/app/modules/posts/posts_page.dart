import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PostsPage extends StatefulWidget {
  final String title;
  const PostsPage({Key key, this.title = "Posts"}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Modular.to.pushNamed('/details');
          },
          child: Text("Go to Details"),
        ),
      ),
    );
  }
}
