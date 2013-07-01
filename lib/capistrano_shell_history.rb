require 'capistrano'
require "readline"

require "capistrano_shell_history/version"

Capistrano::Configuration.instance(:must_exist).load do

  unless exists? :shell_history
    set :shell_history, File.expand_path('~/.cap_shell_history')
  end

  before :shell do
    begin
      if File.exists? shell_history
        history = open(shell_history).read.each_line{ |command|
          Readline::HISTORY << command.chomp
        }
      end
    rescue => error
      warn error
    end
  end

  after :shell do
    begin
      open(shell_history, 'w') { |file|
        unique_history = Readline::HISTORY.to_a.reverse.uniq.reverse.delete_if{ |command|
          command == 'exit'
        }
        file.write(unique_history.join("\n"))
      }
    rescue => error
      warn error
    end
  end
end
