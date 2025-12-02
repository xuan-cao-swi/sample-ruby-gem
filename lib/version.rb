class Hello
  MAJOR  = 0 # breaking,
  MINOR  = 1 # feature,
  PATCH  = 4 # fix => BFF
  PRE    = nil

  STRING = [MAJOR, MINOR, PATCH, PRE].compact.join('.')
end