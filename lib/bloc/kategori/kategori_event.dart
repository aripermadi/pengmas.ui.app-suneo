part of 'kategori_bloc.dart';

abstract class KategoriEvent extends Equatable {
  const KategoriEvent();
}

class FetchKategori extends KategoriEvent {
  @override
  List<Object> get props => [];
}
