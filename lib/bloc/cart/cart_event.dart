part of 'cart_bloc.dart';

sealed class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class MockCartEvent extends CartEvent {}

class AddCartEvent extends CartEvent {
  final CartItem cartItem;

  const AddCartEvent({required this.cartItem});

  @override
  List<Object> get props => [
        cartItem,
      ];
}

class RemoveCartEvent extends CartEvent {
  final String id;

  const RemoveCartEvent({required this.id});

  @override
  List<Object> get props => [
        id,
      ];
}

class ClearCartEvent extends CartEvent {}
