

module vga640x480 (i_clk, i_pix_stb, i_rst, o_hs, o_vs, o_blanking, o_active, o_screenend, o_animate, o_x, o_y);

    input       i_clk;
    input       i_pix_stb;
    input       i_rst;
    output      o_hs;
    output      o_vs;
    output      o_blanking;
    output      o_active;
    output      o_screenend;
    output      o_animate;
    output      [9:0] o_x;
    output      [8:0] o_y;
    
    //    VGA timings
    localparam HS_STA = 16;
    localparam HS_END = 16 + 96;
    localparam HA_STA = 16 + 96 + 48;
    localparam VS_STA = 480 + 10;
    localparam VS_END = 480 + 10 + 2;
    localparam VA_END = 480;
    localparam LINE   = 800;
    localparam SCREEN = 525;
    
    reg [9:0] h_count;
    reg [9:0] v_count;
    
    assign o_hs = ~((h_count >= HS_STA) & (h_count < HS_END));
    assign o_vs = ~((v_count >= VS_STA) & (v_count < VS_END));
    
    assign o_x = (h_count < HA_STA) ? 0 : (h_count - HA_STA);
    assign o_y = (v_count >= VA_END) ? (VA_END - 1) : (v_count);
    
    // blanking: high within the blanking period
    assign o_blanking = ((h_count < HA_STA) | (v_count > VA_END - 1));

    // active: high during active pixel drawing
    assign o_active = ~((h_count < HA_STA) | (v_count > VA_END - 1)); 

    // screenend: high for one tick at the end of the screen
    assign o_screenend = ((v_count == SCREEN - 1) & (h_count == LINE));

    // animate: high for one tick at the end of the final active pixel line
    assign o_animate = ((v_count == VA_END - 1) & (h_count == LINE));
    
    always @ (posedge i_clk) begin
        
        if (i_rst) begin
            h_count <= 0;
            v_count <= 0;    
        end
        
        if (i_pix_stb) begin
            if (h_count == LINE) begin
                h_count <= 0;
                v_count <= v_count + 1;
            end
            else
                h_count <= h_count + 1;
            
            if (v_count == SCREEN)
                v_count <= 0;
        end
    
    end

endmodule


















