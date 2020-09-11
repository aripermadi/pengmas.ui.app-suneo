part of 'latihan_bloc.dart';

abstract class LatihanEvent extends Equatable {}

class FetchLatihanEvent extends LatihanEvent {
  //final Materi materi;
  final int id;
  FetchLatihanEvent(this.id);
  @override
  List<Object> get props => null;
}
