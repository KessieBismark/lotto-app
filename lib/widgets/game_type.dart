// import 'package:flutter/material.dart';
// import 'package:dropdown_search/dropdown_search.dart';

// class GameType extends StatefulWidget {
//   GameType({Key? key}) : super(key: key);

//   @override
//   State<GameType> createState() => _GameTypeState();
// }

// class _GameTypeState extends State<GameType> {
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
//         hintText: 'Select Game Type',
//         hintStyle: TextStyle(
//           color: Colors.white,
//           fontFamily: 'Lato',
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       items: const [
//         'Direct 2',
//         'Direct 3',
//         'Direct 4',
//         'Perm 2',
//         'Perm 3',
//         'Perm 4',
//         'Perm 5',
//         'Banker Against All (1 - 90)',
//         'Banker Against',
//       ],
//       popupTitle: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             margin: EdgeInsets.all(5),
//             child: Text(
//               'Select Game Type',
//               style: TextStyle(
//                   color: Colors.black87,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Text(
//             'Select Game Type to Play',
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
