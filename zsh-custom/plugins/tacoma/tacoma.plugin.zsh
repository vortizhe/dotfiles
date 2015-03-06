#compdef tacoma
#autoload

local -a tacoma_env

_tacoma() {
  tacoma_env=(`tacoma list`)
  compadd -a tacoma_env
}
compdef _tacoma tacoma
