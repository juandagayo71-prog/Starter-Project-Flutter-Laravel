# Arsitektur Laravel (MVC + API)

## Komponen
- **Route** (`routes/api.php`): memetakan URL dan HTTP method ke controller.
- **Request** (`StoreAgendaRequest`): validasi input.
- **Controller** (`AgendaController`): menerima request dan mengatur alur aplikasi.
- **Model** (`Agenda`): representasi tabel `agendas` menggunakan Eloquent.
- **Resource** (`AgendaResource`): format JSON untuk respons API.
- **Migration**: definisi struktur tabel database.

## Alur GET /api/agenda
1. Client mengirim `GET /api/agenda`.
2. Route mengarahkan request ke `AgendaController@index`.
3. Controller membaca data melalui model `Agenda`.
4. `AgendaResource` membentuk respons JSON.
5. Client menerima objek JSON berisi `data`.

## Alur POST /api/agenda
1. Client mengirim JSON agenda.
2. `StoreAgendaRequest` memvalidasi judul, tanggal, deskripsi, dan status.
3. Controller menyimpan data melalui `Agenda::create`.
4. Resource mengembalikan agenda yang berhasil dibuat.

```text
Client -> API Route -> Controller -> Model -> Database
                     -> Request validation
Client <- JSON Resource <- Controller
```
