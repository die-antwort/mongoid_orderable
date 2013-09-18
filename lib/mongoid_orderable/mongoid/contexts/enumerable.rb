module MongoidOrderable #:nodoc:
  module Mongoid #:nodoc:
    module Contexts #:nodoc:
      module Enumerable #:nodoc:
        def inc hash
          iterate do |doc|
            doc.inc(hash)
          end
        end
      end
    end
  end
end

Mongoid::Contexts::Enumerable.send :include, MongoidOrderable::Mongoid::Contexts::Enumerable
