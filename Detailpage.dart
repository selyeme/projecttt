
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sounds/screens/DrawerScreen.dart';
import 'package:sounds/screens/SavePage.dart';
import 'package:sounds/screens/home.dart';

import 'model/Musics.dart';





import 'dart:math';

// ... (Your existing imports)







class Detailpage extends StatefulWidget {
  final Musics mMusic;
  final AudioPlayer audioPlayer;
  final List<Musics> playlist;


  const Detailpage({
    Key? key,
    required this.mMusic,
    required this.audioPlayer,
    required this.playlist,
  }) : super(key: key);

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  bool  isFavorite=false;
  bool isRepeatMode=false;
  double _sliderValue=0.0;
  double _soundSpeed=1.0;
  IconData btnIcon = Icons.play_arrow;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  int currentIndex = 0;

  Duration remainingTime = Duration.zero;












  @override
  void initState() {
    super.initState();
    setInitialAudio();
    setupAudioPlayer();



   widget.audioPlayer.positionStream.listen((position) {
     _sliderValue=position.inMilliseconds / widget.audioPlayer.duration!.inMilliseconds;
     remainingTime=duration - position;
   });

  }




  void setInitialAudio() {

currentIndex=0;
widget.audioPlayer.pause();
    widget.audioPlayer.setSpeed(_soundSpeed);

  }

  void setupAudioPlayer() {
    widget.audioPlayer.durationStream.listen((event) {
      setState(() {
        duration = event ?? Duration.zero;

      });
    });

    widget.audioPlayer.positionStream.listen((event) {
      setState(() {
        position = event;
      });

      if (position >= duration) {
        playNext();
      }
    });

    widget.audioPlayer.playerStateStream.listen((playerState) {
      setState(() {
        btnIcon = playerState.playing ? Icons.pause : Icons.play_arrow;
      });
    });
  }

  void playPause() {
    try {
      if (widget.audioPlayer.playing) {
        widget.audioPlayer.pause();
      } else if (!widget.audioPlayer.playing) {
        widget.audioPlayer.play();
      }
    } catch (e) {
      print('Error during play/pause: $e');
    }
  }

  void playNext() {
    try {
      currentIndex = (currentIndex + 1) % widget.playlist.length; // Wrap around
      widget.audioPlayer.setAsset(widget.playlist[currentIndex].url);

      widget.audioPlayer.play();







    } catch (e) {
      print('Error during play next: $e');
    }
  }
  void playPervoice() {
    try {
      currentIndex = (currentIndex - 1) % widget.playlist.length; // Wrap around
      widget.audioPlayer.setAsset(widget.playlist[currentIndex].url);

      widget.audioPlayer.play();






    } catch (e) {
      print('Error during play next: $e');
    }
  }

void changeSoundSpeed(){
    setState(() {

      _soundSpeed =(_soundSpeed==1.0) ? 1.5:1.0;
      widget.audioPlayer.setSpeed(_soundSpeed);
    });
}




// int repertitionCpunt=0;
//   void playWithRepetion(){
//     if(repertitionCpunt ==0){
//       widget.audioPlayer.play();
//     }else{
//       widget.audioPlayer.seek(Duration(seconds: 0));
//     }
//   }

void playRandomSoung(){
    try {
      final randomIndex=Random().nextInt(widget.playlist.length);
      currentIndex=randomIndex;
      widget.audioPlayer.setAsset(widget.playlist[currentIndex].url);
      widget.audioPlayer.play();
    }catch(e){
      print('Error during play random song:$e');
    }
}
String formatDuration(Duration duration){
    int minutes=duration.inMinutes;
    int secods=duration.inSeconds %60;
    return '$minutes:${secods.toString().padLeft ( 2,'0')}';
}

void toggleFavorite(){
    setState(() {
      isFavorite=!isFavorite;
      if(isFavorite){
        SavePage favoritesong=  SavePage(title: widget.playlist[currentIndex].title, url: widget.playlist[currentIndex].url);
        favoritesongs.add(favoritesong);
      }else{
        favoritesongs.removeWhere((favorite) => favorite.url==widget.playlist[currentIndex].url);

      }
    });
}




  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(


        drawer: Drawerscreen(),
        backgroundColor: Colors.white,

        body: Stack(

          children:[


            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ListTile(
                leading: Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFE0E0E0),
                          ),
                          child: Icon(Icons.menu, color: Colors.grey, size: 30),
                        ),
                      ),
                    );
                  },
                ),
                title:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Text(
                      "ملف الخطب",
                      style: TextStyle(color: Color(
                          0xf01e0f00),fontSize: 20),

                    ),
                  ),

                  Padding(
                    padding: const    EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE0E0E0),
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),

                ]),
              ),

            ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120,left: 20),
                  child: Text(
                    formatDuration(remainingTime),
                    style: TextStyle(fontSize: 20,color:Color(
                        0xf01c0f01) ),
                  ),
                ),
                Stack(
                  children:[

                 Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70,top: 43),
                        child: Container(
                          width: 250, // Adjust the size as needed
                          height: 250, // Adjust the size as needed
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(
                                0xf01e0f00), width: 1),
                          ),
                         child: Positioned.fill(

                            child: Transform.rotate(

                              angle:-pi/ 150,

                              // Rotate the slider by -90 degrees
                              child: CircularProgressIndicator(
                                strokeWidth: 10,


                                value: _sliderValue,
                                valueColor: AlwaysStoppedAnimation<Color>(Color(
                                    0xf01c0f01)),


                              ),

                            ),
                          ),
                        ),
                      ),


                    ],
                  ),

                    Padding(
                      padding: const EdgeInsets.only(right: 75,top: 60),
                      child: ClipOval(


                         child: Image.asset(
                            "assets/Images/٢٠٢٤٠١١٦_١٤١١١٢.jpg",
                            width: 240,
                            height: 220,
                            fit: BoxFit.cover,
                          ),
                        ),
                    ),

               ],


                ),
                SizedBox(height: 20), // Adjust the spacing as needed
                Text(

               currentIndex==0 ? "${widget.mMusic.title}" : "${widget.playlist[currentIndex].title}" ,




                  style: const TextStyle(
                    color:Color(0xf001423f),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10), // Adjust the spacing as needed

                SizedBox(height: 35), // Adjust the spacing as needed
                Container(
                  width: 600,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                    color: Color(0xFFE0E0E0),
                  ),
                  child:  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                               IconButton(
                                onPressed: () {

                                  toggleFavorite();



                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) =>SavePage(title: widget.playlist[currentIndex].title,url: widget.playlist[currentIndex].url,),),
                                  );
                                },
                                icon: isFavorite
                                    ? Icon(Icons.favorite)
                                    : Icon(Icons.favorite_border),
                                color: Color(
                                    0xf01c0f01),
                              ),


                               IconButton(
                                onPressed: () {
                                  // Uncomment the line below to repeat the same song
                                  // widget.audioPlayer.seek(Duration.zero);
                                  playPervoice();
                                },
                                icon: const Icon(
                                  Icons.fast_forward_rounded,
                                  color: Color(
                                      0xf01c0f01),
                                  size: 42.0,
                                ),
                              ),


                               Container(
                                decoration: BoxDecoration(
                                 gradient: LinearGradient(colors:[
                                   Color(0xf001423f),
                                   Color(0xf05dc2bf),
                                 ] ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    onPressed: playPause,
                                    icon: Icon(btnIcon),
                                    iconSize: 30.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),


                              IconButton(
                                onPressed: () {
                                  // Uncomment the line below to repeat the same song
                                  // widget.audioPlayer.seek(Duration.zero);
                                  // Uncomment the line below to play the next song
playNext();

                                },
                                icon: const Icon(
                                  Icons.fast_rewind_rounded,
                                  color: Color(
                                      0xf01c0f01),
                                  size: 42.0,
                                ),
                              ),


                           IconButton(
                                onPressed: () {
                                  // Uncomment the line below to repeat the same song
                                  // widget.audioPlayer.seek(Duration.zero);
                                  // Uncomment the line below to play the next song
                                  Share.share("https://play.google.com/store/apps/details?id=com.instructiveteh.testapp");
                                },
                                icon: const Icon(
                                  Icons.share,
                                  color: Color(
                                      0xf01c0f01),
                                  size: 20,
                                ),
                           ),
                        ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap:(){
setState(() {
  isRepeatMode=!isRepeatMode;
  widget.audioPlayer.setLoopMode(isRepeatMode ? LoopMode.one : LoopMode.off);
});
                      },
                              child: Icon(
                                isRepeatMode ? Icons.repeat_one : Icons.repeat,

                                color: Color(
                                    0xf01c0f01),
                              ),
                            ),


                            InkWell(
                              onTap: (){
                                changeSoundSpeed();
                              },
                              child: Icon(
                                Icons.settings_input_composite_outlined,
                                color: Color(
                                    0xf01c0f01),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                playRandomSoung();
                              },
                              child: Icon(
                                Icons.shuffle,
                                color: Color(
                                    0xf01c0f01),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
      ],
        ),
      ),
    );
  }
}
