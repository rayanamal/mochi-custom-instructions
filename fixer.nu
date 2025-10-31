#!/usr/bin/env nu

def main [file: path] {
    open $file
    | str replace --all --multiline '^---\s*$' '---'
    | str replace --all '```' ''
    | str replace --all --multiline '^\s*\r?\n///\s*\r?\n\s*\r?$' '///'
    | collect
    | save -f $file
}
