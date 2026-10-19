import '../models/agenda_item.dart';

/// Data source sementara untuk menunjukkan pemisahan layer.
/// Ganti implementasi ini dengan API Laravel saat endpoint tersedia.
class AgendaRepository {
  Future<List<AgendaItem>> getAgenda() async {
    return const [
      AgendaItem(
        id: 1,
        title: 'Rapat koordinasi',
        description: 'Contoh agenda untuk starter project',
        dateLabel: '20 Okt 2026',
      ),
      AgendaItem(
        id: 2,
        title: 'Pengumpulan tugas',
        description: 'Contoh agenda akademik',
        dateLabel: '22 Okt 2026',
      ),
    ];
  }
}
