
module TestModule
  def module_method
    "module method called"
  end

  class SimpleClass
    def initialize
      puts 'initialize SimpleClass'
    end
  end
end

class TestClass
  include TestModule

  def test_self_method
    str = self.module_method + " from TestClass instance"
    puts str
  end

  TestModule::SimpleClass.new

end

TestClass.new.test_self_method
c=0
