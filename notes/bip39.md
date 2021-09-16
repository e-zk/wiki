# Notes on: BIP39 and Mnumonic Seeds

xmrwallet and electrum don't use BIP39 for a few reasons:

- https://en.bitcoin.it/wiki/Seed_phrase#BIP39_and_its_flaws
- https://electrum.readthedocs.io/en/latest/seedphrase.html#description

xmrwallet does [this](https://github.com/m2049r/xmrwallet/blob/24fc27b09e3158d0e67ee145c1f8ab8f657d2746/app/src/main/java/com/m2049r/xmrwallet/util/ledger/Monero.java#L158) to make the seed: 

        SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2withHmacSHA512");
        KeySpec spec = new PBEKeySpec(NKFDchars(mnemonic), NKFDbytes("mnemonic" + passphrase), 2048, 512);

Java's PBEKeySpec uses PKCS#5 (RFC2898) aka PBKDF{1,2} not sure which, I assume PBKDF2

(for implementing this in go this can be found in /x/crypto: https://pkg.go.dev/golang.org/x/crypto/pbkdf2) they use SHA512

Electrum mnumonic generation code here: https://github.com/spesmilo/electrum/blob/3.3.8/electrum/mnemonic.py#L163
Seedvault uses plain BIP39: https://github.com/seedvault-app/seedvault/search?q=seed
