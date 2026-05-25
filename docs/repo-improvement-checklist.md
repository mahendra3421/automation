# Repo Improvement Checklist

Use this as a quick pre-flight and post-flight checklist.

## Before you change anything

- [ ] Confirm the target repo and scope
- [ ] Identify the verification path (tests/build/lint) or document why none
- [ ] Keep the change small enough to review in one sitting

## While making changes

- [ ] Prefer edits that are clearly beneficial and low-risk
- [ ] Avoid large refactors without tests or user confirmation
- [ ] Keep commits scoped to one idea each

## Before committing

- [ ] `git status` is clean except intended files
- [ ] No secrets, API keys, or tokens included
- [ ] Commit message is specific and imperative

## Before pushing

- [ ] Run the repo’s relevant checks (or note what you couldn’t run)
- [ ] Re-read the diff for accidental changes
