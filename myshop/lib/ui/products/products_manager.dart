import 'package:flutter/foundation.dart';

import '../../models/product.dart';

class ProductsManager with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Cà Chua Xanh ',
      description: 'Loại Cà Chua Đến Từ Châu Âu Ngon Bổ rẻ!',
      price: 2.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/03/09/03/20/eggplant-400-08373800-1245207__340.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p2',
      title: 'Gạo ST-25',
      description: 'Gạo Ngôn Nhất Đến từ Việt Nam',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2019/02/15/03/28/rice-3997767__340.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Cà Rốt Đà Lạt',
      description: 'Đặt chất lượng Lên hàng đầu',
      price: 1.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/07/31/03/46/carrot-2556382__340.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Hành Tây',
      description: 'Ngon Bổ Rẻ.',
      price: 4.9,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/07/31/04/01/onion-2556407__340.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Củ Cải Đỏ',
      description: 'Ngon Bổ Rẻ.',
      price: 1.9,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/08/25/17/18/red-radish-1620106__340.jpg',
    ),
    Product(
      id: 'p4',
      title: 'dưa hấu long an',
      description: 'Ngon Bổ Rẻ.',
      price: 1.9,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/04/03/15/46/food-3287109__340.jpg',
    ),
  ];

  void addProduct(Product product) {
    _items.add(
      product.copyWith(
        id: 'p${DateTime.now().toIso8601String()}',
      ),
    );
    notifyListeners();
  }

  void updateProduct(Product product) {
    final index = _items.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      _items[index] = product;
      notifyListeners();
    }
  }

  void toggleFavoriteStatus(Product product) {
    final savedStatus = product.isFavorite;
    product.isFavorite = !savedStatus;
  }

  void deleteProduct(String id) {
    final index = _items.indexWhere((item) => item.id == id);
    _items.removeAt(index);
    notifyListeners();
  }

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }

  Product? findById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (error) {
      return null;
    }
  }
}
