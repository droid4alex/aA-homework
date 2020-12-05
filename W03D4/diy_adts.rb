class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
  end
  
class Queue
    def initialize
      @queue = []
    end

    def enqueue(el)
      @queue << el
    end

    def dequeue
      @queue.shift
    end

    def peek
      @queue[0]
      # returns, but doesn't remove, the top element in the stack
    end
  end
  
class Map
    def initialize
      @my_set = Array.new(){Array.new()}
    end

    def set(key, value)
      if get(key) == nil
        @my_set << [key, value] 
      else
        @my_set.each do |pair|
          pair[-1] = value if key == pair[0]
        end
      end

        # Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!
    end

    def get(key)
      return nil if @my_set.empty?
      @my_set.each do |pair|
        return pair[-1] if key == pair[0]
      end
      nil
    end

    def delete(key)
      return nil if @my_set.empty?
      @my_set.each do |pair|
        if key == pair[0]
          @my_set.delete(pair)
        end
      end
    end

    def show
      p @my_set
    end
  end

  m = Map.new
  m.set(5,"pizza")
  m.set(6,"dog")
  m.set(15,"apple")
  m.show
  sleep(1)
  m.delete(5)
  sleep(1)
  m.show
  sleep(1)
  p m.get(6)
  sleep(1)
  m.set(11155,"zebra")
  sleep(1)
  m.show