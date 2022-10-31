status --is-interactive; and rbenv init - fish | source
if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/findutils/libexec/grep:$PATH"
export AWS_PROFILE=last9-dev-terraform-user
