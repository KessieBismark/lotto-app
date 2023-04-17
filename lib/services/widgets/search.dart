import 'package:flutter/material.dart';

class SearchIconBar extends StatelessWidget {
  final Function(String?)? seachOnTap;
  // final Widget widget;
  const SearchIconBar({Key? key, this.seachOnTap, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
             // flex: 9,
              child: Container(
                padding: const EdgeInsets.all(7),
                height: 55,
                child: TextField(
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      hintText: "Search by date (2022-12-03)",
                      contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    onChanged: seachOnTap),
              )),
         
        ],
      ),
    );
  }
}
