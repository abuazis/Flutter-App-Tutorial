import 'package:flutter_app/bloc/product_bloc.dart';
import 'package:flutter_app/model/product.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group("Product Bloc Test", () {
    blocTest(
      "Initial Value",
      build: () => ProductBloc(),
      expect: [ProductInitial()],
    );

    blocTest(
      "Add Product",
      build: () => ProductBloc(),
      act: (bloc) async {
        bloc.add(AddProduct(Product("Apel", 200)));
      },
      expect: [
        ProductInitial(),
        ProductLoaded([Product("Apel", 200)])
      ],
    );

    blocTest(
      "Add 2 Products",
      build: () => ProductBloc(),
      act: (bloc) async {
        bloc.add(AddProduct(Product("Apel", 200)));
        bloc.add(AddProduct(Product("Duren", 100)));
      },
      expect: [
        ProductInitial(),
        ProductLoaded([Product("Apel", 200)]),
        ProductLoaded([
          Product("Apel", 200),
          Product("Duren", 100),
        ]),
      ],
    );

    blocTest(
      "Remove Products",
      build: () => ProductBloc(),
      act: (bloc) async {
        bloc.add(RemoveProduct(Product("Apel", 200)));
      },
      expect: [
        ProductInitial(),
      ],
    );

    blocTest(
      "Remove Products (Product Loaded)",
      build: () => ProductBloc(),
      act: (bloc) async {
        bloc.add(AddProduct(Product("Apel", 200)));
        bloc.add(RemoveProduct(Product("Apel", 200)));
      },
      expect: [
        ProductInitial(),
        ProductLoaded([Product("Apel", 200)]),
        ProductLoaded([]),
      ],
    );
  });
}
