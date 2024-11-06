class Product {
  final String name;
  final String description;
  final double price;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  // Static method to provide a sample list of products
  static List<Product> sampleProducts() {
    return [
      Product(
        name: 'Cheese Burger',
        description: 'Hot Burger',
        price: 15.0,
        image: 'images/1.png',
      ),
      Product(
        name: 'Chicken Burger',
        description: 'Spicy Burger',
        price: 12.0,
        image: 'images/2.png',
      ),
      Product(
        name: 'Veggie Burger',
        description: 'Healthy Burger',
        price: 10.0,
        image: 'images/3.png',
      ),
      Product(
        name: 'Double Burger',
        description: 'Big Burger',
        price: 8.0,
        image: 'images/4.png',
      ),
    ];
  }
}
