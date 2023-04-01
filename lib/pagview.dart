import 'package:flutter/material.dart';

import 'Login.dart';

class Data {
  late final String title;
  late final String description;
  late final String image;

  Data({required this.title, required this.description, required this.image});
}

class PagView extends StatefulWidget {
  const PagView({super.key});

  @override
  State<PagView> createState() => _PagViewState();
}
 int currentindex=0;
List<Data> mydata = [
  Data(title: "", description: "", image: "assets/images/A1.gif"),
  Data(
      title: "Eat",
      description:
          "Explore curated lists of top restaurants, cafes, pubs, and bars in mumbai,dased on trebds.",
      image: "assets/images/A3.gif"),
  Data(
      title: "Search",
      description:
          "Discover restaurants by type meal,see menus and photos for nrarby restaurant and bookmark your favorite places on the go",
      image: "assets/images/A3.gif"),
  Data(
      title: "Order",
      description:
          "Best restuarant delivering your doorstep, Browse menus and build your order in seconds",
      image: "assets/images/A4.gif"),
];

class _PagViewState extends State<PagView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
         '/a':(ctx)=>LogIn(),
      },
      home: Scaffold(
        body: Stack(
          children:[
            Builder(
              builder:(ctx)=>  PageView(
            children: mydata
                .map((item) => Container(
                      color: Colors.white12,
                      child: Column(children: [
                                               const SizedBox(height: 30),

                        Image.asset(item.image),
                        const SizedBox(height: 10),
                        Text(
                          item.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Text(item.description,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                      ]),
                    ))
                .toList(),
         onPageChanged: (val){
          setState(() {
  currentindex=val;
  if(currentindex==3){
    Future.delayed(Duration(seconds: 2),()=> Navigator.of(ctx).pushNamed('/a'));
  }
            
          });
         },
          ),
              ),
              Builder(
                builder: (ctx)=>  Container(
               padding: EdgeInsets.all(10),

            alignment: Alignment.topRight,
             child: TextButton(onPressed: (){
                  Navigator.of(ctx).pushNamed('/a');

             }, 
             child: const Text("Skip",style: TextStyle(fontSize: 20,
             fontWeight: FontWeight.bold,
                               color: Color.fromARGB(255, 76, 144, 175),
           
             ),),
             ),
           ),
                ),
          
           Center(child: Indicator(currentindex),
          ),
          ]
        ),
        
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int idex;
  Indicator(this.idex);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.9, 0.9),
      child: Row(
        children: [
          buildContainer(idex==0? const Color.fromARGB(255, 76, 144, 175): Colors.red),
                  buildContainer(idex==1? const Color.fromARGB(255, 76, 144, 175):Colors.red),
    
          buildContainer(idex==2? const Color.fromARGB(255, 76, 144, 175):Colors.red),
          buildContainer(idex==3? const Color.fromARGB(255, 76, 144, 175):Colors.red),
    
        ]
        ),
    );
  }

  Container buildContainer(Color colore) {
    return Container(
      margin: const EdgeInsets.all(4),
    height: 10,
    width: 10,
    
    decoration: BoxDecoration(
      shape: BoxShape.circle,
          color: colore,

      ),
  );
  }
}
