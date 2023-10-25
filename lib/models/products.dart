class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  // final int purchase_count;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    // required this.purchase_count,
  });
}

// Create a list of products
List<Product> products = [
  Product(
    id: '1',
    name: 'Chair',
    description: 'Description for Product 1',
    price: 1500,
    imageUrl: 'assets/images/chair.jpg',
    // purchase_count: 50,
  ),
  Product(
    id: '2',
    name: 'Bag',
    description: 'Description for Product 2',
    price: 1000,
    imageUrl: 'assets/images/bag.jpg',
    // purchase_count: 250,
  ),
  Product(
    id: '3',
    name: 'phone',
    description: 'Description for Product 2',
    price: 30000,
    imageUrl: 'assets/images/Phone.jpg',
    // purchase_count: 200,
  ),
  Product(
    id: '4',
    name: 'shoes',
    description: 'Description for Product 2',
    price: 1000,
    imageUrl: 'assets/images/shoes.jpg',
    // purchase_count: 122,
  ),
  Product(
    id: '5',
    name: 'Chair',
    description: 'Description for Product 1',
    price: 1500,
    imageUrl: 'assets/images/chair.jpg',
    // purchase_count: 50,
  ),
  Product(
    id: '6',
    name: 'Bag',
    description: 'Description for Product 2',
    price: 1000,
    imageUrl: 'assets/images/bag.jpg',
    // purchase_count: 250,
  ),
  Product(
    id: '7',
    name: 'phone',
    description: 'Description for Product 2',
    price: 30000,
    imageUrl: 'assets/images/Phone.jpg',
    // purchase_count: 200,
  ),
  Product(
    id: '8',
    name: 'shoes',
    description: 'Description for Product 2',
    price: 1000,
    imageUrl: 'assets/images/shoes.jpg',
    // purchase_count: 122,
  ),
];
