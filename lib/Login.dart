import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
        
        
        body: SingleChildScrollView(

          child :Align(
            alignment: Alignment.bottomLeft,
            child: Column(
            children: <Widget> [
                            const SizedBox(height: 30),

            Container(
              decoration: const BoxDecoration(
                border: Border(left: BorderSide(
                  color: Color.fromARGB(255, 76, 144, 175),
                  width: 5,
                  ) )
              ),
              child: const Text("Shop",style: TextStyle(fontSize: 31,
              fontWeight: FontWeight.bold,
              ),),
            ),
          
              const SizedBox(height: 30),
              // ignore: sized_box_for_whitespace
              Column(
                children: const [
                  Text("Log in",style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold
                  )
                  ,
                  textAlign: TextAlign.right,
                  ),
            Text("Lorem ipsum dolor sit amet, ",style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.bold),),
                  const SizedBox(height: 5),

Text("consectetur adipiscing elit, ",style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.bold),)
                ],
              ),
                   Container(
                    padding: const EdgeInsets.all(10),
               // margin: EdgeInsets.all(2),
                child:  TextField(
                  decoration:InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                       ),
                  labelText: "email",
                  labelStyle: const TextStyle(fontSize: 25),
                  hintText: "enter theS email",
                  helperStyle: const TextStyle(fontSize:25),
                                //  icon: Icon(Icons.alternate_email),
                   prefixIcon: Icon(Icons.email),
                  ) ,
                  keyboardType: TextInputType.text,
                  ),
              ),          
               Container(
                margin: const EdgeInsets.all(10),
                child:  TextField(
                  decoration:InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:const BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                       ),
                  labelText: "password",
                  labelStyle: const TextStyle(fontSize: 25),
                  hintText: "enter password",
                  helperStyle: const TextStyle(fontSize:25),
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.visibility),
                                       onPressed: () {  },
          
                      ),
          
                  ) ,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
          
                  ),  
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    const Text("forgot",
                   style: TextStyle(fontWeight: FontWeight.bold,
                   
                   ),
                    ),
                    TextButton(
                   onPressed: () => {
                    
                   },

                      child: const Text("password?  ",
                                       style: TextStyle(fontWeight: FontWeight.bold,
                                       color: Color.fromARGB(255, 76, 144, 175),
                    
                                       ),
                      ),
                      
                    )
                  ],
                 ),
                             //  Container(
               
                //child:  Rais(
                  //child:Text("REGESTER",style: TextStyle(fontSize: 30),
                 //),
                
               // ),
               // ),
          
                  
                   const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,
                    vertical: 10),
                    child: MaterialButton(
                     minWidth: double.infinity,
                  color: const Color.fromARGB(255, 76, 144, 175),
                      height: 50,
                      shape: const RoundedRectangleBorder(
                        borderRadius:BorderRadius.all(Radius.circular(12)) ),
                      child: const Text("LOG IN",
                      style: TextStyle(color:Colors.white ,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      ) ,
                      ),
                      
                      
                      onPressed: (){
                      }
                    
                    
                    ),
                  ),
                                   Padding(
                    padding: const EdgeInsets.all(20),
                    child:MaterialButton(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                                      color: const Color.fromARGB(255, 76, 144, 175),
                            width: 3),
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(12) ),
                          child:const Center(child:Text("Sign with Google",
                          style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      ) ,
                          ),
                                      ),
                            
                      ),
                      onPressed: (){},
                    ),
                  ),   
            ],
            ),
          ),
      ), 
    ),

);

        
  
  }   

}




