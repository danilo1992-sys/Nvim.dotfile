fnm env --use-on-cd --shell fish | source 

# fnm
set FNM_PATH "/home/danilo/.local/share/fnm"
if [ -d "$FNM_PATH" ]
  set PATH "$FNM_PATH" $PATH
  fnm env | source
end
