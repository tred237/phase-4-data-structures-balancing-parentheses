require_relative './stack'

def balancing_parentheses(str)
    stack = Stack.new
    str.chars.each do |i|
        stack.peek == '(' && i == ')' ? stack.pop : stack.push(i)
    end

    stack.size
end
