// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';

// import '../../services/widgets/waiting.dart';

// class DropSelect extends StatelessWidget {
//   final String hint;
//   final String label;
//   final Color? color;
//   final bool isLoading;
//   final TextEditingController controller;
//   final String? Function(String?)? validate;
//   final List<String> list;
//   final Function(String?)? onChange;
//   const DropSelect(
//       {super.key,
//       required this.hint,
//       required this.label,
//       this.color,
//       required this.isLoading,
//       required this.controller,
//       this.validate,
//       required this.list,
//       this.onChange});

//   @override
//   Widget build(BuildContext context) {
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
//             margin: const EdgeInsets.all(5),
//             child: const Text(
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
//       onChanged: onChange,
//       selectedItem: selectedItem,
//     );
//     return isLoading ? const MWaiting() : const Placeholder();
//   }
// }
