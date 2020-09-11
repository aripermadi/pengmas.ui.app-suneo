import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project1/models/models.dart';
import 'package:project1/services/services.dart';

part 'kategori_event.dart';
part 'kategori_state.dart';

class KategoriBloc extends Bloc<KategoriEvent, KategoriState> {
  // KategoriBloc() : super(KategoriInitial());
  @override
  KategoriState get initialState => KategoriInitial();

  @override
  Stream<KategoriState> mapEventToState(
    KategoriEvent event,
  ) async* {
    if (event is FetchKategori) {
      List<Kategori> kategories =
          await KategoriServices.getKategoris('kategoris');

      yield KategoriLoaded(kategories: kategories);
    }
  }
}
