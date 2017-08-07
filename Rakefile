task :default => [:clean, :build, :install, :test]

task :build do
    system "bundle install"
    system "gem build .gemspec"
end

task :install do
    system "gem install upstream-" + IO.read('version.txt') + ".gem"
end

task :clean do
    system "gem uninstall upstream"
end

task :test do
    system "./test/test_upstream.rb"
end

task :publish do
    puts "Current Version: " + IO.read('version.txt')
    print "New Version: "
    vers = STDIN.gets.chomp
    IO.write('version.txt', vers)
    system "rake build"
    system "git commit -am \"Update Version\""
    system "git tag -a v" + vers + " -m \"\""
end
