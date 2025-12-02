class Hello
  MAJOR  = 6 # breaking,
  MINOR  = 1 # feature,
  PATCH  = 2 # fix => BFF
  PRE    = nil

  STRING = [MAJOR, MINOR, PATCH, PRE].compact.join('.')
end