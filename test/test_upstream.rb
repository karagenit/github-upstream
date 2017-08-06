#!/usr/bin/env ruby

require "./lib/upstream.rb"
require "test/unit"

class TestUpstream < Test::Unit::TestCase

    def test_nil_err
        assert_raise(ArgumentError) { get_upstream(nil) }
    end

    def test_non_repo_err
        assert_raise(ArgumentError) { get_upstream('test') }
    end

    def test_bad_repo_err
        assert_raise(ArgumentError) { get_upstream('repo!/test') }
    end

    def test_repo_non_fork_nil
        assert_nil(get_upstream('karagenit/forks'))
    end

    def test_repo_fork
        assert_equal(get_upstream('karagenit/allwpilib'), 'https://github.com/wpilibsuite/allwpilib')
    end
    
    def test_url_non_fork_nil
        assert_nil(get_upstream('https://github.com/karagenit/forks'))
    end

    def test_url_fork
        assert_equal(get_upstream('https://github.com/karagenit/allwpilib'), 
                     'https://github.com/wpilibsuite/allwpilib')
    end

end
