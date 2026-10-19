# Arsitektur Flutter (MVVM)

## Struktur modul
- **app**: konfigurasi MaterialApp dan tema global.
- **data/models**: representasi data agenda.
- **data/repositories**: abstraksi sumber data.
- **presentation/pages**: UI / View yang menampilkan data.
- **presentation/viewmodels**: state dan alur tampilan.
- **utils**: konstanta bersama.

## Alur data
1. `HomePage` meminta data melalui `HomeViewModel.loadAgenda()`.
2. ViewModel mengubah status `isLoading`, memanggil `AgendaRepository`.
3. Repository mengembalikan data contoh sebagai `AgendaItem`.
4. ViewModel memperbarui state dan memberi notifikasi ke View.
5. View membangun ulang daftar agenda.

## Prinsip pemisahan tanggung jawab
UI tidak menyimpan aturan akses data; repository mengabstraksi data; ViewModel mengelola state tampilan. Integrasi API Laravel dapat dilakukan dengan mengganti implementasi repository.

```text
HomePage (View)
    | calls
    v
HomeViewModel
    | requests data
    v
AgendaRepository
    | returns
    v
AgendaItem (Model)
```
