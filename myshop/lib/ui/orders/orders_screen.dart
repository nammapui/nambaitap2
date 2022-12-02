// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:myshop/ui/orders/orders_manager.dart';
import '../orders/oder_item_card.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});
  //static const RoutName = '/order';
  @override
  Widget build(BuildContext context) {
    print('building orders');
    final ordersManager = OrdersManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      body: ListView.builder(
        itemCount: ordersManager.orderCount,
        itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
      ),
    );
  }
}
