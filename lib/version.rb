class Hello
  # Single source of truth for the gem version. This constant is read and
  # updated automatically by the toys-release tooling, so it must stay in the
  # `VERSION = "x.y.z"` string form.
  VERSION = '0.1.6'

  # Backwards-compatible alias used by the gemspec and existing workflows.
  STRING = VERSION
end
