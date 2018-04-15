require 'rubygems'
require 'bundler'

namespace :build do
  desc "Launch all cuke builds"
  task :all do
    threads = []
    %w{build:chrome build:firefox build:safari build:headless}.each do |cuke_tag|
      threads << Thread.new(cuke_tag) do |thread|
        Rake::Task[thread].execute
      end
    end
    threads.each { |thread| thread.join } 
  end

  desc "Run cukes in a Chrome browser"
  task :chrome do
      Bundler.with_clean_env do
      console_output = ""
      IO.popen("thor set:chrome && cucumber", 'r+') do |pipe|
        puts console_output = pipe.read
        pipe.close_write
      end
    end  
  end

  desc "Run cukes in a Firefox browser"
  task :firefox do
    sleep 1
      Bundler.with_clean_env do
      console_output = ""
      IO.popen("thor set:firefox && cucumber", 'r+') do |pipe|
        puts console_output = pipe.read
        pipe.close_write
      end
    end  
  end

  desc "Run cukes in a Safari browser"
  task :safari do
    sleep 2
      Bundler.with_clean_env do
      console_output = ""
      IO.popen("thor set:safari && cucumber", 'r+') do |pipe|
        puts console_output = pipe.read
        pipe.close_write
      end
    end
  end

  desc "Run cukes in a (headless) Chrome browser"
  task :headless do
    sleep 2
      Bundler.with_clean_env do
      console_output = ""
      IO.popen("thor set:headless && cucumber", 'r+') do |pipe|
        puts console_output = pipe.read
        pipe.close_write
      end
    end
  end
end