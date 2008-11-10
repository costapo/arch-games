#!/bin/sh
ext=x86; [ "$CARCH" = 'x86_64' ] && ext=x86_64

if [ ! -r "$HOME/.tremulous/base/vm/game.qvm" ]; then
	echo "Cannot find game.qvm -- linking to installed version."
	if [ ! -d "$HOME/.tremulous/base/vm" ]; then
		mkdir -p "$HOME/.tremulous/base/vm/" || exit 1
	fi
	ln -s /opt/tremulous/game.qvm "$HOME/.tremulous/base/vm/game.qvm" || exit 1
fi

cd /opt/tremulous/
./tremulous.$ext "$@"
