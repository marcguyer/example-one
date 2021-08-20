<?php

namespace AppTest;

use PHPUnit\Framework\TestCase;

class IndexTest extends TestCase
{
    public function testHelloWorld()
    {
        $this->expectOutputString('Hello world!');
        require(__DIR__ . '/../public/index.php');
    }
}
