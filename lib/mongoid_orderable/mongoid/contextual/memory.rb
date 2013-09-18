module MongoidOrderable #:nodoc:
  module Mongoid #:nodoc:
    module Contextual #:nodoc:
      module Memory #:nodoc:
        def inc hash
          each do |document|
            document.inc(hash)
          end
        end
      end
    end
  end
end

Mongoid::Contextual::Memory.send :include, MongoidOrderable::Mongoid::Contextual::Memory
