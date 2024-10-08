import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/utils/utils.dart';

part 'standard_state.dart';

class StandardCubit extends Cubit<StandardState> {
  StandardCubit() : super(StandardInitialState());

  Future<void> callAPI() async {
    emit(StandardLoadingState());
    await Future.delayed(const Duration(milliseconds: 1800));
    final someMessage = randomString();
    final int randomNumber = int.parse(randomString(onlyNumber: true));

    return emit(StandardHasDataState(
      message: someMessage,
      mooDeng: MooDeng(randomNumber),
    ));
  }
}
