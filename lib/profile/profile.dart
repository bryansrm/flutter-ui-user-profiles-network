import 'package:flutter/material.dart';
import 'package:flutter_ui_social_user_profiles/profile/profile_2.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: size.height * .4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background1.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [

                        SizedBox(height: 10.0),

                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/friends_4.jpg'),
                        ),

                        SizedBox(height: 16.0),

                        Text(
                          'Bryan Rodriguez',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                          ),
                        ),

                        SizedBox(height: 4.0),

                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14
                          ),
                        ),

                        Expanded(
                          child: Container(),
                        ),

                        Container(
                          height: 65,
                          color: Colors.black.withOpacity(.4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(
                                width: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text(
                                      'FRIENDS',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12
                                      ),
                                    ),

                                    SizedBox(height: 4.0),

                                    Text(
                                      '2307',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Container(
                                width: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text(
                                      'FOLLOWING',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12
                                      ),
                                    ),

                                    SizedBox(height: 4.0),

                                    Text(
                                      '362',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Container(
                                width: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text(
                                      'FOLLOWERS',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12
                                      ),
                                    ),

                                    SizedBox(height: 4.0),

                                    Text(
                                      '100',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),

                Material(
                  elevation: 1,
                  child: Container(
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Icon(
                          Icons.web,
                          color: Colors.black,
                          size: 28.0,
                        ),

                        Icon(
                          Icons.image,
                          color: Colors.black,
                          size: 28.0,
                        ),

                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.black,
                          size: 28.0,
                        ),

                      ],
                    ),
                  ),
                ),
                
                Container(
                  height: size.height * .6 - 50,
                  padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 24),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    physics: BouncingScrollPhysics(),
                    children: List.generate(12, (index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/photo_${index.toString()}.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),

            Positioned(
              top: 10.0,
              left: 16.0,
              child: SafeArea(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile2())
                    );
                  },
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}