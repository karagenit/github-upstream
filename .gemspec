Gem::Specification.new do |s|
    s.name          = 'upstream'
    s.version       = IO.read('version.txt')
    s.license       = 'MIT'
    s.summary       = 'Github Upstream'
    s.description   = 'Fetch a Github Fork\'s Parent Repo URL'
    s.homepage      = 'https://github.com/karagenit/github-upstream'
    s.author        = 'Caleb Smith'
    s.email         = 'karagenit@outlook.com'
    s.files         = ['lib/upstream.rb']
    s.platform      = Gem::Platform::RUBY

    s.add_runtime_dependency 'json', '~> 2.1'

    s.add_development_dependency 'bundler',     '~> 1.15'
    s.add_development_dependency 'rake',        '~> 12.0'
    s.add_development_dependency 'test-unit',   '~> 3.2'
    s.add_development_dependency 'minitest',    '~> 5.10'
end
