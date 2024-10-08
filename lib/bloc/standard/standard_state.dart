part of 'standard_cubit.dart';

sealed class StandardState extends Equatable {
  const StandardState();

  @override
  List<Object?> get props => [];
}

final class StandardInitialState extends StandardState {}

final class StandardLoadingState extends StandardState {}

final class StandardHasDataState extends StandardState {
  final String message;
  final MooDeng? mooDeng;

  const StandardHasDataState({required this.message, this.mooDeng});
  @override
  List<Object?> get props => [
        message,
        mooDeng,
      ];
}

class MooDeng extends Equatable {
  final int data;

  const MooDeng(this.data);

  @override
  List<Object?> get props => [data];
}
