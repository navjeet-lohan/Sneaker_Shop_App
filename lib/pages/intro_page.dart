import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          //logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                  'lib/images/balenciaga.png',
              color: Colors.white,
              height:240,
              ),
            ),
              const SizedBox(height: 48),


             /* const Text(
                'Brand New Sneakers Made With Premium Quality',
                style:TextStyle(
                    fontSize:17,
                  color: Colors.blueGrey,
                ),
              textAlign: TextAlign.center,
              ),

              */
              const SizedBox(
                height: 48,
              ),
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>HomePage(),
                ),
                ),
                child: Container(
                  decoration: BoxDecoration(color:Colors.grey[300], borderRadius: BorderRadius.circular(12),),
                  padding: const EdgeInsets.all(25),
                  child:const Center(
                      child: const Text(
                          'SHOP NOW',style:TextStyle(color:Colors.black, fontWeight: FontWeight.bold , fontSize:16,)
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
    }