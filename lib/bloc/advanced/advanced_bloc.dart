import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/utils/utils.dart';

part 'advanced_event.dart';
part 'advanced_state.dart';

class AdvancedBloc extends Bloc<AdvancedEvent, AdvancedState> {
  AdvancedBloc() : super(AdvancedInitialState()) {
    on<ShowAdvancedEvent>(_handleShowAdvancedEvent);
    on<AddAdvancedEvent>(_handleAddAdvancedEvent);
    on<UpdateAdvancedEvent>(_handleUpdateAdvancedEvent);
    on<DeleteAdvancedEvent>(_handleDeleteAdvancedEvent);
  }

  FutureOr<void> _handleShowAdvancedEvent(
      ShowAdvancedEvent event, Emitter<AdvancedState> emit) async {
    emit(AdvancedLoadingState());
    await Future.delayed(const Duration(milliseconds: 1800));

    if (randomBoolean()) {
      return emit(
        const AdvancedErrorState(message: "something went wrong!"),
      );
    }

    return emit(
      AdvancedHasDataState(
        message: randomString(),
        status: "call success",
      ),
    );
  }

  FutureOr<void> _handleAddAdvancedEvent(
      AddAdvancedEvent event, Emitter<AdvancedState> emit) async {
    emit(AdvancedLoadingState());
    await Future.delayed(const Duration(milliseconds: 1800));

    int result = event.a + event.b;
    return emit(
      AdvancedHasDataState(
        message: "${event.a} + ${event.b} = $result",
        status: "add success",
      ),
    );
  }

  FutureOr<void> _handleUpdateAdvancedEvent(
      UpdateAdvancedEvent event, Emitter<AdvancedState> emit) async {
    emit(AdvancedLoadingState());
    await Future.delayed(const Duration(milliseconds: 1800));

    if (randomBoolean()) {
      return emit(
        const AdvancedErrorState(message: "something went wrong!"),
      );
    }

    String response = "\n ${randomString()} \n (${event.data})";

    return emit(
      AdvancedHasDataState(
        message: response,
        status: "update success",
      ),
    );
  }

  _handleDeleteAdvancedEvent(
      DeleteAdvancedEvent event, Emitter<AdvancedState> emit) async {
    emit(AdvancedLoadingState());
    await Future.delayed(const Duration(milliseconds: 1800));
    //todo handle logic
    if (randomBoolean()) {
      return emit(
        AdvancedErrorState(message: "delete ${event.id} fail"),
      );
    }

    return emit(
      AdvancedHasDataState(
        message: randomString(),
        status: "delete success",
      ),
    );
  }
}
