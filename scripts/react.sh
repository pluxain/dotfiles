#!/bin/bash
REACT_ROOT="$HOME/Projects/javascript/react"
PROJECT=$1
PROJECT_ROOT="$REACT_ROOT/$PROJECT"

if [ ! -d "$REACT_ROOT" ]
	then
		echo "React root folder $REACT_ROOT does not exists"
		exit -1
fi

if [ "$PROJECT" = '' ]
	then
		echo 'You must specify a project'
		exit -1
fi

if [ ! -d "$PROJECT_ROOT" ]
	then
		echo "Project root folder $PROJECT_ROOT does not exists"
		exit -1
fi

cd "$PROJECT_ROOT";
# Start a tmux session in detach mode to enable script to continue
tmux new-session -d -s $PROJECT

# Rename the window to `dev` (you're kidding ?!!)
tmux rename-window -t $PROJECT:0 'dev'

# Select the window to interact with it
tmux select-window -t $PROJECT:0

# Launch Vim in the window
tmux send-keys "vim" C-m

# Create and resize a sub pane
tmux split-window -v
tmux resize-pane -D 10

# Launch the tests
tmux send-keys "yarnpkg test" C-m

# Create a horizontal pane in the sub-pane to run the server
tmux split-window -h
tmux resize-pan -R 20
tmux send-keys "yarnpkg start" C-m

# Add a small pane under the server to have a terminal prompt (install dependencies, etc.)
tmux split-window -v
tmux resize-pane -D 5

# Select the vim `main` pane
tmux select-pane -t 0

# Get ready to go
tmux attach -t $PROJECT