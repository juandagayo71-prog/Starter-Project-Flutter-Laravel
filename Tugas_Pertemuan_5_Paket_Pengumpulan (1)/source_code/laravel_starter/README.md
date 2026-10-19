# Laravel Starter API — MVC

Kerangka awal Laravel API dengan model, controller API, request validation, resource, route API, dan migration. Business logic masih minimal sesuai instruksi tugas.

## Persyaratan
- PHP 8.2+
- Composer
- MySQL/MariaDB
- Ekstensi PHP yang dibutuhkan Laravel

## Instalasi
> Folder ini merupakan skeleton modular untuk dipindahkan/diintegrasikan ke instalasi Laravel bersih yang dibuat dengan Composer. Untuk kerangka Laravel lengkap, jalankan `composer create-project laravel/laravel laravel_app` lalu salin folder `app`, `routes`, dan `database` dari starter ini.

```bash
cp .env.example .env
composer install
php artisan key:generate
php artisan migrate
php artisan serve
```

Endpoint contoh: `GET /api/agenda` dan `POST /api/agenda`.
