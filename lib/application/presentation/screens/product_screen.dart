import 'package:commercejs_project/application/domain/blocs/product_bloc/product_bloc.dart';
import 'package:commercejs_project/application/presentation/widgets/product_screen/product_card.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocProvider(
        create: (context) => ProductBloc()..add(LoadProducts()),
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is ProductStateLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductStateLoaded) {
              double width = MediaQuery.of(context).size.width;
              int crossAxisCount = width > 1200
                  ? 4
                  : width > 800
                      ? 3
                      : 2;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: state.products[index]);
                  },
                ),
              );
            } else if (state is ProductStateError) {
              return const Center(child: Text('Error loading products'));
            } else {
              return const Center(child: Text('Something went wrong!'));
            }
          },
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.black,
        color: const Color.fromARGB(255, 108, 108, 108),
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(
            Icons.home,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
