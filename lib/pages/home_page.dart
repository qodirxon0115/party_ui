
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit:BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.2),
              ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Find The Best parties near you.",
                style: TextStyle(color: Colors.yellow,
                    fontSize: 30, fontWeight: FontWeight.w400),),
              const SizedBox(height: 30,),
              const Text("Let us find you a tutorial for your interest",
                style: TextStyle(color: Colors.greenAccent,
                    fontSize: 25),),
              const SizedBox(height: 350,),

              _isLogin ?

              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.yellow[900],
                ),
                child: const Center(
                  child: Text("Start", style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              ):
              Row(
                children: [

                  Expanded(
                    child: Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                      child: const Center(
                        child: Text("Facebook",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold),),
                      ),
                    ),),

                  const SizedBox(width: 8,),

                  Expanded(
                    child: Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                      ),
                      child: const Center(
                          child: Text("Google ",
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold),)),
                    ),),
                ],
              ),

              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
