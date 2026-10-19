<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreAgendaRequest;
use App\Http\Resources\AgendaResource;
use App\Models\Agenda;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class AgendaController extends Controller
{
    public function index(): AnonymousResourceCollection
    {
        return AgendaResource::collection(Agenda::query()->latest()->get());
    }

    public function store(StoreAgendaRequest $request): AgendaResource
    {
        $agenda = Agenda::create($request->validated());
        return new AgendaResource($agenda);
    }

    public function show(Agenda $agenda): AgendaResource
    {
        return new AgendaResource($agenda);
    }
}
