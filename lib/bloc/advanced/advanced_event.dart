part of 'advanced_bloc.dart';

sealed class AdvancedEvent extends Equatable {
  const AdvancedEvent();

  @override
  List<Object> get props => [];
}

//! show, add , update, delete CRUD

class ShowAdvancedEvent extends AdvancedEvent {}

class AddAdvancedEvent extends AdvancedEvent {
  final int a;
  final int b;

  const AddAdvancedEvent({required this.a, required this.b});
}

class UpdateAdvancedEvent extends AdvancedEvent {
  final String data;

  const UpdateAdvancedEvent({required this.data});

  @override
  List<Object> get props => [
        data,
      ];
}

class DeleteAdvancedEvent extends AdvancedEvent {
  final String id;

  const DeleteAdvancedEvent({required this.id});

  @override
  List<Object> get props => [
        id,
      ];
}
