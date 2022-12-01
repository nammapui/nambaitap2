import 'package:flutter/foundation.dart';
import 'package:myshop/models/cart_item.dart';
import 'package:myshop/models/oder_item.dart';
class OrdersManager with ChangeNotifier{
final List<OrderItem> _orders = [
OrderItem(
id: '01',
amount: 59.98,
products: [
CartItem(
id: 'c1',
title: 'Red Shirt',
price: 29.99,
quantity: 2,)
],
dateTime:DateTime.now(),
)];
int get orderCount {
return _orders.length;
}
List<OrderItem> get orders {
return [..._orders];
}
}