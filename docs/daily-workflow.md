# Daily Workflow

This repo is a lightweight “control room” for making *real* improvements to other
repositories (and to keep a clean, meaningful GitHub contribution graph).

## Daily checklist

1. Pick a target number of commits (1–10). Stop early if you can’t find enough
   meaningful work.
2. Choose a target repo and a narrow scope.
3. Make small, reviewable changes.
4. Verify the change (run tests, build, or lint when applicable).
5. Write clear commit messages that describe *what changed*.

## What counts as “meaningful”

- Documentation that improves setup, usage, screenshots, or examples
- Fixing a bug or reducing a known source of errors
- Adding/repairing tests in repos that already have test infrastructure
- Small refactors that reduce complexity (without behavior changes)
- Tooling that improves consistency (formatters, linting, CI fixes)

## When to stop early

Stop early (even if the target was higher) when:

- The next commit would be “filler” (no real value)
- You can’t verify or confidently reason about the change
- You need user input (repo choice, preferred change type, or risk tolerance)

## Commit message style

Prefer imperative, specific messages:

- “Add setup steps for local dev”
- “Fix broken link in README”
- “Add issue template for repo improvement requests”
