complete -xc spin -d "Background job spinner" -a "\t"
complete -c spin -s s -l style -d "Use <string> to slice the spinner characters"
complete -c spin -s f -l format -d "Use <format> to customize the spinner display"
complete -c spin -l error -d "Write errors to <file>"
complete -c spin -s h -l help -d "Show usage help"