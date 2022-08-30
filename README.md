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
* Detect environment
```
grades="dev uat prd"
environments=$(for env in $grades; do if ! git diff --quiet HEAD main -- $env; then echo $env; fi; done)
```