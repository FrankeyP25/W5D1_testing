class Stack
    def initialize
        @line = []
    end

    def push(el)
        @line << el
    end

    def pop
        @line.pop
    end

    def peek
        @line.last
    end
end

buy = Stack.new
buy.push("frank")
buy.push("frankelin")
buy.push("fr")
buy.push("ank")
p buy
buy.pop
p buy