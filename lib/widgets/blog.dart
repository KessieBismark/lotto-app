// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
          leading: Icon(Icons.newspaper),
          title: Text(
            'Blog Posts',
            style: TextStyle(fontFamily: 'Robot5', fontSize: 15),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
          ),
          onTap: () {}
          //  {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) {
          //     return ;
          //     PageBlogPost();
          //   }));
          // },
          ),
    );
  }
}
