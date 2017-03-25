export WALKER_PUBLIC_DOMAIN="{{ovrclk.publicdomain}}"
export WALKER_PUBLIC_HOSTNAME="local.$WALKER_PUBLIC_DOMAIN"
export WALKER_DEVPOD=1

export OTS_VERSION="{{ovrclk.ots.version}}"
export OTS_CHANNEL="{{ovrclk.ots.channel}}"

export OTS_REGISTRY_TOKEN="{{ots_registry_token}}"

export OVRCLK_HOME="$GOPATH/src/github.com/ovrclk"
export WALKER_HOME="$OVRCLK_HOME/walker/_support"
export OVRCLK_EXAMPLE_HOME="$WALKER_HOME/ovrclk-examples"

export PATH="$WALKER_HOME/bin:$PATH"
export PATH="$WALKER_HOME/contrib:$PATH"
export PATH="$OVRCLK_HOME/ots/_support/bin:$PATH"
export PATH="$OVRCLK_HOME/cli/_support/bin:$PATH"
export PATH="$OVRCLK_HOME/walker-integration:$PATH"

if [ "$(uname)" != "Darwin" ]; then
  export WALKER_BOX_DEFAULT_PROVIDER=virtualbox
fi

alias cdo="cd $OVRCLK_HOME"
alias cdw="cd $OVRCLK_HOME/walker"
alias cdots="cd $OVRCLK_HOME/ots"
alias cdocli="cd $OVRCLK_HOME/cli"
alias cdoapi="cd $OVRCLK_HOME/api"
alias cdwh="cd $WALKER_HOME"
