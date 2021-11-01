require_relative "stack"

class SmartStack < Stack
    attr_reader :max_size
    def initialize(n)
        @max_size = n
        super()
    end

    def full?
        self.size >= max_size
    end

    def push(*args)
        raise "stack is full" if size + args.length > @max_size
        args.each { |el| super(el) }
        size
    end

    def pop(n=1)
        removed = []
        n.times { removed << super() }
        removed
    end
end