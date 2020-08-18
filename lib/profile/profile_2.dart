import 'package:flutter/material.dart';

class Profile2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 24,
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [

          Center(
            child: Image.asset(
              'assets/images/background2.jpg',
              fit: BoxFit.cover,
              width: size.width,
              height: size.height
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 500,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/background2.jpg'),
                            ),

                            SizedBox(width: 15,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Garret Watson',
                                  style: TextStyle(
                                    fontSize: 24,
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

                              ],
                            )

                          ],
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                          decoration: BoxDecoration(
                            color: Color(0xFFE4395F),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text(
                            'follow',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white
                            ),
                          ),
                        )

                      ],
                    ),
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
                  ),

                  Divider(
                    color: Colors.grey[400],
                  ),

                  Text(
                    'Friends',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  Container(
                    height: 70,
                    child: ListView.builder(
                      padding: EdgeInsets.all(8),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (_, index){
                        return Container(
                          height: 60,
                          width: 60,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage('assets/images/friends_${index.toString()}.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 10,),

                  Text(
                    'Photos',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  Container(
                    height: 160,
                    child: ListView.builder(
                      padding: EdgeInsets.all(8),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (_, index){
                        return Container(
                          height: 160,
                          width: 110,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/photo_${index.toString()}.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}