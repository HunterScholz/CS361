class Node 
    attr_accessor :value, :lesserChild, :greaterChild

    def initialize(value)
        @value = value
        @lesserChild = nil
        @greaterChild = nil
    end
end 


class BST 
    attr_accessor :rootNode

    def initialize
        @rootNode = nil
    end
    
    def newNode(value)
        @rootNode = placeNode(@rootNode, value)
    end 
    
    def hasNode(value)
        binarySearch(@rootNode, value)
    end

    def printTree
        printNode(@rootNode)
        puts 
    end

    private def placeNode(node, value)
        return Node.new(value) if node.nil?
        if value < node.value
            node.lesserChild = placeNode(node.lesserChild, value)
        elsif value > node.value
            node.greaterChild = placeNode(node.greaterChild, value)
        end 
        node 
    end

    def binarySearch(node, value)
        return false if node.nil?
        return true if node.value == value
        if value < node.value
            binarySearch(node.lesserChild, value)
        else
            binarySearch(node.greaterChild, value)
        end
    end

    def printNode(node)
        return if node.nil?
        printNode(node.lesserChild)
        print "#{node.value} "
        printNode(node.greaterChild)
    end
end

tree = BST.new
[5, 3, 7, 2, 4, 6, 8].each { |n| tree.newNode(n) }

puts "Find 4 #{tree.hasNode(4)}"
puts "Find 10 #{tree.hasNode(10)}"
print "Tree: "
tree.printTree