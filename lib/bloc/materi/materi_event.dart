part of 'materi_bloc.dart';

abstract class MateriEvent extends Equatable {}

class FetchMateriEvent extends MateriEvent {
  //final Materi materi;
  final int id;
  FetchMateriEvent(this.id);
  @override
  List<Object> get props => null;
}
