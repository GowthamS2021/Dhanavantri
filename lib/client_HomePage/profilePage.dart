import 'package:dhanvantri/client_HomePage/nave_bar.dart';
import 'package:flutter/material.dart';

class clientprofile extends StatefulWidget {
  const clientprofile({super.key});

  @override
  State<clientprofile> createState() => _clientprofileState();
}

String email = 'example.com';
String username = 'person';
String phone = '100101010';
String medconditions = 'xxxx';

class _clientprofileState extends State<clientprofile> {
  @override
  Widget build(BuildContext context) {
    // return Container();
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Body(),
      // body: SingleChildScrollView(
      //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //         child: TextButton(
      //           style: TextButton.styleFrom(
      //             primary: Color(0),
      //             padding: EdgeInsets.all(20),
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(15)),
      //             backgroundColor: Color(0xFFF5F6F9),
      //           ),
      //           onPressed: (){},
      //           child: Row(
      //             children: [
      //               SvgPicture.asset(
      //                 i,
      //                 color: Color.fromARGB(255, 75, 91, 141),
      //                 width: 22,
      //               ),
      //               SizedBox(width: 20),
      //               Expanded(child: Text(" ueh"),
      //               Icon(Icons.arrow_forward_ios),
      //             ],
      //           ),
      //         ),
      // )
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.text1,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, text1;
  final Icon icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Color.fromARGB(255, 158, 163, 179),
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            icon,
            SizedBox(width: 5),
            Expanded(child: Text(text)),
            SizedBox(width: 10),
            Expanded(child: Text(text1)),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(
            'assets/images/default_profile.jpg',
            scale: 1,
          ),
          SizedBox(height: 20),
          ProfileMenu(
            text: "UserName: ",
            text1: username,
            icon: Icon(Icons.verified_user),
            press: () => {},
          ),
          ProfileMenu(
            text: "Email ID: ",
            text1: email,
            icon: Icon(Icons.email),
            press: () {},
          ),
          ProfileMenu(
            text: "Phone No: ",
            text1: phone,
            icon: Icon(Icons.phone_callback),
            press: () {},
          ),
          ProfileMenu(
            text: "Medical Condititions: ",
            text1: medconditions,
            icon: Icon(Icons.medical_information),
            press: () {},
          ),
          ProfileMenu(
            text: "Change Password",
            text1: "?",
            icon: Icon(Icons.password_rounded),
            press: () {},
          ),
        ],
      ),
    );
  }
}

// class ProfilePic extends StatelessWidget {
//   const ProfilePic({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 115,
//       width: 115,
//       child: Stack(
//         fit: StackFit.expand,
//         clipBehavior: Clip.none,
//         children: [
//           CircleAvatar(
//             child: Image.asset(
//               "assets/images/default_profile.jpg",
//               scale: 1.5,
//             ),
//           ),
//           // Positioned(
//           //   right: -16,
//           //   bottom: 0,
//           //   child: SizedBox(
//           //     height: 46,
//           //     width: 46,
//           //     // child: TextButton(
//           //     //   style: TextButton.styleFrom(
//           //     //     shape: RoundedRectangleBorder(
//           //     //       borderRadius: BorderRadius.circular(50),
//           //     //       side: BorderSide(color: Colors.white),
//           //     //     ),
//           //     //     primary: Colors.white,
//           //     //     backgroundColor: Color(0xFFF5F6F9),
//           //     //   ),
//           //     //   onPressed: () {},
//           //     // ),
//           //   ),
//           // )
//         ],
//       ),
//     );
//   }
// }
