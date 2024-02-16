// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   backgroundColor: Colors.transparent,
//     //   appBar: AppBar(
//     //     automaticallyImplyLeading: false,
//     //     title: Text(
//     //       "إسلامي",
//     //       style: GoogleFonts.elMessiri(
//     //         fontSize: 30,
//     //         fontWeight: FontWeight.bold,
//     //       ),
//     //     ),
//     //     backgroundColor: Colors.white,
//     //     elevation: 0,
//     //     centerTitle: true,
//     //   ),
//     //   bottomNavigationBar: BottomNavigationBar(
//     //     currentIndex: index,
//     //     onTap: (value) {
//     //       index = value;
//     //       setState(() {});
//     //     },
//     //     backgroundColor: Color(0xffB7935F),
//     //     type: BottomNavigationBarType.fixed,
//     //     showUnselectedLabels: false,
//     //     iconSize: 25,
//     //     showSelectedLabels: false,
//     //     selectedItemColor: Colors.white,
//     //     unselectedItemColor: Colors.black,
//     //     items: [
//     //       BottomNavigationBarItem(
//     //         icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
//     //         label: "",
//     //       ),
//     //       BottomNavigationBarItem(
//     //         icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
//     //         label: "",
//     //       ),
//     //       BottomNavigationBarItem(
//     //         icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
//     //         label: "",
//     //       ),
//     //       BottomNavigationBarItem(
//     //         icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
//     //         label: "",
//     //       ),
//     //       BottomNavigationBarItem(
//     //         icon: Icon(Icons.settings),
//     //         label: "",
//     //       ),
//     //     ],
//     //   ),
//     //   body: Container(
//     //     decoration: BoxDecoration(color: Colors.white),
//     //   ),
//     //
//     // );
// // ***********************************************************************************************
//     return Scaffold(
//       body: Stack(
//         children: [
//           Center(
//             child: Container(
//               width: 262,
//               height: 262,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/images/splash_logo.png"),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             alignment: Alignment.bottomCenter,
//             child: Image(
//               image: AssetImage("assets/images/route_gold.png"),
//               width: 139,
//               height: 139,
//             ),
//           ),
//           Container(
//             alignment: Alignment.bottomCenter,
//             padding: EdgeInsets.symmetric(vertical: 15),
//             child: Text(
//               "Supervised by Mohamed Hamoda",
//               style: TextStyle(
//                 color: Color(0XFFB7935F),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//   // ***********************************************************************************************
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//       Duration(seconds: 5),
//           () {
//         Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => HomeScreen()),
//         );
//       },
//     );
//   }
// // ***********************************************************************************************
//
//
//
// }



// ****************************************************************************************

