#!/bin/bash
# Fix the stupid GPG agent masking ssh-agent and not working while it does so,
# Bravo great job.

sudo mv /usr/bin/gnome-keyring-daemon /usr/bin/gnome-keyring-daemon-wrapped
cat > /usr/bin/gnome-keyring-daemon <<END
#!/bin/sh
exec /usr/bin/gnome-keyring-daemon-wrapped --components=pkcs11,secrets,gpg "$@"
END
sudo chmod +x /usr/bin/gnome-keyring-daemon

echo "You need to relog to finish the fix and propagate SSH_AUTH_SOCK"
