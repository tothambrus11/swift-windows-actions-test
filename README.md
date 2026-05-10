# swift-windows-actions-test

Smoke test of major "setup Swift" GitHub Actions on Windows runners.

For each action, four jobs are run:

| OS              | Channel           |
|-----------------|-------------------|
| windows-2025    | latest release    |
| windows-2025    | dev snapshot      |
| windows-2025-arm| latest release    |
| windows-2025-arm| dev snapshot      |

Each job:

1. Sets up the Swift toolchain via the action under test.
2. Runs `swift --version`.
3. Builds and runs the tiny `Hello` SwiftPM executable in this repo.

Actions tested:

- [`swift-actions/setup-swift`](https://github.com/swift-actions/setup-swift) (Swiftly-based)
- [`SwiftyLab/setup-swift`](https://github.com/SwiftyLab/setup-swift)
- [`compnerd/gha-setup-swift`](https://github.com/compnerd/gha-setup-swift) (Windows-specific)

Pinned versions:

- Latest release: **Swift 6.3.1** (April 2026).
- Dev snapshot: each action's "main"/"development" channel — the snapshot date will float.

`fail-fast` is disabled so all four combinations run even if one fails. Job
failures are expected for runners/channels an action does not support yet —
that's the point of this test.
