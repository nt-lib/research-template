# research-template

<!-- Replace this line with a one-line description of what this repo computes -->

## Requirements

<!-- List software requirements here, e.g.:
- Magma v2.29-1 or higher
- SageMath X.Y
- Python 3.x
-->

## Project layout

| Directory | Contents |
|-----------|----------|
| `src/`    | Source code (Magma `.m` files, Python scripts, SageMath notebooks, etc.) |
| `tests/`  | Test scripts |

## Running tests

From the repository root:

```
make test
```

To run on a remote machine (syncs via rsync, then runs `make test` over SSH):

```bash
make test_remote ssh="user@hostname"
```

The repo is synced to `/tmp/<repo-name>/` on the remote.
