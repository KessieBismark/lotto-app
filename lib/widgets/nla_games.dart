// import 'package:flutter/material.dart';
// import 'package:dropdown_search/dropdown_search.dart';

// class NlaGames extends StatefulWidget {
//   NlaGames({Key? key}) : super(key: key);

//   @override
//   State<NlaGames> createState() => _NlaGamesState();
// }

// class _NlaGamesState extends State<NlaGames> {
//   var selectedItem;
//   String? value;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     var dropdownSearch = DropdownSearch(
//       dropdownSearchTextAlign: TextAlign.center,
//       favoriteItemsAlignment: MainAxisAlignment.center,
//       searchFieldProps: const TextFieldProps(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//       mode: Mode.BOTTOM_SHEET,
//       dropdownSearchDecoration: const InputDecoration(
//         contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         hintText: 'Select  NLA Game',
//         hintStyle: TextStyle(
//           color: Colors.white,
//           fontFamily: 'Lato',
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       items: const [
//         'Sunday Special',
//         'Monday Special',
//         'Lucky Tuesday',
//         'Mid Week',
//         'Fortune Thursday',
//         'Friday Bonanza',
//         'National Weekly Lotto',
//       ],
//       popupTitle: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.all(5),
//             child: Text(
//               'Select Games',
//               style: TextStyle(
//                   color: Colors.black87,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Text(
//             'Select Games to Play',
//             style: TextStyle(
//                 color: Colors.grey[500],
//                 fontFamily: 'Roboto',
//                 fontWeight: FontWeight.bold,
//                 fontSize: 12),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//       onChanged: (value) => setState(() => this.value = value as String?),
//       selectedItem: selectedItem,
//     );
//     return Center(
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color.fromRGBO(250, 105, 0, 10),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         margin: EdgeInsets.all(10),
//         child: dropdownSearch,
//       ),
//     );
//   }
// }
