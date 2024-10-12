import 'package:equatable/equatable.dart';

class CartItem extends Equatable {
  final String name;
  final String id;
  final double price;
  final int quantity;

  const CartItem({
    required this.name,
    required this.price,
    required this.quantity,
    required this.id,
  });

  @override
  List<Object?> get props => [
        name,
        id,
        price,
        quantity,
      ];
}
