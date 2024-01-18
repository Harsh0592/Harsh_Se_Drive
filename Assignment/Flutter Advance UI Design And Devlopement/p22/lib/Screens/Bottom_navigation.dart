import 'package:flutter/material.dart';

class Bottom_navigation extends StatefulWidget {
  const Bottom_navigation({super.key});

  @override
  State<Bottom_navigation> createState() => _Bottom_navigationState();
}

class _Bottom_navigationState extends State<Bottom_navigation> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text('Media App'),
      ),
      body: _buildPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo),label: 'Gallery'),
          BottomNavigationBarItem(icon: Icon(Icons.audiotrack),label: 'Audio'),
          BottomNavigationBarItem(icon: Icon(Icons.videocam),label: 'Video'),
        ],
      ),
    );
  }
  Widget _buildPage(int index){
    switch(index){
      case 0:
      return GalleryPage();
      case 1:
      return AudioPage();
      case 2:
      return VideoPage();
      default:
      return Container();
    } 
  }
}

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Gallery Page - Dummy Data'),
    );
  }
}
class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Audio Page - Dummy Data'),
    );
  }
}
class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Video Page - Dummy Data'),
    );
  }
}