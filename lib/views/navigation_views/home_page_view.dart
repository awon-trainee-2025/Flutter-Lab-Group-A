import 'package:clothing_app/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            title: TextField(
              controller: _searchController,
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
            ),
            backgroundColor: Colors.black,
            actions: [
              IconButton(
                icon: const Icon(Icons.filter_list_alt),
                color: Colors.white54,
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              crossAxisCount: 2,
              children: [
                CustomContainer(
                  image: 'images/christia dior glasses.jpg',
                  productName: 'Christian Dior Vintage Glasses',
                  price: '46.99',
                ),
                CustomContainer(
                  image: 'images/top1.jpg',
                  productName: 'Vintage Blouse',
                  price: '23.99',
                ),
                CustomContainer(
                  image: 'images/hair clip.jpg',
                  productName: 'Simple Brown Hairclip',
                  price: '14.99',
                ),
                CustomContainer(
                  image: 'images/miumiu shoes.jpg',
                  productName: ' miu miu Heels',
                  price: '78.99',
                ),
                CustomContainer(
                  image: 'images/dior bag.jpg',
                  productName: 'Dior Gaucho saddle bag',
                  price: '95.50',
                ),
                CustomContainer(
                  image: 'images/to2.jpg',
                  productName: 'Vintag Brown Top',
                  price: '13.75',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
