// import 'package:flutter/material.dart';
// import 'package:travell/widgets/app_text.dart';

// class CustomTabBar extends StatelessWidget {
//   const CustomTabBar({
//     super.key,
//     required this.selectedIndex,
//     required this.children,
//     required this.onTap,
//   });
//   final List<String> children;
//   final int selectedIndex;
//   final Function(int) onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: List.generate(
//         children.length,
//         (index) => GestureDetector(
//           onTap: () {
//             if (selectedIndex != index) {
//               onTap(index);
//             }
//           },
//           child: CustomAppBarChild(
//             index: index,
//             selectedIndex: selectedIndex,
//             txt: children[index],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomAppBarChild extends StatelessWidget {
//   const CustomAppBarChild({
//     super.key,
//     required this.index,
//     required this.selectedIndex,
//     required this.txt,
//   });
//   final String txt;
//   final int index;
//   final int selectedIndex;
//   @override
//   Widget build(BuildContext context) {
//     bool selected = index == selectedIndex;
//     return Column(
//       children: [
//         AppText(
//           text: txt,
//           color: selected ? Colors.black : Colors.black38,
//         ),
//         const SizedBox(height: 4),
//         if (selected)
//           const CircleAvatar(
//             radius: 6,
//           ),
        
//       ],
//     );
//   }
// }
