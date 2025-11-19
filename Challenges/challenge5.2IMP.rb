require "minitest/autorun"

class MathFunc

    def add(a, b)
        a + b
    end

    def divide(a, b)
        if b == 0
            raise DivideByZeroError
        end
        a / b
    end

    def sum_array(a)
        b = 0
        for num in a
            b = add(b, num)
        end
        return b
    end

end

class TestMath < Minitest::Test
    def setup
        @math = MathFunc.new
    end

    def test_add
        assert_equal 3, @math.add(1, 2)
    end

    def test_divide
        assert_equal 1, @math.divide(10, 10)
    end

    def test_sum_array
        assert_equal 10, @math.sum_array([1, 2, 3, 4])
    end
end