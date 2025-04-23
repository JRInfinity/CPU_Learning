module barrel_shifter_left (
    input logic [31:0] data_in,
    input logic [4:0] shift_amount, // 向左移位位数
    output logic [31:0] data_out
);
    logic [31:0] stage0, stage1, stage2, stage3, stage4;
    
    always_comb begin
        // 第0级：移0或1位
        stage0 = shift_amount[0] ? {data_in[30:0], 1'b0} : data_in;
        // 第1级：移0或2位
        stage1 = shift_amount[1] ? {stage0[29:0], 2'b00} : stage0;
        // 第2级：移0或4位
        stage2 = shift_amount[2] ? {stage1[27:0], 4'b0000} : stage1;
        // 第3级：移0或8位
        stage3 = shift_amount[3] ? {stage2[23:0], 8'b00000000} : stage2;
        // 第4级：移0或16位
        stage4 = shift_amount[4] ? {stage3[15:0], 16'b0000000000000000} : stage3;
        data_out = stage4;
    end
endmodule