
module dovecot #(
    parameter PIGEON_COUNT = 16, // number of pigeons
    parameter PIGEON_TIME = 400, // cycles to complete an operation
    parameter PIGEON_WEIGHT_THRESHHOLD = 100,
        // weight threshold for pigeon before they're considered fat
    parameter DATA_WIDTH = 47,
    parameter ADDRESS_WIDTH = 37
)(
    input clk,
    input clk_en,
    input sync_rst,

    input deliver_commit,
    input request_type, // 0 for read, 1 for write
    input [ADDRESS_WIDTH-1:0] deliver_address,
    input [DATA_WIDTH-1:0] deliver_data,

    input send_to_gym, // sends pigeon to gym

    input feed_pigeon, // feeds pigeon
    input [47:0][16:0] pigeon_food, // food for the pigeon

    output [DATA_WIDTH-1:0] deliver_data_out,
    output delivery_complete
);

endmodule
