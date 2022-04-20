import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyImage(),
     );
  }
}
class MyImage extends StatefulWidget {
  const MyImage({ Key? key }) : super(key: key);

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(Icons.drafts),
        title: GestureDetector(
          onTap: () {
            setState(() {
              count++;
            });
          },
          child: Text("App Demo $count"),
        ),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            padding:const EdgeInsets.all(10),
            decoration:const BoxDecoration(
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.black38,
                  spreadRadius: 4,
                  offset:Offset(4,4),
                )
              ],
              shape: BoxShape.circle,
              image: DecorationImage(image:AssetImage(
                'assets/image/n_1.jpg',
                ),
                fit: BoxFit.cover,
             ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.deepOrange,Colors.white,Colors.greenAccent],

              )
            ),
            // child: Image.asset(
            //   'assets/images/n_1.jpg',
            //   fit: BoxFit.cover,
            //   height: 150,
            //   width: 150,
            // ),
            // //child:const Center(child: Text("Nature")),
        
          ),
        ),
    );
  }
}