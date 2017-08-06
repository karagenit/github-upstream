Gem::Specification.new do |s|
    s.name          = 'upstream'
    s.version       = '1.0.0'
    s.license       = 'MIT'
    s.summary       = 'Github Upstream'
    s.description   = 'Fetch a Github Fork\'s Parent Repo URL'
    s.homepage      = 'https://github.com/karagenit/github-upstream'
    s.author        = 'Caleb Smith'
    s.email         = 'karagenit@outlook.com'
    s.files         = ['lib/upstream.rb']
    s.platform      = Gem::Platform::RUBY

    s.add_runtime_dependency 'json', '~> 2.1'
end
