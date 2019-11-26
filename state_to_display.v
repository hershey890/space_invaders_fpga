/*
 *  Intermediary between state.v and the vga display
 */

module state_to_display (
    input clk,
    input rst,
    input [(x_size-1)*y_size-1):0] state_matrix_in //flattened 2d array
    //some outputs to vga cable
);

endmodule