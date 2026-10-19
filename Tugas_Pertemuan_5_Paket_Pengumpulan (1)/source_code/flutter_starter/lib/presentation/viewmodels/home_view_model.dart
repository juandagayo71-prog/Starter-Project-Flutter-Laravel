import 'package:flutter/foundation.dart';
import '../../data/models/agenda_item.dart';
import '../../data/repositories/agenda_repository.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({AgendaRepository? repository})
      : _repository = repository ?? AgendaRepository();

  final AgendaRepository _repository;
  List<AgendaItem> agenda = const [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> loadAgenda() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();
    try {
      agenda = await _repository.getAgenda();
    } catch (_) {
      errorMessage = 'Agenda belum dapat dimuat.';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
