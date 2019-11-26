/*
 *  block_clk - clocks speed at which blocks move lower
 *      if there is time, gradually speed this up
 *  laser_clk - speed at which lasers move
 *  player_move_clk - speed at which player can move left or right
 */

module top_clock(
    input clk,
    input rst,
    output block_clk,
    output laser_clk,
    output player_move_clk,
);

    //100 Mhz -> 
    reg [26:0] block_counter; //run at 0.5 Hz
    reg [24:0] laser_counter;   //run at 2 Hz
    reg [24:0] player_move_counter; //run at 2 Hz

    always @ (posedge clk, posedge rst) begin
        if (rst) begin
            block_clk <= 0;
            laser_clk <= 0;
            player_move_clk <= 0;
            block_counter <= 27'd100000000;
            laser_counter <= 25'd25000000;
            player_move_counter <= 25'd25000000;
        end
        else begin
            if(block_counter == 0) begin
                block_counter <= 25'd25000000;
                block_clk <= ~block_clk;
            end
            if(laser_counter == 0) begin
                laser_counter <= 25'd25000000;
                laser_clk <= ~laser_clk;
            end
            if(player_move_counter == 0) begin
                player_move_counter <= 25'd25000000;
                player_move_clk <= ~player_move_clk;
            end
        end
    end    

endmodule