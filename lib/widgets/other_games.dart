// import 'package:flutter/material.dart';
// import 'package:dropdown_search/dropdown_search.dart';

// class OtherGames extends StatefulWidget {
//   OtherGames({Key? key}) : super(key: key);

//   @override
//   State<OtherGames> createState() => _OtherGamesState();
// }

// class _OtherGamesState extends State<OtherGames> {
//   var selectedItem;
//   String? value;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     var dropdownSearch = DropdownSearch(
//       dropdownSearchTextAlign: TextAlign.center,
//       searchFieldProps: const TextFieldProps(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//       mode: Mode.BOTTOM_SHEET,
//       dropdownSearchDecoration: const InputDecoration(
//         contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         hintText: 'Select Other Games',
//         hintStyle: TextStyle(
//           color: Colors.white,
//           fontFamily: 'Lato',
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       items: const [
//         'NLA Monday',
//         'Cash Monday ',
//         'NLA VAG Tuesday',
//         'Cash Tuesday',
//         'NLA VAG Wednesday',
//         'Cash Wednesday',
//         'NLA VAG Thursday',
//         'Cash Thursday',
//         'NLA VAG Friday',
//         'Cash Friday',
//         'NLA VAG Saturday',
//         'Cash Saturday',
//       ],
//       popupTitle: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             margin: EdgeInsets.all(5),
//             child: Text(
//               'Select Other Games',
//               style: TextStyle(
//                   color: Colors.black87,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Text(
//             'Select Other Games to Play',
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
