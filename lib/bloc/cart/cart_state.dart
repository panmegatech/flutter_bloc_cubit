part of 'cart_bloc.dart';

class CartState extends Equatable {
  const CartState({
    required this.totalPrice,
    required this.isLoading,
    required this.cartItem,
  });

  final List<CartItem> cartItem;
  final double totalPrice;
  final bool isLoading;

  @override
  List<Object?> get props => [
        totalPrice,
        isLoading,
      ];

  CartState copyWith({
    List<CartItem>? cartItem,
    double? totalPrice,
    bool? isLoading,
  }) {
    return CartState(
      cartItem: cartItem ?? this.cartItem,
      isLoading: isLoading ?? this.isLoading,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }
}
