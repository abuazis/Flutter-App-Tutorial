import 'dart:math';
import 'package:flutter/material.dart';
import 'bloc/product_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'model/product_model.dart';
import 'widgets/product_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        builder: (context) => ProductBloc(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final Random r = Random();

  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF44336),
        title: Text("Demo ListView Builder"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            color: Color(0xFFF44336),
            child: Text(
              "Create Products",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              bloc.dispatch(r.nextInt(4) + 2);
            },
          ),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<ProductBloc, List<Product>>(
            builder: (context, products) => Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      (index == 0) ? SizedBox(width: 20) : Container(),
                      ProductCard(
                        imageURL: products[index].imageURL,
                        name: products[index].name,
                        price: products[index].price.toString(),
                        onAddCartTap: () {},
                        onDecTap: () {},
                        onIncTap: () {},
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
