// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});
  static const IconData delete = IconData(0xe1b9, fontFamily: 'MaterialIcons');
  List<String> videoUrls = [
    'https://youtu.be/NKX7RGZXBWc',
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: theme.colorScheme.primary,
          ),
        ),
        title: Text(
          'Downloads',
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w700,
            fontSize: 19,
            letterSpacing: 2,
          ),
        ),
        actions: [
          InkWell(child: Icon(delete)),
          SizedBox(
            width: 20,
          )
        ],
      ),
      backgroundColor: theme.colorScheme.background,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage('assets/images/demo_user.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                'Mohan lal || Lucifer Movie',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          );
          //VideoWidget(videoUrl: videoUrls[index]);
        },
      ),
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';


// class DownloadScreen extends StatelessWidget {
//   DownloadScreen({super.key});
//   static const IconData delete = IconData(0xe1b9, fontFamily: 'MaterialIcons');
//   List<String> videoUrls = [
//     'https://youtu.be/NKX7RGZXBWc',
//     // Add more video URLs as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: theme.colorScheme.background,
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Icon(
//             CupertinoIcons.back,
//             color: theme.colorScheme.primary,
//           ),
//         ),
//         title: Text(
//           'Downloads',
//           style: TextStyle(
//             color: theme.colorScheme.primary,
//             fontWeight: FontWeight.w700,
//             fontSize: 19,
//             letterSpacing: 2,
//           ),
//         ),
//         actions: [
//           InkWell(child: Icon(delete)),
//           SizedBox(
//             width: 20,
//           )
//         ],
//       ),
//       backgroundColor: theme.colorScheme.background,
//       body: ListView.builder(
//         itemCount: videoUrls.length,
//         itemBuilder: (context, index) {
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 200, // Adjust the height as needed
//                   child: BetterPlayer.network(
//                     videoUrls[index],
//                     betterPlayerConfiguration: BetterPlayerConfiguration(
//                       autoPlay: false,
//                       aspectRatio: 16 / 9,
//                       fit: BoxFit.cover,
//                       placeholder: Center(child: CircularProgressIndicator()),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Text(
//                   'Video Title ${index + 1}', // Replace with actual video title
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//               ),
//               SizedBox(height: 8),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
