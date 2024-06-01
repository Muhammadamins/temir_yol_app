// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gap/gap.dart';
// import 'package:railway_plan/assets/constants/icons.dart';
// import 'package:railway_plan/features/screens/home/home.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {


//   bool isLoginDataValid = false;

//   final userNameController = TextEditingController();
//   final passwordController = TextEditingController();


//   bool isObscure = true;
//   final userformKey = GlobalKey<FormState>();
//   final passformKey = GlobalKey<FormState>();

//   final mailFocusNode = FocusNode();
//   final passwordFocusNode = FocusNode();



//   final textFieldContentStyle = const TextStyle(
//     color: Colors.blue,
//     fontSize: 14,
//     fontWeight: FontWeight.w400,
//   );

//   InputDecoration decoration({
//     required String hintText,
//     Widget? suffixIcon,
//   }) =>
//       InputDecoration(
//         hintText: hintText,
//         suffixIcon: suffixIcon,
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 12, vertical: 13.5),
//         hintStyle: TextStyle(
//           color: Colors.red.withOpacity(.6),
//           fontSize: 14,
//           fontWeight: FontWeight.w400,
//         ),
//         filled: true,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(
//             width: 1,
//             style: BorderStyle.solid,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(
//             width: 1,
//             style: BorderStyle.solid,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(
//             width: 1,
//             style: BorderStyle.solid,
//           ),
//         ),
//       );

//   @override
//   void initState() {
//     userNameController.addListener(() {
//       if (userformKey.currentState!.validate()) {
//         if (!isLoginDataValid) {
//           setState(() {
//             isLoginDataValid = true;
//           });
//         }
//       } else {
//         if (isLoginDataValid) {
//           setState(() {
//             isLoginDataValid = false;
//           });
//         }
//       }
//     });

//     passwordController.addListener(() {
//       if (passformKey.currentState!.validate()) {
//         if (!isLoginDataValid) {
//           setState(() {
//             isLoginDataValid = true;
//           });
//         }
//       } else {
//         if (isLoginDataValid) {
//           setState(() {
//             isLoginDataValid = false;
//           });
//         }
//       }
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           GestureDetector(
//             onTap: () {
//               if (FocusScope.of(context).hasFocus) {
//                 FocusScope.of(context).unfocus();
//               }
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   const Gap(30),
//                   const Text(
//                     'Kirish',
//                     style: TextStyle(
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                   const Gap(20),
//                   const Text(
//                     'Telefon raqamingiz hamda parolingizni kiriting.',
//                     style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.black),
//                   ),
//                   const Gap(30),
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Telefon raqam*',
//                         style: TextStyle(
//                             fontSize: 28,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black),
//                       ),
//                     ],
//                   ),
//                   const Gap(10),
//                   Form(
//                     key: userformKey,
//                     child: TextFormField(
//                       controller: userNameController,
//                       decoration: const InputDecoration(
//                         labelText: '993332200',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                         ),
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Iltimos, raqam kiriting!';
//                         } else if (value.length <= 10) {
//                           return 'Telefon raqami eng kamida 12 ta raqamdan tashkil topgan bo\'lishi kerak';
//                         }
//                         return null;
//                       },
//                     ),
//                   ),
//                   const Row(
//                     children: [
//                       Expanded(
//                         child: Text(
//                           """Raqam 998 dan boshlanishi va davomida 9 ta raqamdan iborat bo'lishi kerak!""",
//                           style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w400,
//                               overflow: TextOverflow.clip),
//                         ),
//                       )
//                     ],
//                   ),
//                   const Gap(10),
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Parol*',
//                         style: TextStyle(
//                             fontSize: 28,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black),
//                       ),
//                     ],
//                   ),
//                   Form(
//                     key: passformKey,
//                     child: TextFormField(
//                       cursorColor: Colors.black,
//                       focusNode: mailFocusNode,
//                       textInputAction: TextInputAction.done,
//                       keyboardType: TextInputType.visiblePassword,
//                       obscureText: isObscure,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Iltimos, parolingizni kiriting!';
//                         } else if (value.length < 5) {
//                           return 'Parol eng kamida 6 ta belgidan tashkil topgan bo\'lishi kerak';
//                         }

//                         return null;
//                       },
//                       controller: passwordController,
//                       decoration: decoration(
//                         hintText: '*******',
//                         suffixIcon: GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               isObscure = !isObscure;
//                             });
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 12, vertical: 13.5),
//                             child: Container(
//                               height: 40,
//                               width: 40,
//                               color: Colors.black,
//                               child: SvgPicture.asset(
//                                 fit: BoxFit.contain,
//                                 isObscure ? AppIcons.eyeOff : AppIcons.eyeOn,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Row(
//                     children: [
//                       Expanded(
//                         child: Text(
//                             """parol 4 dan ko'p raqam va harflardan iborat bo'lishi kerak"""),
//                       )
//                     ],
//                   ),
//                   const Gap(12),
//                   GestureDetector(
//                     onTap: () {
//                       if (passformKey.currentState!.validate() &&
//                           userformKey.currentState!.validate()) {
//                         // Navigator.push(

//                         //   context,
//                         //   MaterialPageRoute(
//                         //       builder: (context) =>  HomePage(),),
//                         // );

//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(builder: (context) => HomePage()),
//                         );
//                       }
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.all(10),
//                       height: 50,
//                       width: MediaQuery.of(context).size.width,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.black),
//                       child: const Center(
//                           child: Text(
//                         'KIRISH',
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.white),
//                       )),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     userNameController.dispose();
//     passwordController.dispose();
//     mailFocusNode.dispose();
//     passwordFocusNode.dispose();
//     super.dispose();
//   }
// }











// ikkinchi login screen
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:railway_plan/assets/constants/icons.dart';
// import 'package:railway_plan/features/screens/home/home.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {


//   final userNameController = TextEditingController();
//   final passwordController = TextEditingController();


// bool isLoginDataValid = false;
//   bool isObscure = true;
//   final userformKey = GlobalKey<FormState>();
//   final passformKey = GlobalKey<FormState>();

//   final mailFocusNode = FocusNode();
//   final passwordFocusNode = FocusNode();

// InputDecoration decoration({
//     required String hintText,
//     Widget? suffixIcon,
//   }) =>
//       InputDecoration(
//         hintText: hintText,
//         suffixIcon: suffixIcon,
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 12, vertical: 13.5),
//         hintStyle: TextStyle(
//           color: Colors.red.withOpacity(.6),
//           fontSize: 14,
//           fontWeight: FontWeight.w400,
//         ),
//         filled: true,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(
//             width: 1,
//             style: BorderStyle.solid,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(
//             width: 1,
//             style: BorderStyle.solid,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(
//             width: 1,
//             style: BorderStyle.solid,
//           ),
//         ),
//       );

// @override
// void initState() {

//  userNameController.addListener(() {
//       if (userformKey.currentState!.validate()) {
//         if (!isLoginDataValid) {
//           setState(() {
//             isLoginDataValid = true;
//           });
//         }
//       } else {
//         if (isLoginDataValid) {
//           setState(() {
//             isLoginDataValid = false;
//           });
//         }
//       }
//     });

//     passwordController.addListener(() {
//       if (passformKey.currentState!.validate()) {
//         if (!isLoginDataValid) {
//           setState(() {
//             isLoginDataValid = true;
//           });
//         }
//       } else {
//         if (isLoginDataValid) {
//           setState(() {
//             isLoginDataValid = false;
//           });
//         }
//       }
//     });

//   super.initState();
  
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 48,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Text(
//                 "Telefon raqamingizni kiriting ",
//                 style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: "Rubik",
//                     color: Color(0xFF383838)),
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               SizedBox(
//                 height: 45,
//                 child: Form(
//                     key: userformKey,

//                   child: TextFormField(
//                       controller: userNameController,

//                     style: const TextStyle(color: Colors.black),
//                     keyboardType: TextInputType.phone,


//  validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Iltimos, raqam kiriting!';
//                         } else if (value.length <= 10) {
//                           return 'Telefon raqami eng kamida 12 ta raqamdan tashkil topgan bo\'lishi kerak';
//                         }
//                         return null;
//                       },

//                     decoration: InputDecoration(
//                       fillColor: const Color(0xFFF2F3F5),
//                       filled: true,
//                         // labelText: '99 339 33 00',

//                       hintText: "+998 99 339 33 00",
//                       // isDense: true,


 

//                       border: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                           width: 1,
//                           style: BorderStyle.solid,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       enabledBorder: OutlineInputBorder(
                        
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       disabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       errorBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               const Text(
//                 "Parol  ",
//                 style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: "Rubik",
//                     color: Color(0xFF383838)),
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               SizedBox(
//                 height: 45,
//                 child: Form(
//                     key: passformKey,




//                   child: TextFormField(
//                       cursorColor: Colors.black,
//                       focusNode: mailFocusNode,
//                       textInputAction: TextInputAction.done,
//                     keyboardType: TextInputType.visiblePassword,

//                     obscureText: isObscure,

//                              validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Iltimos, parolingizni kiriting!';
//                         } else if (value.length < 5) {
//                           return 'Parol eng kamida 6 ta belgidan tashkil topgan bo\'lishi kerak';
//                         }

//                         return null;
//                       },
//                       controller: passwordController,

//                     style: const TextStyle(color: Colors.black),


//                     decoration: InputDecoration(
//                       fillColor: const Color(0xFFF2F3F5),
//                       // filled: true,
//                       prefixText: "Parolni kiriting",
//                       prefixStyle: const TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                           fontFamily: "Rubik",
//                           color: Color(0xFFD5D5D5)),
//                       // suffixText: "Unutdingizmi?",
//                       // isDense: true,
//                       border: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       disabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       errorBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Color(0xFFF2F3F5),
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
                  
                  
//                 //  decoration:  decoration(
//                 //         hintText: '*******',
//                 //         suffixIcon: GestureDetector(
//                 //           onTap: () {
//                 //             setState(() {
//                 //               isObscure = !isObscure;
//                 //             });
//                 //           },
//                 //           child: Padding(
//                 //             padding: const EdgeInsets.symmetric(
//                 //                 horizontal: 12, vertical: 13.5),
//                 //             child: Container(
//                 //               height: 40,
//                 //               width: 40,
//                 //               color: Colors.black,
//                 //               child: SvgPicture.asset(
//                 //                 fit: BoxFit.contain,
//                 //                 isObscure ? AppIcons.eyeOff : AppIcons.eyeOn,
//                 //               ),
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
                  
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 48,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: ElevatedButton(
//                   onPressed: () {


//         if (passformKey.currentState!.validate() &&
//                           userformKey.currentState!.validate()) {
//                         // Navigator.push(

//                         //   context,
//                         //   MaterialPageRoute(
//                         //       builder: (context) =>  HomePage(),),
//                         // );

//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(builder: (context) => HomePage()),
//                         );
//                       }

                    
//                   },
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateColor.resolveWith(
//                       (states) => Colors.blue,
//                     ),
//                     elevation: MaterialStateProperty.resolveWith((states) => 0),
//                   ),
//                   child: const Text(
//                     "Kirish",
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontFamily: "Rubik",
//                         fontWeight: FontWeight.w500,
//                         // color: Color(0xFF383838),
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 14,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }



//    @override
//   void dispose() {
//     userNameController.dispose();
//     passwordController.dispose();
//     mailFocusNode.dispose();
//     passwordFocusNode.dispose();
//     super.dispose();
//   }
// }





