<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AgendaController;

Route::get('/agenda', [AgendaController::class, 'index']);
Route::post('/agenda', [AgendaController::class, 'store']);
Route::get('/agenda/{agenda}', [AgendaController::class, 'show']);
