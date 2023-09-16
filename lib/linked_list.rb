require_relative './node'

class LinkedList

    def initialize
        @head = nil
    end

    def head
        @head
    end

    def head= val
        @head = val
    end

    def prepend node
        if head.nil?
            self.head = node
            return
        end

        node.next_node = @head
        @head = node
    end

    def append(node)
        # Add element to the beginning of the list if the list is empty
        if head.nil?
          self.head = node
          return
        end
    
        # Otherwise, traverse the list to find the last node
        last_node = head
        while last_node.next_node
          last_node = last_node.next_node
        end
    
        # and add the node to the end
        last_node.next_node = node
    end

    def delete_head
        # Add element to the beginning of the list if the list is empty
        if head.nil?
            return
        end
        @head = @head.next_node

    end

    def delete_tail
        if head.nil?
            return
        end

        if !@head.next_node
            @head = nil
            return
        end

        last_node = @head
        while last_node.next_node.next_node
            last_node = last_node.next_node
        end
        last_node.next_node = nil 
    end

    def add_after index, node

        if index == 0
            @head.next_node = node
            return
        end

        count = 1
        last_node = @head
        until count == index
            last_node = last_node.next_node
            count += 1
        end
        last_node.next_node = node
    end

    def search value
        
        last_node = @head
        until last_node.next_node.data == value
            last_node = last_node.next_node
        end
        return last_node.next_node

    end


end
