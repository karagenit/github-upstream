task :default => [:install, :test]

task :install do
    system "bundle install"
    system "gem build .gemspec"
    system "gem install upstream-" + IO.read('version.txt') + ".gem"
end

task :clean do
    system "gem uninstall upstream"
end

task :test do
    system "./test/test_upstream.rb"
end
