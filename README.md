# starter-workflow

* `secrets: inherit` passes all environment secrets to called workflows
* Called workflows respect caller's environment protection rules
* Compare changed folders against environments
```
grades="dev uat prd"
a=(dev uat)
x=$(comm -12 <(for X in $grades; do echo "${X}"; done|sort) <(for X in "${a[@]}"; do echo "${X}"; done|sort))
echo $x | wc -w
echo $x | sed 's/[[:space:]]//g'
```
