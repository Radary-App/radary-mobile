// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class InternationalPhoneNumber extends StatelessWidget {
//   const InternationalPhoneNumber({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//     // PhoneNumber initialPhoneNumber = PhoneNumber(isoCode: 'EG');

//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.black),
//       ),
//       child: Stack(
//         children: [
//           InternationalPhoneNumberInput(
//             onInputChanged: (PhoneNumber value) {
              
//             },
//             selectorTextStyle: AppTextStyles.font16BlackRegular,
//             formatInput: false,
//             selectorConfig: const SelectorConfig(
//               selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
//             ),
//             cursorColor: gray100,
//             inputDecoration: const InputDecoration(
//               contentPadding: EdgeInsets.only(bottom: 15, left: 0),
//               border: InputBorder.none,
//             ),
//             initialValue: initialPhoneNumber, 
//             countries: const ['EG', 'US', 'GB', 'TN', 'DZ', 'FR', 'IT'],
//           ),
//           Positioned(
//             left: 80.w, 
//             top: 8.h,
//             child: Container(
//               height: 40.h,
//               width: 1.w,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
