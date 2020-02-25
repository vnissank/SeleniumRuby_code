
module TestModule
  def module_method1
    "module method 1 called"
  end

  def module_method2
    "module method 2 called"
  end

end

class TestClass
  include TestModule

  def test_self_method
    str1 = self.module_method1 + " from TestClass instance"
    str2 = self.module_method2 + " from TestClass instance"
    puts str1, str2
  end

end

TestClass.new.test_self_method

