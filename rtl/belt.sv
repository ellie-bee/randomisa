
module belt #(
    parameter BIT_WIDTH = 47,
    parameter BELT_DEPTH = 16
)(
    input clk,
    input clk_en,
    input sync_rst,

    input [BIT_WIDTH-1:0] data_in,
    input push,

    input [BELT_INDEX_WIDTH-1:0] read_index,
    output [BIT_WIDTH-1:0] data_out
);

localparam BELT_INDEX_WIDTH = $clog2(BELT_DEPTH);

// The belt is implemented as a block of memory indexed
// with an offset pointer. The pointer is incremented every time
// a value is written to the belt

reg [BELT_INDEX_WIDTH-1:0] belt_offset;
always_ff @(posedge clk) begin
    if(sync_rst)
        belt_offset <= '0;
    else if(push)
        belt_offset <= belt_offset + 1;
end

reg [BIT_WIDTH-1:0] belt [BELT_DEPTH-1:0];
always_ff @(posedge clk) begin
    if(sync_rst)
        belt <= '0;
    else if(push)
        belt[belt_offset] <= data_in;
end

assign data_out = belt[read_index + belt_offset];

endmodule
