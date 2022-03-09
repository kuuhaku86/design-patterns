<?php

interface IConnectionFactory {
    public function createRPCConnection();
    public function createHTTPConnection();
}