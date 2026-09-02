# Contributing

- Install hooks: `pre-commit install --hook-type pre-commit --hook-type pre-push`.
- Run tests: `pytest` (coverage target defaults to 80% in reusable CI).
- Typecheck: `mypy --config-file mypy.ini src`.
- Lint/format: `ruff check .` and `black --line-length 100 .`.

Use conventional commits. PRs run CI and CodeQL via reusable workflows.
