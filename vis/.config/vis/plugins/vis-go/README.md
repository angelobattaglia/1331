# vis-go

A [Go](https://golang.org/) plugin for [Vis](https://github.com/martanne/vis) editor.

# Installation

### Install required tools
```
go install github.com/rogpeppe/godef
go install golang.org/x/tools/cmd/gorename
```

### Install vis-go

`git clone https://gitlab.com/timoha/vis-go "$HOME/.config/vis/vis-go"`

Then add `require('vis-go/vis-go')` to your `visrc.lua`.

### Update vis-go

`git -C "$HOME/.config/vis/vis-go" pull`

# Usage

## [gofmt](https://golang.org/cmd/gofmt/) or [goimports](https://godoc.org/golang.org/x/tools/cmd/goimports)

On save, go code is automatically formatted with [gofmt](https://golang.org/cmd/gofmt/).
If you would like to use [goimports](https://godoc.org/golang.org/x/tools/cmd/goimports), which also updates import lines, add `set go_fmt_binary goimports` option to your `visrc.lua`.

## [godef](https://github.com/rogpeppe/godef)

Jump to the definition of the symbol over the cursor via `gd` key combination. To jump back use `gD` combo.

## [gorename](https://godoc.org/golang.org/x/tools/cmd/gorename)
Perform precise type-safe renaming by positioning your cursor over the symbol and running `:gorename <newName>` command.
