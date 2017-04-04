#!/bin/bash
REACT_NATIVE_ROOT="$HOME/Projects/javascript/react-native"
PHP_ROOT="$HOME/Projects/php"
PROJECT="Bootista"
FRONT_PROJECT_ROOT="$REACT_NATIVE_ROOT/$PROJECT"
PHP_PROJECT_ROOT="$PHP_ROOT/$PROJECT"

if [ ! -d "$REACT_NATIVE_ROOT" ]
	then
		echo "React Native root folder $REACT_NATIVE_ROOT does not exists"
		exit -1
fi

if [ ! -d "$REACT_NATIVE_ROOT" ]
	then
		echo "PHP root folder $PHP_ROOT does not exists"
		exit -1
fi

if [ ! -d "$FRONT_PROJECT_ROOT" ]
	then
		echo "Front Project root folder $FRONT_PROJECT does not exists"
		exit -1
fi

if [ ! -d "$PHP_PROJECT_ROOT" ]
	then
		echo "PHP Project root folder $PHP_PROJECT_ROOT does not exists"
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

cd "$PHP_PROJECT_ROOT"
# Create a new window for API
tmux new-window -n 'API'
# Select the API window to interact with it
tmux select-window -t $PROJECT:1
# Launch Vim in the window
tmux send-keys "vim" C-m

# Create and resize a sub pane
tmux split-window -v
tmux resize-pane -D 10
# Launch the Vagrant
tmux send-keys "vagrant up" C-m
# SSH the Vagrant virtual machine
tmux send-keys "vagrant ssh" C-m
tmux send-keys "cd Bootista" C-m

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