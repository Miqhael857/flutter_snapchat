import 'package:flutter/material.dart';

class SnapChat extends StatelessWidget {
  Widget _buildStory({String assets}){
    return  CircleAvatar(
      maxRadius: 40,
      backgroundColor: Color(0xff9f5acd),
      child: CircleAvatar(
        maxRadius: 37,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          maxRadius: 35,
          backgroundImage: AssetImage("assets/$assets"),
        ),
      ),
    );
  }
  Widget _buildSubscription({String assets,String title, String data}){
    return  Container(
      height: 230,
      width: 150,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/$assets"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5,),
          Text(
            data,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
  Widget _buildForYou({String assets,String title, String data}){
    return  Container(
      height: 300,
      width: 160,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/$assets"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
           title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5,),
          Text(
            data,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );}
  Widget _buildSingleBottomProduct({String assets, bool color}){
    return  Container(
      height: 30,
      child: Image(
        image: AssetImage("assets/$assets.png",),
        // color: color==true?Colors.grey:Color(0xff9f5acd),
      ),
    );
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height:  50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          _buildSingleBottomProduct(assets: "location 4", color: true ),
            _buildSingleBottomProduct(assets: "message" , color: true),
            _buildSingleBottomProduct(assets: "camera" , color: true),
            _buildSingleBottomProduct(assets: "account" , color: false),
            _buildSingleBottomProduct(assets: "play" , color: true),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xfff8f8f8),
        title: Container(
          child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/face.jpg"),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
                backgroundColor: Color(0xfff2f2f2),
                child: Icon(
                    Icons.search,
                    size: 30,
                    color: Color(0xff31414f),
                ),
            ),
           Container(
             height: 50,
             width: 150,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   "Stories",
                   style: TextStyle(color: Colors.black),
                 ),
               ],
             ),
           ),
          ],
        ),
      ),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xfff2f2f2),
            child: Icon(
              Icons.person_add,
              size: 30,
              color: Color(0xff31414f),
            ),
          ),
          CircleAvatar(
            backgroundColor: Color(0xfff2f2f2),
            child: Icon(
              Icons.more_horiz,
              size: 30,
              color: Color(0xff31414f),
            ),
          ),
        ],
      ),
     body: Container(
       padding: EdgeInsets.only(top: 10, left: 20),
     child: ListView(
       children: [
         Text("Friends", style: TextStyle(
           color: Colors.black,
           fontSize: 20,
           fontWeight: FontWeight.w600,
         ),
         ),
         Container(
           height: 90,
           width: double.infinity,
           child: SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
               _buildStory(assets:"face.jpg",),
                 SizedBox(width: 10,),
                 _buildStory(assets: "j.jpg"),
                 SizedBox(width: 10,),
                 _buildStory(assets: "m.jpg"),
                 SizedBox(width: 10,),
                 _buildStory(assets: "n.jpg"),
                 SizedBox(width: 10,),
                 _buildStory(assets: "face.jpg"),
                 SizedBox(width: 10,),
                 _buildStory(assets: "n.jpg"),

                ],
             ),
           ),
         ),
         Row(
           children: [
             Text("Subscription",
               style: TextStyle(fontSize: 18,
                   fontWeight: FontWeight.bold
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 3),
               child: Icon(
                 Icons.arrow_forward_ios,
                 size: 15,
                 color: Colors.grey,
               ),
             ),

           ],
         ),
         Container(
           height: 250,
           child: SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                _buildSubscription(
                    assets: "uriel.jpg",
                    data: "12 Hours Ago",
                    title: "Cheetah"),
                 SizedBox(width: 10,),
                 _buildSubscription(
                     assets: "m.jpg",
                     data: "11 Hours Ago",
                     title: "Natasha"),
                 SizedBox(width: 10,),
                 _buildSubscription(
                     assets: "n.jpg",
                     data: "14 Hours Ago",
                     title: "Blondie"),
                 SizedBox(width: 10,),
                 _buildSubscription(
                     assets: "n.jpg",
                     data: "16 Hours Ago",
                     title: "Blondie"),
                 SizedBox(width: 10,),
                 _buildSubscription(
                     assets: "m.jpg",
                     data: "9 Hours Ago",
                     title: "Natasha"),
                 SizedBox(width: 10,),
                 _buildSubscription(
                     assets: "j.jpg",
                     data: "7 Hours Ago",
                     title: "Man"),
               ],
             ),
           ),
         ),
         Container(
           height: 20,
           width: 400,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("For You", style: TextStyle(
                fontSize:  18,
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
               ),
               ),
               SizedBox(width: 5,),
               Container(
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 3),
                       child: Icon(
                         Icons.arrow_back_ios,
                         size: 15,
                         color: Colors.grey,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 3),
                       child: Text(
                         "Swipe for Shows",
                         style: TextStyle(fontSize: 15),
                       ),
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ),
         SizedBox(height: 10,),
         Container(
           height: 280,
           width: double.infinity,
           child: Row(
             children: [
               _buildForYou(
                   assets: "m.jpg",
                   data: "Today",
                   title: "Natasha"),
               SizedBox(width: 10,),
               _buildForYou(
                   assets: "j.jpg",
                   data: "1 Month Ago",
                   title: "Man"),
             ],
           ),
         )
       ],
     ),
    ),

    );
  }
}
