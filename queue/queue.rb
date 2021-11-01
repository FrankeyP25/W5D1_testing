class Queue
    def initialize
        @line = []
    end

    def enqueue(el)
        @line << el
        el
    end

    def dequeue
        @line.shift
    end

    def peek
        @line.last
    end
end

var = Queue.new
var.enqueue("frank")
var.enqueue("fred")
var.enqueue("edy")
p var
var.dequeue
puts
p var