module YoureDoingItWrong
  module_function

  def do_it_right!
    warn "[YDIW] The noise starts here, if you hear a peep from me, you're evil"
    [Object, Kernel, Class, Module].each do |c|
      c.class_eval do
        def method_added *a
          warn "[YDIW] You did it wrong @ #{caller[1]} (method_added)"
          super if defined? super
        end

        alias singleton_method_added method_added

        def extended(base)
          warn "[YDIW] You did it wrong @ #{caller[1]} (extend)"
          super if defined? super
        end
      end
    end
  end
end
