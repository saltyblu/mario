if [[ ! -o interactive ]]; then
    return
fi

compctl -K _mario mario

_mario() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(mario commands)"
  else
    completions="$(mario completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
