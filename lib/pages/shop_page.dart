import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen:false).addItemsToCart(shoe);
    //alert the user , shoe successfully added
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Successfully added!'),
      content: Text('Check your cart'),

    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>
      (builder: (context,value,child)=> Column(
          children: [
//search bar
            Container(
              padding:const EdgeInsets.all(12),
              margin:const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(16)),
              child: const Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search', style: TextStyle(color: Colors.grey),),
                  Icon(Icons.search,color: Colors.grey,) ,
                ],
              ),
            ),
            //message

            //hot picks
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0 ,vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Sneakers and Shoes', style: TextStyle(color: Colors.grey, fontWeight:FontWeight.bold,fontSize: 24
                  ),
                  ),
                  Text(
                    'See All', style: TextStyle(color: Colors.blue, fontWeight:FontWeight.bold,
                  ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index){
                      //get a shoe from shoe list
                      Shoe shoe = value.getShoeList()[index];
                     //return the shoe
                      return ShoeTile(
                        shoe: shoe,
                        onTap: ()=>addShoeToCart(shoe),
                      );
                    }
                )
            ),
            const Padding(
              padding: EdgeInsets.only(top : 25.0, left: 25, right: 25),
              child: Divider(
                color: Colors.white,),
            )
          ],
        )); }


}

