Gem::Specification.new("youre_doing_it_wrong", "1.0.0") do |s|
  s.authors       = ["James Tucker"]
  s.email         = ["raggi@google.com"]
  s.description   = "Warns you if you're doing it wrong"
  s.summary       = s.description
  s.homepage      = "https://github.com/raggi/youre_doing_it_wrong"
  s.files         = `git ls-files`.split($/)
end
