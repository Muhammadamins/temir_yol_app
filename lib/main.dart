// import 'package:flutter/material.dart';
// import 'package:temir_yol_app/web_view_flutter.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({
//     super.key,
//   });

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: WebViewApp(),
//     );
//   }
// }








// ignore_for_file: deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://itcityacademy.uz/about');

void main() => runApp(
       MaterialApp(
        home:MyWidget(),
        
        
        //  Material(
        //   child: Center(
        //     child: ElevatedButton(
        //       onPressed: _launchUrl,
        //       child: Text('Show Flutter homepage'),
        //     ),
        //   ),
        // ),
      ),
    );

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}





class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    
    
    Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      child: Text.rich(
        TextSpan(
          text: '© 2024 ', // Static text part 1
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
          children: [
            TextSpan(
              text: 'IT City Academy', // Blue text part
              style: const TextStyle(
                fontSize: 12,
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  const url = 'https://itcityacademy.uz/about'; // Replace with your URL
                  // ignore: deprecated_member_use
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
            ),
            TextSpan(
              text: ' barcha huquqlar himoyalangan.', // Static text part 2
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
   
   
   
    );


    
  }
}
