<?php

namespace Tests\Feature;

use PHPUnit\Framework\Attributes\Test;
use Tests\TestCase;

class AgendaApiTest extends TestCase
{
    #[Test]
    public function agenda_endpoint_returns_json(): void
    {
        $response = $this->getJson('/api/agenda');
        $response->assertSuccessful();
        $response->assertJsonStructure(['data']);
    }
}
