require_relative "stack"

class SmartStack < Stack
    attr_reader :max_size

    def initialize(n)
        super()
        @max_size = n
    end

    def full?
        size == max_size
    end

    def push(*args)
        raise "stack is full" if size + args.size > max_size
        args.each { |el| super(el) }
        size
    end

    def pop(n=1)
        removed = []
        n.times { removed << super() }
        removed
    end
end