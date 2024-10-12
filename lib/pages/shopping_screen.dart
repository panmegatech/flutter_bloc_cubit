import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/bloc/cart/cart_bloc.dart';
import 'package:flutter_bloc_cubit/utils/utils.dart';
import 'package:flutter_bloc_cubit/widgets/custom_floating_action_button.dart';
import 'package:flutter_bloc_cubit/widgets/custom_scaffold.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "ShoppingScreen",
      customFloatingActionButton: [
        CustomFloatingActionButton(
          name: "mock",
          onPressed: () {
            log("mock");
            context.read<CartBloc>().add(MockCartEvent());
          },
        ),
        CustomFloatingActionButton(
          name: "Add+",
          onPressed: () {
            log("add cart");

            log("add cart");
            context.read<CartBloc>().add(AddCartEvent(
                  cartItem: randomCartItem(),
                ));
          },
        ),
        CustomFloatingActionButton(
          name: "Clear",
          onPressed: () {
            log("clear!");

            context.read<CartBloc>().add(ClearCartEvent());
          },
        ),
      ],
      children: [
        BlocConsumer<CartBloc, CartState>(
          listener: (context, state) {
            // todo implement listener
            log("state : $state");
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const CircularProgressIndicator();
            }

            if (state.cartItem.isEmpty) {
              return const CustomText("Your cart is empty.");
            }

            return Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: ListView.builder(
                      itemCount: state.cartItem.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: CustomText(state.cartItem[index].name),
                          subtitle: Text(
                              'price: ${state.cartItem[index].price} x ${state.cartItem[index].quantity}'),
                          trailing: IconButton(
                              onPressed: () {
                                log("remove cart");
                                context.read<CartBloc>().add(RemoveCartEvent(
                                    id: state.cartItem[index].id));
                              },
                              icon: const Icon(Icons.remove_shopping_cart)),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CustomText(
                      'Total \$${state.totalPrice}',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
