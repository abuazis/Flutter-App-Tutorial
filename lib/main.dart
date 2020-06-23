import 'package:flutter/material.dart';
import 'widgets/product_card.dart';
import 'package:provider/provider.dart';
import 'provider/product_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: firstColor,
        ),
        body: ChangeNotifierProvider<ProductState>(
          create: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (context, productState, _) => ProductCard(
                  imageURL:
                      "https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg",
                  name: "Buah-buahan mix 1 kg",
                  price: "Rp 25.000",
                  quantity: productState.quantity,
                  notification: (productState.quantity > 5) ? "Diskon 10%" : null,
                  onAddCartTap: () {},
                  onIncTap: () {
                    productState.quantity++;
                  },
                  onDecTap: () {
                    productState.quantity--;
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
