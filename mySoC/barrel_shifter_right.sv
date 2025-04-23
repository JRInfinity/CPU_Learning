module barrel_shifter_right (
    input logic [31:0] data_in,
    input logic [4:0] shift_amount, // 向右移位位数
    input logic shift_mode, // 移位模式： 0 - 逻辑移位（直接左侧添零）1 - 算数移位（左侧添加符号位）
    output logic [31:0] data_out
);
    logic [31:0] stage0, stage1, stage2, stage3, stage4;
    
    

    always_comb begin
        case (shift_mode)
        1'b0: begin // 逻辑移位（直接左侧添零）
            // 第0级：移0或1位
            stage0 = shift_amount[0] ? {1'b0, data_in[31:1]} : data_in;
            // 第1级：移0或2位
            stage1 = shift_amount[1] ? {2'b00, stage0[31:2]} : stage0;
            // 第2级：移0或4位
            stage2 = shift_amount[2] ? {4'b0000, stage1[31:4]} : stage1;
            // 第3级：移0或8位
            stage3 = shift_amount[3] ? {8'b00000000, stage2[31:8]} : stage2;
            // 第4级：移0或16位
            stage4 = shift_amount[4] ? {16'b0000000000000000, stage3[31:16]} : stage3;
            data_out = stage4;
            end
        1'b1: begin //算数移位（左侧添加符号位）
            // 第0级：移0或1位
            stage0 = shift_amount[0] ? {data_in[31], data_in[31:1]} : data_in;
            // 第1级：移0或2位
            stage1 = shift_amount[1] ? {{2{stage0[31]}}, stage0[31:2]} : stage0;
            // 第2级：移0或4位
            stage2 = shift_amount[2] ? {{4{stage1[31]}}, stage1[31:4]} : stage1;
            // 第3级：移0或8位
            stage3 = shift_amount[3] ? {{8{stage2[31]}}, stage2[31:8]} : stage2;
            // 第4级：移0或16位
            stage4 = shift_amount[4] ? {{16{stage3[31]}}, stage3[31:16]} : stage3;
            data_out = stage4;
            end
        endcase
    end
endmodule