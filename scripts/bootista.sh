#!/bin/bash
PROJECT="Bootista"
PROJECT_ROOT="$HOME/Projects/$PROJECT"
FRONT_PROJECT_ROOT="$PROJECT_ROOT/front-end"
ADMIN_PROJECT_ROOT="$PROJECT_ROOT/admin"

if [ ! -d "$PROJECT_ROOT" ]
	then
		echo "$PROJECT project root folder $PROJECT_ROOT does not exists"
		exit -1
fi

if [ ! -d "$FRONT_PROJECT_ROOT" ]
	then
		echo "$PROJECT Front Project root folder $FRONT_PROJECT does not exists"
		exit -1
fi

if [ ! -d "$ADMIN_PROJECT_ROOT" ]
	then
		echo "$PROJECT Admin Project root folder $PHP_PROJECT_ROOT does not exists"
		exit -1
fi


cd "$FRONT_PROJECT_ROOT"
# Start a tmux session in detach mode to enable script to continue
tmux new-session -d -s $PROJECT

# Rename the window to `Front` (you're kidding ?!!)
tmux rename-window -t $PROJECT:0 'Front'

#------------
# API launch
#------------

cd "$ADMIN_PROJECT_ROOT"
# Create a new window for API
tmux new-window -n 'API'
# Select the API window to interact with it
tmux select-window -t $PROJECT:1
# Launch Vim in the window
tmux send-keys "vim" C-m

# Create and resize a sub pane
tmux split-window -h
tmux resize-pane -R 25
# Launch the Vagrant
tmux send-keys "vagrant up" C-m
# SSH the Vagrant virtual machine
tmux send-keys "vagrant ssh" C-m
tmux send-keys "cd Bootista/admin" C-m

# select the vim pane
tmux select-pane -t 0

#------------
# Front launch
#------------

cd "$FRONT_PROJECT_ROOT"
# Select the Front window to interact with it
tmux select-window -t $PROJECT:0

# Launch Vim in the window
tmux send-keys "vim" C-m

# Create and resize a sub pane
tmux split-window -v
tmux resize-pane -D 10

# Launch the React Native server
tmux send-keys "react-native start" C-m

# Create a horizontal pane in the sub-pane to run the ios simulator and get the hand back
tmux split-window -h
tmux send-keys "react-native run-ios" C-m

# Select the vim `main` pane
tmux select-pane -t 0

# Get ready to go
tmux attach -t $PROJECT