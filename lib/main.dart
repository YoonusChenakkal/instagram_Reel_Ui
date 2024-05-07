import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  String a =
      'https://imgs.search.brave.com/GhlPSuImC06LVk6Dxa_zezKzrzTvtdOwdu_GVjf2sxg/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL05hdHVy/ZUxhbmRzY2FwZXMt/NTE5NzYwOTg0Lmpw/Zw';
  String b =
      'https://imgs.search.brave.com/ewAhfQ2-8-Ua4vjvTDzJm5cGoYBiHnX4yNLds3Tpzqo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NzQxNjkyMDc1MTEt/ZTIxYTIxYzgwNzVh/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TVRKOGZH/bHRZV2RsZkdWdWZE/QjhmREI4Zkh3dw';
  String c =
      'https://imgs.search.brave.com/sYZxYWm5tCLbgU6aUvw74SXZExyveFpdEKwltsP1i54/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NDk5ODkzMTctNmYx/NDc0M2FmMWJmP3E9/ODAmdz0xMDAwJmF1/dG89Zm9ybWF0JmZp/dD1jcm9wJml4bGli/PXJiLTQuMC4zJml4/aWQ9TTN3eE1qQTNm/REI4TUh4elpXRnlZ/Mmg4TVRsOGZHWnla/V1Y4Wlc1OE1IeDhN/SHg4ZkRBPQ';

  @override
  Widget build(BuildContext context) {
    List screens = [a, b, c];

    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: screens.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(screens[index]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SafeArea(
                  child: Stack(
                    children: [
                      Positioned(
                          top: 10,
                          right: 15,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 35,
                            color: Colors.white,
                          )),
                      Positioned(
                          bottom: 50,
                          right: 0,
                          child: SizedBox(
                            height: 285,
                            width: 55,
                            //color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      size: 28,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '22k',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.messenger_outline_outlined,
                                      size: 28,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '2k',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.send,
                                      size: 28,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '10k',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.more_vert_rounded,
                                  size: 28,
                                  color: Colors.white,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                            'https://imgs.search.brave.com/FX_BfxamkhCHag_-zzy0MLuBr-p7m0aRFgLz93uEuu4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvRnJl/ZVBob3Rvcy9GcmVl/LVBob3RvLTc0Mng0/OTItMjAzNDAxMTE5/Ny5qcGc',
                                          )),
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Colors.white, width: 2.2)),
                                )
                              ],
                            ),
                          )),
                      Positioned(
                          bottom: 0,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                           // color: const Color.fromARGB(255, 255, 52, 7),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.home_outlined,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.search,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.add_box_outlined,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.movie_filter,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                 CircleAvatar(
                                      backgroundColor: Color.fromARGB(255, 255, 6, 85),
                                      radius: 16,
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                    ),
                              ],
                            ),
                          )),
                      Positioned(
                          bottom: 50,
                          left: 0,
                          child: SizedBox(
                            height: 130,
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      radius: 22,
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'User_Name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SizedBox(
                                        height: 30,
                                        width: 80,
                                        child: OutlinedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Follow',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                          style: ButtonStyle(
                                              shadowColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.white),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)))),
                                        ))
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    'Share Reels...',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15, top: 15),
                                  height: 26,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(30, 0, 0, 0),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 4),
                                      Icon(
                                        Icons.music_note,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        'Music-vineed shreeniv..',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                      Positioned(
                          top: 10,
                          left: 15,
                          child: Row(
                            children: [
                              Text('Reels',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white)),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 23,
                                color: Color.fromARGB(255, 225, 225, 225),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
