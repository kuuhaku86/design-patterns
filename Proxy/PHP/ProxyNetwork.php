<?php

require_once "INetwork.php";

class ProxyNetwork implements INetwork {
    private INetwork $network;
    private $bannedSites = [
        "abc.com",
        "xyz.com"
    ];

    public function __construct(INetwork $network)
    {
        $this->network = $network;
    }

    public function connect(string $sites) {
        if (in_array($sites, $this->bannedSites)) {
            echo "Sites " . $sites . " Blocked\n";
            return;
        }

        $this->network->connect($sites);
    }
}