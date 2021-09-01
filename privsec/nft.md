# NFT

NOT Non-Fungible Tokens you crypto maniac. I mean the Linux packet-filter/firewall `nftables`.  
Following is a cheatsheet, code snippets, whatever you want to call it for `nft`.

## Enabling

```
# systemctl enable nftables
# systemctl start nftables
# systemctl status nftables
```

## Inbound rule template

```
flush ruleset
table inet filter {
	chain input {
		type filter hook input priority 0; policy drop;

		# keep related+established;
		# drop invalid
		ct state vmap {
			established: accept,
			related: accept,
			invalid: drop
		}

		# always accept loopback
		iifname lo accept

		# allow incoming on port 22,80,443
		tcp dport { 22, 80, 443 } accept;
	}
	chain forward {
		# can be 'policy drop;' in most cases
		type filter hook forward priority 0;
	}
	chain output {
		type filter hook output priority 0;
	}
}
```

## Links

- [Simple ruleset for a server - nftables wiki](https://wiki.nftables.org/wiki-nftables/index.php/Simple_ruleset_for_a_server)  
- [Setting up nftables Firewall](https://cryptsus.com/blog/setting-up-nftables-firewall.html)
