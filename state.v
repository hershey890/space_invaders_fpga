/*
 *  Stores the state of each element in the board in an x_size by y_size matrix
 * 
 *  States:
 *  1. Alien
 *  2. Player
 *  3. Laser
 *  4. Edge (only used for assigning adjacent states, not self-held)
 *  
 *  Laser ; Player -> lose
 *  Laser ; Alien -> erase alien
 */

module state 
    #(  parameter x_size=5,
        parameter y_size=10,
        parameter x_num_blocks = x_size,
        parameter y_num_blocks = 4) ( 
        input rst,
        input clk, 
        input block_clk,
        input laser_clk,
        input player_move_clk,
        input btn_adj,
        input btn_left_right,
        input btn_shoot,
        output reg [(x_size-1)*y_size-1):0] state_matrix_out //flattened 2d array
    );

    reg [x_size-1:0] state_matrix [y_size-1:0];
    


endmodule