#!/bin/bash

echo ' __          __  _ _                   _            ' 
echo ' \ \        / / | | |                 | |           ' 
echo '  \ \  /\  / /__| | |_ ___  _ __    __| | _____   __' 
echo '   \ \/  \/ / _ \ | __/ _ \| '\''_ \  / _` |/ _ \ \ / /' 
echo '    \  /\  /  __/ | || (_) | | | || (_| |  __/\ V /'
echo '     \/  \/ \___|_|\__\___/|_| |_(_)__,_|\___| \_/'

echo '---------------------------------------------------------'

echo "Start entrypoint"
sleep 1

echo "Correcting mount point permissions"
chown -fR "$SINUS_USER":"$SINUS_GROUP" -R "$SINUS_DIR"
sleep 2

echo "Checking for yt-dlp updates"
$YTDLP_BIN -U
sleep 2

echo "Checking for server reset password in OVERRIDE_PASSWORD environment variable"
if [ -n "$OVERRIDE_PASSWORD" ]; then
    echo "Server reset password found, resetting password"
    sudo -u "$SINUS_USER" -g "$SINUS_GROUP" "$SINUS_DIR/sinusbot" --override-password="$OVERRIDE_PASSWORD"
else
    echo "starting sinusbot"
    sudo -u "$SINUS_USER" -g "$SINUS_GROUP" "$SINUS_DIR/sinusbot"
fi
