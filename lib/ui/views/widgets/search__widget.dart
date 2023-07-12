import 'package:flutter/material.dart';

Widget searchBox() { //still unused as of 07/12 4:46 pm supposedly for the search bar in courses_view and search_view
  return Column(
    children: [
      Row( //with lapses on icon
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(12),
                // ),
                hintText: 'Search Course',
              ),
            ),
          ),
          Expanded(
            child: Image.asset('assets/Search.png'))
        ],
      ),
    ],
  );
}
