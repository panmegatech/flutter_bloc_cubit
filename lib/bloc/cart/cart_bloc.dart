import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/model/cart/cart_item.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc()
      : super(
          const CartState(cartItem: [], totalPrice: 0, isLoading: false),
        ) {
    on<ShowCartEvent>(_handleShowCartEvent);
    on<AddCartEvent>((event, emit) {
      //todo Add cart
    });
    on<RemoveCartEvent>((event, emit) {
      //todo Remove cart by id
    });
    on<ClearCartEvent>((event, emit) {
      //todo clear or reset cart
    });
  }

  Future<FutureOr<void>> _handleShowCartEvent(
      ShowCartEvent event, Emitter<CartState> emit) async {
    //todo loading. .
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 400));

    //todo logic something

    const List<CartItem> cartItem = [
      CartItem(name: "apple", price: 20, quantity: 1),
      CartItem(name: "banana", price: 30, quantity: 2),
      CartItem(name: "carrot", price: 40, quantity: 3),
    ];

    emit(state.copyWith(
      cartItem: cartItem,
      isLoading: false,
      totalPrice: _totalPrice(
        cartItem: cartItem,
      ),
    ));
  }

  double _totalPrice({required List<CartItem> cartItem}) {
    return cartItem.fold(
      0,
      (previousValue, element) {
        return previousValue + (element.price * element.quantity);
      },
    );
  }
}
