







import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  final sum;

  const Cart_products({Key key,  this.sum}) : super(key: key);
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Shirts",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "Size": "M",
      "Color": "black",
      "Quantity": 1,
    },
    {
      "name": "tshirts",
      "picture": "images/products/blazer2.jpeg",
      "price": 85,
      "Size": "M",
      "Color": "red",
      "Quantity": 1,
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "price": 85,
      "Size": "M",
      "Color": "black",
      "Quantity": 1,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50,
      "Size": "M",
      "Color": "black",
      "Quantity": 1,
    },
    {
      "name": "Heels",
      "picture": "images/products/hills1.jpeg",
      "price": 85,
      "Size": "M",
      "Color": "black",
      "Quantity": 1,
    },
    {
      "name": "Hills",
      "picture": "images/products/hills2.jpeg",
      "price": 85,
      "Size": "M",
      "Color": "black",
      "Quantity": 1,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "price": 85,
      "Size": "M",
      "Color": "black",
      "Quantity": 1,
    },
    {
      "name": "jeans",
      "picture": "images/products/pants2.jpeg",
      "price": 85,
      "Size": "M",
      "Color": "black",
      "Quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "price": 85,
      "Size": "M",
      "Color": "black",
      "Quantity": 1,
    },
    {
      "name": "Long skirts",
      "picture": "images/products/skt1.jpeg",
      "price": 85,
      "Size": "M",
      "Color": "black",
      "Quantity": 1,
    },
    {
      "name": "Short skirts",
      "picture": "images/products/skt2.jpeg",
      "price": 85,
      "Size": "Small",
      "Color": "pink",
      "Quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_cart_product(
          cart_product_name: Products_on_the_cart[index]["name"],
          cart_product_color: Products_on_the_cart[index]["color"],
          cart_product_qty: Products_on_the_cart[index]["quantity"],
          cart_product_size: Products_on_the_cart[index]["size"],
          cart_product_price: Products_on_the_cart[index]["price"],
          cart_product_picture: Products_on_the_cart[index]["picture"],
        );
      });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_size;
  final cart_product_color;
  final cart_product_qty;
  final cart_product_price;
  final cart_product_picture;


  Single_cart_product({
    this.cart_product_name,
    this.cart_product_size,
    this.cart_product_color,
    this.cart_product_price,
    this.cart_product_qty,
    this.cart_product_picture,
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:  new Image.asset(cart_product_picture),
        title: new Text(cart_product_name,),
        subtitle: new Column(
          children: <Widget>[
           // Row inside column
            new Row(
              children: <Widget>[
                // this section is for the size of the product
                Expanded(child: new Text("size",),),
               Padding(
                   padding: const EdgeInsets.all(6.0),
               child: new Text("$cart_product_size",style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w900,fontSize: 17,)),
               ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: new Text('l', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold), ),
                ),



          ],
        ),
            new Container(child: new Text("$cart_product_color"),
            ),
            //
            new Container(
              alignment: Alignment.topLeft,
              child:  new Text("\$${cart_product_price}", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15, color: Colors.red),),
            )
    ],
      ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),


          ],
        ),
      ),
    );
  }
}

