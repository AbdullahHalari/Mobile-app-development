import 'package:classwork/app.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var list = ["ali", "ahmed", "bilal"];
  // var image_list =["https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60","https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60","https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, 
    child: 
    Scaffold(
      appBar: AppBar(
      title:TabBar(tabs: [
        Tab(child: Text("1"),),
        Tab(child:  Text("2"),),
        Tab(child: Text("3"),)
      ],),),
      body: TabBarView(children: [
        App(),
        App(),
        App()
      ]),
      )
      );
    // Scaffold(
    //   appBar: AppBar(
    //     title: Text("data"),
    //   ),
    //   drawer: Drawer(
    //     child: ListView(
    //       children: [
    //         DrawerHeader(
    //             child: Image.network(
    //                 "https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")),
    //         GestureDetector(
    //             onTap: () {
    //               App();
    //             },
    //             child: ListTile(
    //               title: Text("hello"),
    //             )),
    //         ListTile(
    //           title: Text("hello"),
    //         ),
    //       ],
    //     ),
    //   ),
    // body:
    // GridView.count(
    //   crossAxisCount: 3,
    //   crossAxisSpacing: 50,
    //   mainAxisSpacing: 50,
    //   children: List.generate(list.length, (index){
    //     return Padding(padding: const EdgeInsets.all(8),
    //     child: Container(
    //       color:  Colors.red,
    //       width: 10,
    //       height: 10,
    //       child: Text(list[index]),
    //     ),
    //     );

    //   }),
    //   )
    //  ListView.builder(
    //     itemCount: list.length,
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         title: Text(list[index]),
    //       );
    //     })

//  Padding(
//    padding: const EdgeInsets.all(8),
//    child: ListView.builder(
//               itemCount: image_list.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                    height: 100,
//                    width: 100,
//                    child:  Image.network(image_list[index]),
//                   ),
//                 );
//               }),
//  )

    // ListView(
    //   children: [
    //     Icon(Icons.face),
    //         Container(
    //           color: Colors.red,
    //           height: 100,
    //           child: Row(

    //             children: [
    //             Container(
    //               color: Colors.blue,
    //               height: 100,
    //               width: 100,

    //               child: Text("hello"),
    //             )
    //           ],),

    //         )
    //   ],

    // )

    //      Column(
    //   children: [
    //     list(),
    //     list(),
    //     list(),
    //   ],
    // )
    // Center(
    //     child: ElevatedButton(
    //         onPressed: () {
    //           Navigator.push(
    //               context, MaterialPageRoute(builder: (context) => App()));
    //         },
    //         child: Text("button"))
    // Container(
    //     color: Colors.red,
    //     height: MediaQuery.of(context).size.height*0.5,
    //     width: MediaQuery.of(context).size.width,
    //   ),
    // )
    // Stack(children: [
    //   Container(
    //     color: Colors.red, height: 100,width: 100,
    //   ),
    //   Container(
    //     color: Colors.blue, height: 50, width: 50,
    //   )
    // ],)

    //     Center(

    //       child:
    //       CircleAvatar(
    //         // backgroundColor: Colors.red,
    // backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
    // // backgroundImage: AssetImage('1.jpg'),
    //       radius: 80,)
    //       //  Text ("text style", style: TextStyle(backgroundColor: Colors.black, color: Colors.red[300], fontSize: 30, fontWeight: FontWeight.bold, ),),
    //     )

    //  child:
    //   Column (
    //     children:[
    //       // Align(
    //         // alignment: Alignment.topRight,
    //       // child:
    //        Container(

    //         child: Center(child: Text("center")),
    //         height: 200,
    //         width: 200,
    //         decoration: BoxDecoration(
    //           color: Colors.red[400],
    //           borderRadius: BorderRadius.circular(40),
    //           gradient: LinearGradient(colors: [Colors.red, Colors.black12]),

    //       ),),
    //       SizedBox(height: 30,width: 30,),
    //         Container(
    //           // padding: EdgeInsets.all(80), //inside box
    //           padding: EdgeInsets.only(left: 0,top: 30),
    //         child: Text("padding"),
    //         height: 200,
    //         width: 200,
    //         decoration: BoxDecoration(
    //           color: Color(0xffe8c492),
    //           borderRadius: BorderRadius.circular(40),

    //       ),),
    //       Container(
    //           //in changing margin outside box
    //         margin: EdgeInsets.only(left: 30,top: 30),
    //         padding: EdgeInsets.only(left: 30,top: 30),
    //         child: Text("margin"),
    //         height: 200,
    //         width: 200,
    //         decoration: BoxDecoration(
    //           color: Colors.red[400],
    //           borderRadius: BorderRadius.circular(40),

    //       ),),
    //        Container(
    //           //in changing margin outside box
    //         margin: EdgeInsets.only(left: 30,top: 30),
    //         padding: EdgeInsets.only(left: 30,top: 30),
    //         child: Text("new"),
    //         height: 200,
    //         width: 200,
    //         decoration: BoxDecoration(
    //           color: Colors.red[400],
    //           borderRadius: BorderRadius.circular(40),

    //       ),),
    //       // ),
    //     ],
    // ),
    // );
  }
}

// Widget list() {
//   return ListTile(
//     leading: CircleAvatar(
//       backgroundColor: Colors.yellow,
//       radius: 40, 
//     ),
//     title: Text("list"),
//     subtitle: Text("ListTile"),
//     trailing: Column(
//       children: [
//         Text("data"),
//         CircleAvatar(
//           backgroundColor: Colors.blue,
//         child: Text("3"),
//           radius: 10,
//         )
//       ],
//     ),
//   );
// }
