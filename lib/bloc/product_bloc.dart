import 'package:bloc/bloc.dart';
import 'package:flutter_app/model/product_model.dart';

class ProductBloc extends Bloc<int, List<Product>> {
  @override
  List<Product> get initialState => [];

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];
    for (int i = 0; i < event; i++) {
      products.add(
        Product(
          imageURL:"https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg",
          name: "Product " + i.toString(),
          price: (i + 1) * 5000,
        ),
      );
    }
    yield products;
  }
}
