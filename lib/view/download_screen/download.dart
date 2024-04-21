import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({Key? key});

  static const IconData delete = IconData(0xe1b9, fontFamily: 'MaterialIcons');

  // Parse JSON data
  final Map<String, dynamic> mediaJSON = {
    "categories": [
      {
        "name": "Movies",
        "videos": [
          {
            "description": "The first Blender Open Movie from 2006",
            "sources": [
              "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
            ],
            "subtitle": "By Blender Foundation",
            "thumb": "images/ElephantsDream.jpg",
            "title": "Elephant Dream"
          },
          {
            "description": "HBO GO now works with Chromecast .",
            "sources": [
              "https://drive.google.com/file/d/1VzU10KfJfIH9rtSfVfTDPsZGgz_aHVA_/view?usp=drive_link"
            ],
            "subtitle": "By Google",
            "thumb": "images/ForBiggerBlazes.jpg",
            "title": "For Bigger Blazes"
          },
          {
            "description": "The Smoking Tire is going on the 2010 ",
            "sources": [
              "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
            ],
            "subtitle": "By Garage419",
            "thumb": "images/WeAreGoingOnBullrun.jpg",
            "title": "We Are Going On Bullrun"
          },
          {
            "description": "The Smoking Tire meets up with Chris and Jorge. ",
            "sources": [
              "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
            ],
            "subtitle": "By Garage419",
            "thumb": "images/WhatCarCanYouGetForAGrand.jpg",
            "title": "What care can you get for a grand?"
          }
        ]
      }
    ]
  };

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final List<dynamic> videos = mediaJSON['categories'][0]['videos'];

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
          'Download',
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w700,
            fontSize: 19,
            letterSpacing: 2,
          ),
        ),
      ),
      backgroundColor: theme.colorScheme.background,
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          final String title = video['title'];
          final String description = video['description'];

          final List<dynamic> sources = video['sources'];

          return Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9, // Set aspect ratio as needed
                  child: BetterPlayer.network(
                    sources[0],
                    betterPlayerConfiguration: BetterPlayerConfiguration(
                      placeholder: Image.asset('assets/images/demo_user.jpeg'),
                      placeholderOnTop: true,
                      autoPlay: false,
                      aspectRatio: 16 / 9, // Same as the outer aspect ratio
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                Text(description),
              ],
            ),
          );
        },
      ),
    );
  }
}
