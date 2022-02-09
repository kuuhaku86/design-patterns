<?php

class Request {
    private bool $authenticated;
    private bool $authorized;
    private string $route;

    function __construct(bool $authenticated, bool $authorized, string $route) {
        $this->authenticated = $authenticated;
        $this->authorized = $authorized;
        $this->route = $route;
    }

    function is_authenticated(){
        return $this->authenticated;
    }

    function is_authorized(){
        return $this->authorized;
    }

    function get_route() {
        return $this->route;
    }
}