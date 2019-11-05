ARTIFACTORY_USER="{{artifactory_user}}"
ARTIFACTORY_APIKEY="{{artifactory_apikey}}"

wego(){
  case "$1" in
    on)
      export GO111MODULE=on
      export GOPROXY="https://${ARTIFACTORY_USER}:${ARTIFACTORY_APIKEY}@wework.jfrog.io/wework/api/go/go,direct"
      export GOPRIVATE="github.com/weconnect,github.com/WeConnect"
      export GONOPROXY=none
      ;;
    off)
      unset GO111MODULE
      unset GOPROXY
      unset GOPRIVATE
      unset GONOPROXY
      ;;
    *)
      echo "usage: $0 <on|off>" 2>&1
      1
  esac
}

wego on
