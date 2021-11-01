require_relative "stack"

class SmartStack < Stack
    attr_reader :max_size

    def initialize(n)
        @max_size = n
        super()
    end

    def full?
        self.size >= self.max_size
    end

    def push(*args)
        raise "stack is full" if self.size + args.length > @max_size

        args.each { |el| super(el) }
        self.size
    end

    def pop(n=1)
        removed = []
        n.times do 
            removed << super()
        end
        removed
    end
end