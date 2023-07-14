import 'package:flutter/material.dart';

Widget searchBox() {
  //still unused as of 07/12 4:46 pm supposedly for the search bar in courses_view and search_view
  return TextField(
    decoration: InputDecoration(
      hintText: 'Search',
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xFF78746D),
      ),
      suffixIcon: const Icon(
        Icons.search,
        color: Color(0xFF78746D),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xFFBEBAB3),
        ),
      ),
    ),
  );

  // Column(
  //   children: [
  //     Row(
  //       //with lapses on icon
  //       children: [
  //         const Expanded(
  //           child: TextField(
  //             decoration: InputDecoration(
  //               // border: OutlineInputBorder(
  //               //   borderRadius: BorderRadius.circular(12),
  //               // ),
  //               hintText: 'Search Course',
  //             ),
  //           ),
  //         ),
  //         Expanded(child: Image.asset('assets/Search.png'))
  //       ],
  //     ),
  //   ],
  // );
}
