import 'package:myshop/models/cart_item.dart';
import 'package:myshop/models/product.dart';

class CartManager{
  final Map<String , CartItem>_items={
    'p1': CartItem(id: 'c1', title: 'Red Shirt', quantity: 2, price: 29.99),
  };
  int get productCount{
    return _items.length;
  }
  List<CartItem>get Products {
    return _items.values.toList();

  }
  Iterable<MapEntry<String,CartItem>>get productEntries{
    return {..._items}.entries;

  }
  double get totalaAmount{
    var total = 0.0;
    _items.forEach((key, CartItem) {
      total += CartItem.price * CartItem.quantity;});
    return total;
  }

}