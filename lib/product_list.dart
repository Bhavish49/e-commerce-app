import 'dart:ui';

class Product{
  final String name;
  final String price;
  final String? oldPrice;
  final String image;
  final Color background;
  const Product({
    required this.background,
    required this.name,
    required this.image,
    required this.price,
    this.oldPrice
});
}


final List<Product> hotDeals = const [
  Product(
    name: "Men's Shoes",
    price: '\$120',
    oldPrice: '\$160',
    image:
    'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400',
    background: Color(0xFFD8EEEE),
  ),
  Product(
    name: 'Leather Bag',
    price: '\$102',
    oldPrice: '\$120',
    image:
    'https://images.unsplash.com/photo-1584917865442-de89df76afd3?w=400',
    background: Color(0xFFFFE1E3),
  ),
  Product(
    name: "Wallet for Men's",
    price: '\$85',
    oldPrice: '\$95',
    image:
    'https://images.unsplash.com/photo-1627123424574-724758594e93?w=400',
    background: Color(0xFFB9D9EE),
  ),
];

final List<Product> weeklyTop = const [
  Product(
    name: 'Watch',
    price: '\$250',
    image:
    'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
    background: Color(0xFFE7E7E7),
  ),
  Product(
    name: 'WiFi Speakers',
    price: '\$625',
    image:
    'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=400',
    background: Color(0xFFFFC17B),
  ),
  Product(
    name: 'T-Shirt Unisex',
    price: '\$20',
    image:
    'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400',
    background: Color(0xFFF1F1F1),
  ),
];

final List<Product> trendy = const [
  Product(
    name: 'Sneakers',
    price: '\$95',
    image:
    'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400',
    background: Color(0xFFD5E8F2),
  ),
  Product(
    name: 'Headphones',
    price: '\$150',
    image:
    'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
    background: Color(0xFFE1E9DF),
  ),
  Product(
    name: 'Accessories',
    price: '\$65',
    image:
    'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
    background: Color(0xFFD9E9F2),
  ),
];