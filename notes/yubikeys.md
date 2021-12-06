# YubiKey notes

## generating resident ssh keys

	$ ssh-keygen -t ed25519-sk -a 100 -O resident -C "yubikey-$(date '+%F')-XXXXX844"
	Generating public/private ed25519-sk key pair.
	You may need to touch your authenticator to authorize key generation.
	Enter PIN for authenticator: 
	Enter file in which to save the key (/home/zzz/.ssh/id_ed25519_sk): id_yubi844_sk
	Enter passphrase (empty for no passphrase): 
	Enter same passphrase again: 
	Your identification has been saved in id_yubi844_sk
	Your public key has been saved in id_yubi844_sk.pub
	The key fingerprint is: [...]

Where `XXXXX844` is the ID of my YubiKey (it's on the back of they key itself).  
I saved my identity to id_yubi844_sk just so i know which identities are for which keys.  

## sshd

To require it for logging in via sshd, I setup sshd to require _two_ public keys. In sshd_config:

	AuthorizationMethods publickey,publickey

Where one will be my yubikey, the other will be the one stored on the machine.

In my personal `.ssh/config`:

	Host someserver
		HostName 100.0.0.1
		IdentityFile ~/.ssh/id_yubi844_sk

