import 'package:flutter/material.dart';
import 'package:flutter_ui_social_user_profiles/profile/profile.dart';

class Profile3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile())
            );
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
      body: Stack(
        children: [

          Center(
            child: Image.asset(
              'assets/images/background3.jpg',
              fit: BoxFit.cover,
              width: size.width,
              height: size.height
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                margin: EdgeInsets.all(0),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                elevation: 0,
                child: Container(
                  height: size.height * .45,
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                  child: Column(
                    children: [

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                CircleAvatar(
                                  radius: 36,
                                  backgroundImage: AssetImage('assets/images/background3.jpg'),
                                ),

                                Row(
                                  children: [

                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.grey
                                        )
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12.0),
                                      child: Center(
                                        child: Text(
                                          'ADD FRIENDS',
                                          style: TextStyle(
                                            fontSize: 14
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 8,),

                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE4395F),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12.0),
                                      child: Center(
                                        child: Text(
                                          'FOLLOW',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                )

                              ],
                            ),
                            
                            SizedBox(height: 10,),

                            Text(
                              'Winnie Vasquez',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                            SizedBox(height: 5,),

                            Text(
                              'Flutter Developer',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey
                              ),
                            ),

                            SizedBox(height: 10),

                            Text(
                              'I\'m a Flutter Developer, who likes to create powerful, pixel perfect designs',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),

                          ],
                        ),
                      ),

                      Expanded(
                        child: Container(),
                      ),

                      Divider(
                        color: Colors.grey[400],
                      ),

                      Container(
                        height: 64,
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
                                      color: Colors.grey,
                                      fontSize: 12
                                    ),
                                  ),

                                  SizedBox(height: 4.0),

                                  Text(
                                    '2307',
                                    style: TextStyle(
                                      color: Colors.black87,
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
                                      color: Colors.grey,
                                      fontSize: 12
                                    ),
                                  ),

                                  SizedBox(height: 4.0),

                                  Text(
                                    '362',
                                    style: TextStyle(
                                      color: Colors.black87,
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
                                      color: Colors.grey,
                                      fontSize: 12
                                    ),
                                  ),

                                  SizedBox(height: 4.0),

                                  Text(
                                    '100',
                                    style: TextStyle(
                                      color: Colors.black87,
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
            ),
          ),

        ],
      ),
    );
  }
}