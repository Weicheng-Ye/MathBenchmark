# MathBenchmark

A mathematical benchmark for LLMs and agents

## Lean environment

The Lean files in this repository are checked with the following pinned environment:

- Lean: `leanprover/lean4:v4.31.0` (commit `68218e876d2a38b1985b8590fff244a83c321783`)
- Lake: `5.0.0-src+68218e8`, bundled with Lean 4.31.0
- mathlib: `v4.31.0` (commit `fabf563a7c95a166b8d7b6efca11c8b4dc9d911f`)

The Lake environment does not need to live in this repository. Install [Elan](https://lean-lang.org/doc/reference/latest/Build-Tools-and-Distribution/Managing-Toolchains-with-Elan/) and create an external environment at any convenient path. For example:

```bash
LEAN_ENV="$HOME/.cache/mathbenchmark-lean-4.31.0"
mkdir -p "$LEAN_ENV"

printf '%s\n' 'leanprover/lean4:v4.31.0' > "$LEAN_ENV/lean-toolchain"
printf '%s\n' \
  'name = "MathBenchmarkCheck"' \
  'version = "0.1.0"' \
  '' \
  '[[require]]' \
  'name = "mathlib"' \
  'git = "https://github.com/leanprover-community/mathlib4.git"' \
  'rev = "fabf563a7c95a166b8d7b6efca11c8b4dc9d911f"' \
  > "$LEAN_ENV/lakefile.toml"

(
  cd "$LEAN_ENV"
  lake update
  lake exe cache get
)
```

This installs the pinned Lean toolchain, resolves the pinned mathlib revision, and downloads mathlib's compiled cache. Keep `LEAN_ENV` set to the absolute path of this external directory.

### Check selected Lean files

From the root of this repository, paste the following Bash function and pass it one or more Lean files:

```bash
check_lean() {
  if (( $# == 0 )); then
    echo "usage: check_lean <file.lean> [...]" >&2
    return 2
  fi
  if [[ -z "${LEAN_ENV:-}" || ! -d "$LEAN_ENV" ]]; then
    echo "LEAN_ENV must name an existing external Lake environment" >&2
    return 2
  fi

  local benchmark_root="$PWD"
  local lean_file
  local result=0
  for lean_file in "$@"; do
    if [[ "$lean_file" != /* ]]; then
      lean_file="$benchmark_root/$lean_file"
    fi
    if [[ ! -f "$lean_file" ]]; then
      echo "file not found: $lean_file" >&2
      return 2
    fi
    if ! (cd "$LEAN_ENV" && lake env lean "$lean_file"); then
      result=1
    fi
  done
  return "$result"
}

check_lean a1/22.lean a2/42.lean a2/43.lean
```

A message such as `declaration uses 'sorry'` is expected for benchmark statements whose proof placeholder is still present. Lean returns a nonzero status for parsing, elaboration, or type-checking errors.
