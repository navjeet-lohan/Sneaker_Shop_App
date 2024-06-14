import 'package:flutter/cupertino.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'GRAFFITI SNEAKER',
        price: '79000',
        imagePath: 'lib/images/3XLEXTREMEGRAFFITISNEAKERINWHITEBLACK.jpg',
        description: '3XL EXTREME GRAFFITI SNEAKER IN WHITE / BLACK',),
    Shoe(name: 'REFLECTIVE SNEAKER',
      price: '25000',
      imagePath: 'lib/images/3XLREFLECTIVESNEAKERINGREY.jpg',
      description: '3XL REFLECTIVE SNEAKER IN GREY',),
    Shoe(name: '3XL SNEAKER',
      price: '27000',
      imagePath: 'lib/images/3XLSneakerLightBlue.jpg',
      description: '3XL SNEAKER IN LIGHT/BLUE',),
    Shoe(name: '3XL SNEAKER',
      price: '10000',
      imagePath: 'lib/images/MENS3XLSNEAKERINBEIGE.jpg',
      description: '3XL SNEAKER IN BEIGE',),
    Shoe(name: '10XL SNEAKER',
      price: '19000',
      imagePath: 'lib/images/MENS10XLSNEAKERINGREYWHITERED.jpg',
      description: '10XL SNEAKER IN GREY/WHITE/RED',),
    Shoe(name: 'GRAFFITI SNEAKER',
      price: '72000',
      imagePath: 'lib/images/MENSRUNNERGRAFFITISNEAKERINBLACK.jpg',
      description: 'MENS RUNNER GRAFFITI SNEAKER IN BLACK',),
    Shoe(name: '3XL SNEAKER',
      price: '11000',
      imagePath: 'lib/images/MENS3XLSNEAKERINBEIGE.jpg',
      description: 'MENS 3XL SNEAKER IN BEIGE',),
    Shoe(name: 'TRACK SNEAKER',
      price: '7999',
      imagePath: 'lib/images/MENSTRACKSNEAKERINBEIGEBLACK.jpg',
      description: 'TRACK SNEAKER IN BEIGE/BLACK',),
    Shoe(name: 'TRACK SNEAKER',
      price: '29000',
      imagePath: 'lib/images/MENSTRACKSNEAKERINFADEDBLUE.jpg',
      description: 'MENS TRACK SNEAKER IN FADED BLUE',),
    Shoe(name: 'TRIPLES SNEAKER',
      price: '4900',
      imagePath: 'lib/images/MENSTRIPLESSNEAKERDENIMINBLUE.jpg',
      description: 'MENS TRIPLES SNEAKER DENIM IN BLUE',),
  ];
  //list of items in user cart
List<Shoe> userCart = [];
  List<Shoe> getUserCart(){
    return userCart;
  }
//get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  //add items to cart
void addItemsToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
}
//remove items from cart
void removeItemsFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}