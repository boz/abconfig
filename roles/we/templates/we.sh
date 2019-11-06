ARTIFACTORY_USER="{{artifactory_user}}"
ARTIFACTORY_APIKEY="{{artifactory_apikey}}"

__wego_state=off

wego(){
  case "${1:-status}" in
    on)
      [ "$__wego_state" == "on" ] && return
      export GO111MODULE=on
      export GOPROXY="https://${ARTIFACTORY_USER}:${ARTIFACTORY_APIKEY}@wework.jfrog.io/wework/api/go/go,direct"
      export GOPRIVATE="github.com/weconnect,github.com/WeConnect"
      export GONOPROXY=none
      __wego_state=on
      ;;
    off)
      [ "$__wego_state" == "off" ] && return
      unset GO111MODULE
      unset GOPROXY
      unset GOPRIVATE
      unset GONOPROXY
      __wego_state=off
      ;;
    status)
      echo "$__wego_state"
      ;;
    *)
      echo "usage: wego [on|off]" 2>&1
      1
  esac
}

if test -v ZSH_VERSION; then
  __auto_wego(){
    if git remote get-url origin 2>/dev/null | grep -i 'weconnect' >/dev/null ; then
      wego on
    else
      wego off
    fi
  }
  add-zsh-hook chpwd __auto_wego
fi
