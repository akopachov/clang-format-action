# clang-format action

Runs clang-format on the diff

# usage

```yml
name: "format code"

# run on pull requests to develop
on:
  pull_request:
    branches:
      - develop

jobs:
  format:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
        with:
          # check out HEAD on the branch
          ref: ${{ github.head_ref }}
          # fetch everything to be able to compare with any ref
          fetch-depth: 0

      # format the latest commit
      - uses: akopachov/clang-format-action@main
        with:
          style: file # use one of clang-format's supported styles or leave this out to use the style in your .clang-format file
          commit: HEAD~1 # Ref to compare with

      # commit the changes (if there are any)
      - name: Commit changes
        uses: stefanzweifel/git-auto-commit-action@v4.1.2
        with:
          commit_message: 🎨 apply clang-format changes
          branch: ${{ github.head_ref }}
```

## Why

there are already a couple versions of this action floating around ([cvra/clang-format-action](https://github.com/cvra/clang-format-action) and [IvanLudvig/clang-format-action](https://github.com/IvanLudvig/clang-format-action)) but these either

- aren't on the actions marketplace,
- aren't recently updated,
- assume a particular default style for your code (with no way to change it),
- or have some sketchy docker files

so for maximum ease of use we are providing a more robust action here

