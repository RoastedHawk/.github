# RoastedHawk/.github
Reusable workflows for Python repos.

- `Reusable Python CI` — ruff, black, pytest coverage, mypy, optional badge.
- `Reusable CodeQL` — CodeQL analysis with read-only defaults.

After creating this repo on GitHub, update your repos to call:

```yaml
jobs:
  use-reusable:
    uses: RoastedHawk/.github/.github/workflows/python-ci.yml@main
    with:
      run-matrix: "['3.11','3.12']"
      cov-threshold: '80'
```
