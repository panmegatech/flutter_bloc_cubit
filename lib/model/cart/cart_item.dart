import 'package:equatable/equatable.dart';

class CartItem extends Equatable {
  final String name;
  final double price;
  final int quantity;

  const CartItem(
      {required this.name, required this.price, required this.quantity});

  @override
  List<Object?> get props => [
        name,
        price,
        quantity,
      ];
}
