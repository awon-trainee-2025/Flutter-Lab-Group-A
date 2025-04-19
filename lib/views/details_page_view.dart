import 'package:flutter/material.dart';

class DetailsPageView extends StatelessWidget {
  const DetailsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppBar(
            title: Text('Details'),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite_rounded),
                color: Colors.black,
                onPressed: () {},
              ),
            ],
          ),

          Image(image: AssetImage('images/christia dior glasses.jpg')),
          SizedBox(height: 10),

          Text(
            'Christian Dior Vintage Glasses',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'authentic Christian Dior vintage eyeglasses, oversized frames feature a bold, gradient amber-to-olive colorway with soft curves and faceted edges that add both structure and flair. The lenses are clear (non-prescription), making them perfect for styling as-is or customizing with your prescription.\nBrand: Christian Dior\nEra: Vintage (likely 1970s–1980s)\nColor: Amber / Olive gradient\nFrame Material: High-quality acetate\nMade in: Germany\nCondition: Excellent vintage condition with minimal wear\nWhether you\'re channeling a retro look or elevating a modern wardrobe, these Dior glasses are an iconic accessory for the fashion-forward.',
            ),
          ),

          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 35),
              Text(
                '\$ 46.99',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 175),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size(100, 40),
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {},
                child: Text('Buy Now', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
