import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/utils/utils.dart';

class SimpleCubit extends Cubit<SimpleState> {
  SimpleCubit()
      : super(SimpleInitialState(count: 0, price: 0, message: "initial"));

  Future<void> increment() async {
    emit(
      SimpleLoadingState(
          count: state.count, price: state.price, message: "Loading. ."),
    );

    await Future.delayed(const Duration(milliseconds: 1800));

    //todo logic something
    final newCount = state.count + 1;
    final newPrice = state.price + 20.75;

    emit(SimpleHasDataState(
      count: newCount,
      price: newPrice,
      message: "HasData ${randomString()}",
    ));
  }
}

abstract class SimpleState {
  final int count;
  final double price;
  final String message;

  SimpleState(
      {required this.count, required this.price, required this.message});
}

class SimpleInitialState extends SimpleState {
  SimpleInitialState(
      {required super.count, required super.price, required super.message});
}

class SimpleLoadingState extends SimpleState {
  SimpleLoadingState(
      {required super.count, required super.price, required super.message});
}

class SimpleHasDataState extends SimpleState {
  SimpleHasDataState(
      {required super.count, required super.price, required super.message});
}
