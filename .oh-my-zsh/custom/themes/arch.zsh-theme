build_prompt(){
	echo -n "%F{blue}╭─[ %n@arch ]──[ %~ ]\n╰──  \033[0m"
}

PROMPT=$(build_prompt)
RPROMPT='%(?.%F{green}.%F{red} %?)'
setopt transientrprompt
