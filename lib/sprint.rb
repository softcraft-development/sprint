$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Sprint
  VERSION = '1.0.0'
  class Status
    def initialize( output, status )
      @output = output
      @status = status
    end
    
    def to_s
      @output
    end
    alias :output :to_s
    alias :to_string :to_s
    
    def good_output
      raise "Process exited with error code: #{return_code}" unless success?
      @output
    end
    
    def to_i
      @status.exitstatus
    end
    alias :return_code :to_i
    alias :to_int :to_i
    
    def success?
      @status.success?
    end
    alias :to_b :success?
    
    def self.run( command )
      output = `#{command}`
      status = $?
      Status.new output, status
    end
  end
end

module Kernel
  def sprint( command )
    Sprint::Status.run command
  end
end