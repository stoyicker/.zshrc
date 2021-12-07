# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

export ZSH_CUSTOM=$ZSH/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git adb docker repo gcloud docker-compose)

DEFAULT_USER=$USER

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='nano'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cgrep="grep --color=ALWAYS"
alias fcgrep="fgrep --color=ALWAYS"

mvc() {
  mkdir -p "$(dirname "$2")"
  mv "$1" "$2"
}

cpc() {
  mkdir -p "$(dirname "$2")"
  cp "$1" "$2"
}

adb_set-anim() {
  adb shell settings put global window_animation_scale $1 && \
  adb shell settings put global transition_animation_scale $1 && \
  adb shell settings put global animator_duration_scale $1
}

adb_set-layout-borders() {
  adb shell setprop debug.layout $1 && \
  adb shell service call activity 1599295570 > /dev/null
}

alias pidcat="python ~/bin/pidcat.py"

PATH="$PATH/"

export JAVA_HOME="~/.sdkman/candidates/java/current/jre"
PATH="$JAVA_HOME/bin:$PATH"

export ANDROID_HOME="$(readlink -f ~/Android/Sdk)"
PATH="$ANDROID_HOME/tools:$PATH"
PATH="$ANDROID_HOME/tools/bin:$PATH"
PATH="$ANDROID_HOME/platform-tools:$PATH"

# export ANDROID_NDK_HOME="$ANDROID_HOME/ndk-bundle"
export ANDROID_NDK_HOME=

# Make Gradle less annoying
JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'
