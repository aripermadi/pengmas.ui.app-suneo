part of 'kategori_bloc.dart';

abstract class KategoriState extends Equatable {
  const KategoriState();
}

class KategoriInitial extends KategoriState {
  @override
  List<Object> get props => [];
}

class KategoriLoaded extends KategoriState {
  final List<Kategori> kategories;

  KategoriLoaded({this.kategories});

  @override
  List<Object> get props => [kategories];
}
