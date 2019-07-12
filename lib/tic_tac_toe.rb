class TicTacToe

WIN_COMBINATIONS =[
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
]

    def initialize(board = nil)
        @board = board || Array.new(9, " ")
    end

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(input)
        int = input.to_i
        index = int - 1
    end

    def move(index, string)
        @board[index] = string
    end

    def position_taken?(index)
        if @board[index] == " "
            false
        else 
            true
        end
    end

    def valid_move?(index)
        if @board[index] == " "
            true
        else 
            false
        end
    end

    def turn_count
        count = 0
        @board.each do |position|
            if position != " "
                count += 1
            else
                count = count
            end
        end
        count
    end

    def current_player
        if turn_count.even? == true
            "X"
        else
            "O"
        end
    end

    def turn
        input = gets
        index = input_to_index(input)
        boolean = valid_move?(index)
        if boolean == true
        move(index, current_player) 
        display_board
        else   
            puts "invalid"
            new_input = gets
            new_index = input_to_index(new_input)
            boolean = valid_move?(new_index)
            move(new_index, current_player) 
            display_board
        end
    end

    def won?

    end

    def full?

    end

    def draw?

    end

    def over?

    end

    def winner

    end
    
    def play

    end

end