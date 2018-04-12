#!/bin/bash
# Automatically restart all tmux sessions on a reboot and restart
# whatever process was running inside them.
# 
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

# Start the tmux sessions
tmux new-session -d -s bungeecord
tmux new-session -d -s saikban
tmux new-session -d -s supybot
tmux new-session -d -s workflow

# Restart the processes
tmux send-keys -t bungeecord "cd ~/servers/bungeecord && ./start.sh" Enter
tmux send-keys -t saikban "cd ~/servers/saikban-web && ./start.sh" Enter
tmux send-keys -t supybot "supybot ~/limnoria/fanshawe/Fanshawe.conf" Enter
tmux send-keys -t workflow "echo Hello there! And welcome back!" Enter
