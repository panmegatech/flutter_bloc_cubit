import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/model/cart/cart_item.dart';
import 'package:flutter_bloc_cubit/utils/utils.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc()
      : super(
          const CartState(cartItem: [], totalPrice: 0, isLoading: false),
        ) {
    on<MockCartEvent>(_handleMockCartEvent);
    on<AddCartEvent>(_handleAddCartEvent);
    on<RemoveCartEvent>(_handleRemoveCartEvent);
    on<ClearCartEvent>(_handleClearCartEvent);
  }

  Future<FutureOr<void>> _handleMockCartEvent(
      MockCartEvent event, Emitter<CartState> emit) async {
    //todo loading. .
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 400));

    //todo logic something

    List<CartItem> cartItem = List.generate(
      10,
      (index) => randomCartItem(),
    ).toSet().toList();

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

  Future<void> _handleAddCartEvent(
      AddCartEvent event, Emitter<CartState> emit) async {
    //todo loading. .
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 400));

    //todo logic something

    List<CartItem> newCartItemList = [
      ...state.cartItem,
      event.cartItem,
    ];

    emit(state.copyWith(
      cartItem: newCartItemList,
      isLoading: false,
      totalPrice: _totalPrice(
        cartItem: newCartItemList,
      ),
    ));
  }

  FutureOr<void> _handleClearCartEvent(
      ClearCartEvent event, Emitter<CartState> emit) {
    emit(const CartState(totalPrice: 0, isLoading: false, cartItem: []));
  }

  FutureOr<void> _handleRemoveCartEvent(
      RemoveCartEvent event, Emitter<CartState> emit) async {
    //todo loading. .
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 400));

    //todo logic something

    List<CartItem> newCartItemList = state.cartItem
        .where(
          (element) => element.id != event.id,
        )
        .toList();

    emit(state.copyWith(
      cartItem: newCartItemList,
      isLoading: false,
      totalPrice: _totalPrice(
        cartItem: newCartItemList,
      ),
    ));
  }
}
