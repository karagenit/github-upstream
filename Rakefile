task :default => [:install, :test]

task :install do
    system "bundle install"
end

task :test do
    system "./test/test_upstream.rb"
end
