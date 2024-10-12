part of 'cart_bloc.dart';

sealed class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class ShowCartEvent extends CartEvent {}

class AddCartEvent extends CartEvent {}

class RemoveCartEvent extends CartEvent {}

class ClearCartEvent extends CartEvent {}
