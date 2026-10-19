# Flutter Starter — MVVM

Starter Flutter dengan pemisahan `app`, `data`, `presentation`, dan `utils`.

## Persyaratan
- Flutter SDK stabil
- Android Studio/VS Code atau perangkat/emulator
- Git

## Menjalankan
```bash
flutter pub get
flutter analyze
flutter run
```

## Struktur
- `lib/app/`: konfigurasi aplikasi dan tema
- `lib/data/`: model dan repository untuk akses data
- `lib/presentation/`: halaman, ViewModel, dan widget
- `lib/utils/`: konstanta
- `test/`: pengujian widget dasar

Aplikasi contoh menampilkan halaman dashboard starter dan belum memuat business logic lengkap, sesuai instruksi tugas.
