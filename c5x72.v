// A homework problem for ee287

`include "fifo.v";

module c5x72(input clk, input reset,input [5:0] ca,
       input [32:0] cd,input cw,input push_samp,
       input signed [39:0] samp0_0,
       input signed [39:0] samp0_1,
       input signed [39:0] samp0_2,
       input signed [39:0] samp0_3,
       input signed [39:0] samp0_4,
       input signed [39:0] samp1_0,
       input signed [39:0] samp1_1,
       input signed [39:0] samp1_2,
       input signed [39:0] samp1_3,
       input signed [39:0] samp1_4,
       input signed [39:0] samp2_0,
       input signed [39:0] samp2_1,
       input signed [39:0] samp2_2,
       input signed [39:0] samp2_3,
       input signed [39:0] samp2_4,
       input signed [39:0] samp3_0,
       input signed [39:0] samp3_1,
       input signed [39:0] samp3_2,
       input signed [39:0] samp3_3,
       input signed [39:0] samp3_4,
       input signed [39:0] samp4_0,
       input signed [39:0] samp4_1,
       input signed [39:0] samp4_2,
       input signed [39:0] samp4_3,
       input signed [39:0] samp4_4,
       input signed [39:0] samp5_0,
       input signed [39:0] samp5_1,
       input signed [39:0] samp5_2,
       input signed [39:0] samp5_3,
       input signed [39:0] samp5_4,
       input signed [39:0] samp6_0,
       input signed [39:0] samp6_1,
       input signed [39:0] samp6_2,
       input signed [39:0] samp6_3,
       input signed [39:0] samp6_4,
       output pushout, input stopout,
	 output signed [44:0] res);
    reg signed [39:0] idata0_0;
    reg signed [39:0] idata0_1;
    reg signed [39:0] idata0_2;
    reg signed [39:0] idata0_3;
    reg signed [39:0] idata0_4;
    reg signed [39:0] idata1_0;
    reg signed [39:0] idata1_1;
    reg signed [39:0] idata1_2;
    reg signed [39:0] idata1_3;
    reg signed [39:0] idata1_4;
    reg signed [39:0] idata2_0;
    reg signed [39:0] idata2_1;
    reg signed [39:0] idata2_2;
    reg signed [39:0] idata2_3;
    reg signed [39:0] idata2_4;
    reg signed [39:0] idata3_0;
    reg signed [39:0] idata3_1;
    reg signed [39:0] idata3_2;
    reg signed [39:0] idata3_3;
    reg signed [39:0] idata3_4;
    reg signed [39:0] idata4_0;
    reg signed [39:0] idata4_1;
    reg signed [39:0] idata4_2;
    reg signed [39:0] idata4_3;
    reg signed [39:0] idata4_4;
    reg signed [39:0] idata5_0;
    reg signed [39:0] idata5_1;
    reg signed [39:0] idata5_2;
    reg signed [39:0] idata5_3;
    reg signed [39:0] idata5_4;
    reg signed [39:0] idata6_0;
    reg signed [39:0] idata6_1;
    reg signed [39:0] idata6_2;
    reg signed [39:0] idata6_3;
    reg signed [39:0] idata6_4;
    reg signed [32:0] wdata0_0_d;
    reg signed [32:0] wdata0_1_d;
    reg signed [32:0] wdata0_2_d;
    reg signed [32:0] wdata0_3_d;
    reg signed [32:0] wdata0_4_d;
    reg signed [32:0] wdata1_0_d;
    reg signed [32:0] wdata1_1_d;
    reg signed [32:0] wdata1_2_d;
    reg signed [32:0] wdata1_3_d;
    reg signed [32:0] wdata1_4_d;
    reg signed [32:0] wdata2_0_d;
    reg signed [32:0] wdata2_1_d;
    reg signed [32:0] wdata2_2_d;
    reg signed [32:0] wdata2_3_d;
    reg signed [32:0] wdata2_4_d;
    reg signed [32:0] wdata3_0_d;
    reg signed [32:0] wdata3_1_d;
    reg signed [32:0] wdata3_2_d;
    reg signed [32:0] wdata3_3_d;
    reg signed [32:0] wdata3_4_d;
    reg signed [32:0] wdata4_0_d;
    reg signed [32:0] wdata4_1_d;
    reg signed [32:0] wdata4_2_d;
    reg signed [32:0] wdata4_3_d;
    reg signed [32:0] wdata4_4_d;
    reg signed [32:0] wdata5_0_d;
    reg signed [32:0] wdata5_1_d;
    reg signed [32:0] wdata5_2_d;
    reg signed [32:0] wdata5_3_d;
    reg signed [32:0] wdata5_4_d;
    reg signed [32:0] wdata6_0_d;
    reg signed [32:0] wdata6_1_d;
    reg signed [32:0] wdata6_2_d;
    reg signed [32:0] wdata6_3_d;
    reg signed [32:0] wdata6_4_d;
    reg signed [39:0]idata0_0_d; 
    reg signed [39:0]idata0_1_d; 
    reg signed [39:0]idata0_2_d; 
    reg signed [39:0]idata0_3_d; 
    reg signed [39:0]idata0_4_d; 
    reg signed [39:0]idata1_0_d; 
    reg signed [39:0]idata1_1_d; 
    reg signed [39:0]idata1_2_d; 
    reg signed [39:0]idata1_3_d; 
    reg signed [39:0]idata1_4_d; 
    reg signed [39:0]idata2_0_d; 
    reg signed [39:0]idata2_1_d; 
    reg signed [39:0]idata2_2_d; 
    reg signed [39:0]idata2_3_d; 
    reg signed [39:0]idata2_4_d; 
    reg signed [39:0]idata3_0_d; 
    reg signed [39:0]idata3_1_d; 
    reg signed [39:0]idata3_2_d; 
    reg signed [39:0]idata3_3_d; 
    reg signed [39:0]idata3_4_d; 
    reg signed [39:0]idata4_0_d; 
    reg signed [39:0]idata4_1_d; 
    reg signed [39:0]idata4_2_d; 
    reg signed [39:0]idata4_3_d; 
    reg signed [39:0]idata4_4_d; 
    reg signed [39:0]idata5_0_d; 
    reg signed [39:0]idata5_1_d; 
    reg signed [39:0]idata5_2_d; 
    reg signed [39:0]idata5_3_d; 
    reg signed [39:0]idata5_4_d; 
    reg signed [39:0]idata6_0_d; 
    reg signed [39:0]idata6_1_d; 
    reg signed [39:0]idata6_2_d; 
    reg signed [39:0]idata6_3_d; 
    reg signed [39:0]idata6_4_d; 
    reg signed [32:0]wdata0_0; 
    reg signed [32:0]wdata0_1; 
    reg signed [32:0]wdata0_2; 
    reg signed [32:0]wdata0_3; 
    reg signed [32:0]wdata0_4; 
    reg signed [32:0]wdata1_0; 
    reg signed [32:0]wdata1_1; 
    reg signed [32:0]wdata1_2; 
    reg signed [32:0]wdata1_3; 
    reg signed [32:0]wdata1_4; 
    reg signed [32:0]wdata2_0; 
    reg signed [32:0]wdata2_1; 
    reg signed [32:0]wdata2_2; 
    reg signed [32:0]wdata2_3; 
    reg signed [32:0]wdata2_4; 
    reg signed [32:0]wdata3_0; 
    reg signed [32:0]wdata3_1; 
    reg signed [32:0]wdata3_2; 
    reg signed [32:0]wdata3_3; 
    reg signed [32:0]wdata3_4; 
    reg signed [32:0]wdata4_0; 
    reg signed [32:0]wdata4_1; 
    reg signed [32:0]wdata4_2; 
    reg signed [32:0]wdata4_3; 
    reg signed [32:0]wdata4_4; 
    reg signed [32:0]wdata5_0; 
    reg signed [32:0]wdata5_1; 
    reg signed [32:0]wdata5_2; 
    reg signed [32:0]wdata5_3; 
    reg signed [32:0]wdata5_4; 
    reg signed [32:0]wdata6_0; 
    reg signed [32:0]wdata6_1; 
    reg signed [32:0]wdata6_2; 
    reg signed [32:0]wdata6_3; 
    reg signed [32:0]wdata6_4; 
    reg signed [79:0] mr0_0;
    reg signed [79:0] mr0_1;
    reg signed [79:0] mr0_2;
    reg signed [79:0] mr0_3;
    reg signed [79:0] mr0_4;
    reg signed [79:0] mr1_0;
    reg signed [79:0] mr1_1;
    reg signed [79:0] mr1_2;
    reg signed [79:0] mr1_3;
    reg signed [79:0] mr1_4;
    reg signed [79:0] mr2_0;
    reg signed [79:0] mr2_1;
    reg signed [79:0] mr2_2;
    reg signed [79:0] mr2_3;
    reg signed [79:0] mr2_4;
    reg signed [79:0] mr3_0;
    reg signed [79:0] mr3_1;
    reg signed [79:0] mr3_2;
    reg signed [79:0] mr3_3;
    reg signed [79:0] mr3_4;
    reg signed [79:0] mr4_0;
    reg signed [79:0] mr4_1;
    reg signed [79:0] mr4_2;
    reg signed [79:0] mr4_3;
    reg signed [79:0] mr4_4;
    reg signed [79:0] mr5_0;
    reg signed [79:0] mr5_1;
    reg signed [79:0] mr5_2;
    reg signed [79:0] mr5_3;
    reg signed [79:0] mr5_4;
    reg signed [79:0] mr6_0;
    reg signed [79:0] mr6_1;
    reg signed [79:0] mr6_2;
    reg signed [79:0] mr6_3;
    reg signed [79:0] mr6_4;
    reg signed [79:0] mrsum;
    reg signed [79:0] temp_mr0_0;
    reg signed [79:0] temp_mr0_1;
    reg signed [79:0] temp_mr0_2;
    reg signed [79:0] temp_mr0_3;
    reg signed [79:0] temp_mr0_4;
    reg signed [79:0] temp_mr1_0;
    reg signed [79:0] temp_mr1_1;
    reg signed [79:0] temp_mr1_2;
    reg signed [79:0] temp_mr1_3;
    reg signed [79:0] temp_mr1_4;
    reg signed [79:0] temp_mr2_0;
    reg signed [79:0] temp_mr2_1;
    reg signed [79:0] temp_mr2_2;
    reg signed [79:0] temp_mr2_3;
    reg signed [79:0] temp_mr2_4;
    reg signed [79:0] temp_mr3_0;
    reg signed [79:0] temp_mr3_1;
    reg signed [79:0] temp_mr3_2;
    reg signed [79:0] temp_mr3_3;
    reg signed [79:0] temp_mr3_4;
    reg signed [79:0] temp_mr4_0;
    reg signed [79:0] temp_mr4_1;
    reg signed [79:0] temp_mr4_2;
    reg signed [79:0] temp_mr4_3;
    reg signed [79:0] temp_mr4_4;
    reg signed [79:0] temp_mr5_0;
    reg signed [79:0] temp_mr5_1;
    reg signed [79:0] temp_mr5_2;
    reg signed [79:0] temp_mr5_3;
    reg signed [79:0] temp_mr5_4;
    reg signed [79:0] temp_mr6_0;
    reg signed [79:0] temp_mr6_1;
    reg signed [79:0] temp_mr6_2;
    reg signed [79:0] temp_mr6_3;
    reg signed [79:0] temp_mr6_4;
    reg signed[44:0] mrfinal_d,mrfinal;
    reg pushs_d,pushs,pusho,pusho_d, s_prev, ff_pushs_d;
    reg [1:0] flag, flag_prev, flag_prev_2;
    reg [2:0] state, next_state;
    reg [1:0] cnt;
    reg rd,wr,en,rst,e,f, d_o,d_f,d_h, d_d;
    reg signed[44:0] din, dout; 
    fifo U1 (clk,din,rd,wr,stopout,res,rst,empty,full,pushout);
    always @(*) begin
        wdata0_0_d=wdata0_0;
        wdata0_1_d=wdata0_1;
        wdata0_2_d=wdata0_2;
        wdata0_3_d=wdata0_3;
        wdata0_4_d=wdata0_4;
        wdata1_0_d=wdata1_0;
        wdata1_1_d=wdata1_1;
        wdata1_2_d=wdata1_2;
        wdata1_3_d=wdata1_3;
        wdata1_4_d=wdata1_4;
        wdata2_0_d=wdata2_0;
        wdata2_1_d=wdata2_1;
        wdata2_2_d=wdata2_2;
        wdata2_3_d=wdata2_3;
        wdata2_4_d=wdata2_4;
        wdata3_0_d=wdata3_0;
        wdata3_1_d=wdata3_1;
        wdata3_2_d=wdata3_2;
        wdata3_3_d=wdata3_3;
        wdata3_4_d=wdata3_4;
        wdata4_0_d=wdata4_0;
        wdata4_1_d=wdata4_1;
        wdata4_2_d=wdata4_2;
        wdata4_3_d=wdata4_3;
        wdata4_4_d=wdata4_4;
        wdata5_0_d=wdata5_0;
        wdata5_1_d=wdata5_1;
        wdata5_2_d=wdata5_2;
        wdata5_3_d=wdata5_3;
        wdata5_4_d=wdata5_4;
        wdata6_0_d=wdata6_0;
        wdata6_1_d=wdata6_1;
        wdata6_2_d=wdata6_2;
        wdata6_3_d=wdata6_3;
        wdata6_4_d=wdata6_4;
        if (cw) begin
            case(ca)
                0: wdata0_0_d=cd;
                1: wdata0_1_d=cd;
                2: wdata0_2_d=cd;
                3: wdata0_3_d=cd;
                4: wdata0_4_d=cd;
                5: wdata1_0_d=cd;
                6: wdata1_1_d=cd;
                7: wdata1_2_d=cd;
                8: wdata1_3_d=cd;
                9: wdata1_4_d=cd;
                10: wdata2_0_d=cd;
                11: wdata2_1_d=cd;
                12: wdata2_2_d=cd;
                13: wdata2_3_d=cd;
                14: wdata2_4_d=cd;
                15: wdata3_0_d=cd;
                16: wdata3_1_d=cd;
                17: wdata3_2_d=cd;
                18: wdata3_3_d=cd;
                19: wdata3_4_d=cd;
                20: wdata4_0_d=cd;
                21: wdata4_1_d=cd;
                22: wdata4_2_d=cd;
                23: wdata4_3_d=cd;
                24: wdata4_4_d=cd;
                25: wdata5_0_d=cd;
                26: wdata5_1_d=cd;
                27: wdata5_2_d=cd;
                28: wdata5_3_d=cd;
                29: wdata5_4_d=cd;
                30: wdata6_0_d=cd;
                31: wdata6_1_d=cd;
                32: wdata6_2_d=cd;
                33: wdata6_3_d=cd;
                34: wdata6_4_d=cd;
            endcase
        end
        idata0_0_d=samp0_0;
        idata0_1_d=samp0_1;
        idata0_2_d=samp0_2;
        idata0_3_d=samp0_3;
        idata0_4_d=samp0_4;
        idata1_0_d=samp1_0;
        idata1_1_d=samp1_1;
        idata1_2_d=samp1_2;
        idata1_3_d=samp1_3;
        idata1_4_d=samp1_4;
        idata2_0_d=samp2_0;
        idata2_1_d=samp2_1;
        idata2_2_d=samp2_2;
        idata2_3_d=samp2_3;
        idata2_4_d=samp2_4;
        idata3_0_d=samp3_0;
        idata3_1_d=samp3_1;
        idata3_2_d=samp3_2;
        idata3_3_d=samp3_3;
        idata3_4_d=samp3_4;
        idata4_0_d=samp4_0;
        idata4_1_d=samp4_1;
        idata4_2_d=samp4_2;
        idata4_3_d=samp4_3;
        idata4_4_d=samp4_4;
        idata5_0_d=samp5_0;
        idata5_1_d=samp5_1;
        idata5_2_d=samp5_2;
        idata5_3_d=samp5_3;
        idata5_4_d=samp5_4;
        idata6_0_d=samp6_0;
        idata6_1_d=samp6_1;
        idata6_2_d=samp6_2;
        idata6_3_d=samp6_3;
        idata6_4_d=samp6_4;
    end
    always @(*) begin
        mr0_0=wdata0_0*idata0_0;
        mr0_1=wdata0_1*idata0_1;
        mr0_2=wdata0_2*idata0_2;
        mr0_3=wdata0_3*idata0_3;
        mr0_4=wdata0_4*idata0_4;
        mr1_0=wdata1_0*idata1_0;
        mr1_1=wdata1_1*idata1_1;
        mr1_2=wdata1_2*idata1_2;
        mr1_3=wdata1_3*idata1_3;
        mr1_4=wdata1_4*idata1_4;
        mr2_0=wdata2_0*idata2_0;
        mr2_1=wdata2_1*idata2_1;
        mr2_2=wdata2_2*idata2_2;
        mr2_3=wdata2_3*idata2_3;
        mr2_4=wdata2_4*idata2_4;
        mr3_0=wdata3_0*idata3_0;
        mr3_1=wdata3_1*idata3_1;
        mr3_2=wdata3_2*idata3_2;
        mr3_3=wdata3_3*idata3_3;
        mr3_4=wdata3_4*idata3_4;
        mr4_0=wdata4_0*idata4_0;
        mr4_1=wdata4_1*idata4_1;
        mr4_2=wdata4_2*idata4_2;
        mr4_3=wdata4_3*idata4_3;
        mr4_4=wdata4_4*idata4_4;
        mr5_0=wdata5_0*idata5_0;
        mr5_1=wdata5_1*idata5_1;
        mr5_2=wdata5_2*idata5_2;
        mr5_3=wdata5_3*idata5_3;
        mr5_4=wdata5_4*idata5_4;
        mr6_0=wdata6_0*idata6_0;
        mr6_1=wdata6_1*idata6_1;
        mr6_2=wdata6_2*idata6_2;
        mr6_3=wdata6_3*idata6_3;
        mr6_4=wdata6_4*idata6_4;
        

	mrsum=temp_mr0_0+temp_mr0_1+temp_mr0_2+temp_mr0_3+temp_mr0_4
        +temp_mr1_0+temp_mr1_1+temp_mr1_2+temp_mr1_3+temp_mr1_4
        +temp_mr2_0+temp_mr2_1+temp_mr2_2+temp_mr2_3+temp_mr2_4
        +temp_mr3_0+temp_mr3_1+temp_mr3_2+temp_mr3_3+temp_mr3_4
        +temp_mr4_0+temp_mr4_1+temp_mr4_2+temp_mr4_3+temp_mr4_4
        +temp_mr5_0+temp_mr5_1+temp_mr5_2+temp_mr5_3+temp_mr5_4
        +temp_mr6_0+temp_mr6_1+temp_mr6_2+temp_mr6_3+temp_mr6_4
        ;
        if (mrsum[79]==1'b1) mrsum += 1<<24;
        mrfinal_d= mrsum >>> 25;
    end

    always @(posedge(clk) or posedge(reset)) begin
	if(reset) begin

		temp_mr0_0 <= 0;
		temp_mr0_1 <= 0;
		temp_mr0_2 <= 0;
		temp_mr0_3 <= 0;
		temp_mr0_4 <= 0;
		temp_mr1_0 <= 0;
		temp_mr1_1 <= 0;
		temp_mr1_2 <= 0;
		temp_mr1_3 <= 0;
		temp_mr1_4 <= 0;
		temp_mr2_0 <= 0;
		temp_mr2_1 <= 0;
		temp_mr2_2 <= 0;
		temp_mr2_3 <= 0;
		temp_mr2_4 <= 0;
		temp_mr3_0 <= 0;
		temp_mr3_1 <= 0;
		temp_mr3_2 <= 0;
		temp_mr3_3 <= 0;
		temp_mr3_4 <= 0;
		temp_mr4_0 <= 0;
		temp_mr4_1 <= 0;
		temp_mr4_2 <= 0;
		temp_mr4_3 <= 0;
		temp_mr4_4 <= 0;
		temp_mr5_0 <= 0;
		temp_mr5_1 <= 0;
		temp_mr5_2 <= 0;
		temp_mr5_3 <= 0;
		temp_mr5_4 <= 0;
		temp_mr6_0 <= 0;
		temp_mr6_1 <= 0;
		temp_mr6_2 <= 0;
		temp_mr6_3 <= 0;
		temp_mr6_4 <= 0;
	end

	else begin

		temp_mr0_0 <= #1 mr0_0 ;
		temp_mr0_1 <= #1 mr0_1 ;
		temp_mr0_2 <= #1 mr0_2 ;
		temp_mr0_3 <= #1 mr0_3 ;
		temp_mr0_4 <= #1 mr0_4 ;
		temp_mr1_0 <= #1 mr1_0 ;
		temp_mr1_1 <= #1 mr1_1 ;
		temp_mr1_2 <= #1 mr1_2 ;
		temp_mr1_3 <= #1 mr1_3 ;
		temp_mr1_4 <= #1 mr1_4 ;
		temp_mr2_0 <= #1 mr2_0 ;
		temp_mr2_1 <= #1 mr2_1 ;
		temp_mr2_2 <= #1 mr2_2 ;
		temp_mr2_3 <= #1 mr2_3 ;
		temp_mr2_4 <= #1 mr2_4 ;
		temp_mr3_0 <= #1 mr3_0 ;
		temp_mr3_1 <= #1 mr3_1 ;
		temp_mr3_2 <= #1 mr3_2 ;
		temp_mr3_3 <= #1 mr3_3 ;
		temp_mr3_4 <= #1 mr3_4 ;
		temp_mr4_0 <= #1 mr4_0 ;
		temp_mr4_1 <= #1 mr4_1 ;
		temp_mr4_2 <= #1 mr4_2 ;
		temp_mr4_3 <= #1 mr4_3 ;
		temp_mr4_4 <= #1 mr4_4 ;
		temp_mr5_0 <= #1 mr5_0 ;
		temp_mr5_1 <= #1 mr5_1 ;
		temp_mr5_2 <= #1 mr5_2 ;
		temp_mr5_3 <= #1 mr5_3 ;
		temp_mr5_4 <= #1 mr5_4 ;
		temp_mr6_0 <= #1 mr6_0 ;
		temp_mr6_1 <= #1 mr6_1 ;
		temp_mr6_2 <= #1 mr6_2 ;
		temp_mr6_3 <= #1 mr6_3 ;
		temp_mr6_4 <= #1 mr6_4 ;

	end
    end

    always @(posedge(clk) or posedge(reset)) begin
	if(reset) begin
	    rst <= 1;
	    wr <= 0;
	    en <= 0;
	end else begin
	    rst <= #1 0;
	    en <= #1 1;
	    if (pushs) begin
		din <= #1 mrfinal_d;
		wr <= #1 1;
	    end else begin
		wr <= #1 0;
	    end
	end
    end
		
    always @(*) begin
        pushs_d=push_samp;
        pusho_d=pushs;
    end
    always @(posedge(clk) or posedge(reset)) begin
        if(reset) begin
            idata0_0 <= 0;
            idata0_1 <= 0;
            idata0_2 <= 0;
            idata0_3 <= 0;
            idata0_4 <= 0;
            idata1_0 <= 0;
            idata1_1 <= 0;
            idata1_2 <= 0;
            idata1_3 <= 0;
            idata1_4 <= 0;
            idata2_0 <= 0;
            idata2_1 <= 0;
            idata2_2 <= 0;
            idata2_3 <= 0;
            idata2_4 <= 0;
            idata3_0 <= 0;
            idata3_1 <= 0;
            idata3_2 <= 0;
            idata3_3 <= 0;
            idata3_4 <= 0;
            idata4_0 <= 0;
            idata4_1 <= 0;
            idata4_2 <= 0;
            idata4_3 <= 0;
            idata4_4 <= 0;
            idata5_0 <= 0;
            idata5_1 <= 0;
            idata5_2 <= 0;
            idata5_3 <= 0;
            idata5_4 <= 0;
            idata6_0 <= 0;
            idata6_1 <= 0;
            idata6_2 <= 0;
            idata6_3 <= 0;
            idata6_4 <= 0;
            wdata0_0 <= 0;
            wdata0_1 <= 0;
            wdata0_2 <= 0;
            wdata0_3 <= 0;
            wdata0_4 <= 0;
            wdata1_0 <= 0;
            wdata1_1 <= 0;
            wdata1_2 <= 0;
            wdata1_3 <= 0;
            wdata1_4 <= 0;
            wdata2_0 <= 0;
            wdata2_1 <= 0;
            wdata2_2 <= 0;
            wdata2_3 <= 0;
            wdata2_4 <= 0;
            wdata3_0 <= 0;
            wdata3_1 <= 0;
            wdata3_2 <= 0;
            wdata3_3 <= 0;
            wdata3_4 <= 0;
            wdata4_0 <= 0;
            wdata4_1 <= 0;
            wdata4_2 <= 0;
            wdata4_3 <= 0;
            wdata4_4 <= 0;
            wdata5_0 <= 0;
            wdata5_1 <= 0;
            wdata5_2 <= 0;
            wdata5_3 <= 0;
            wdata5_4 <= 0;
            wdata6_0 <= 0;
            wdata6_1 <= 0;
            wdata6_2 <= 0;
            wdata6_3 <= 0;
            wdata6_4 <= 0;
            mrfinal <= 0;
            pushs <= 0;
            pusho <= 0;
        end else begin
            idata0_0 <= #1 idata0_0_d;
            idata0_1 <= #1 idata0_1_d;
            idata0_2 <= #1 idata0_2_d;
            idata0_3 <= #1 idata0_3_d;
            idata0_4 <= #1 idata0_4_d;
            idata1_0 <= #1 idata1_0_d;
            idata1_1 <= #1 idata1_1_d;
            idata1_2 <= #1 idata1_2_d;
            idata1_3 <= #1 idata1_3_d;
            idata1_4 <= #1 idata1_4_d;
            idata2_0 <= #1 idata2_0_d;
            idata2_1 <= #1 idata2_1_d;
            idata2_2 <= #1 idata2_2_d;
            idata2_3 <= #1 idata2_3_d;
            idata2_4 <= #1 idata2_4_d;
            idata3_0 <= #1 idata3_0_d;
            idata3_1 <= #1 idata3_1_d;
            idata3_2 <= #1 idata3_2_d;
            idata3_3 <= #1 idata3_3_d;
            idata3_4 <= #1 idata3_4_d;
            idata4_0 <= #1 idata4_0_d;
            idata4_1 <= #1 idata4_1_d;
            idata4_2 <= #1 idata4_2_d;
            idata4_3 <= #1 idata4_3_d;
            idata4_4 <= #1 idata4_4_d;
            idata5_0 <= #1 idata5_0_d;
            idata5_1 <= #1 idata5_1_d;
            idata5_2 <= #1 idata5_2_d;
            idata5_3 <= #1 idata5_3_d;
            idata5_4 <= #1 idata5_4_d;
            idata6_0 <= #1 idata6_0_d;
            idata6_1 <= #1 idata6_1_d;
            idata6_2 <= #1 idata6_2_d;
            idata6_3 <= #1 idata6_3_d;
            idata6_4 <= #1 idata6_4_d;
            wdata0_0 <= #1 wdata0_0_d;
            wdata0_1 <= #1 wdata0_1_d;
            wdata0_2 <= #1 wdata0_2_d;
            wdata0_3 <= #1 wdata0_3_d;
            wdata0_4 <= #1 wdata0_4_d;
            wdata1_0 <= #1 wdata1_0_d;
            wdata1_1 <= #1 wdata1_1_d;
            wdata1_2 <= #1 wdata1_2_d;
            wdata1_3 <= #1 wdata1_3_d;
            wdata1_4 <= #1 wdata1_4_d;
            wdata2_0 <= #1 wdata2_0_d;
            wdata2_1 <= #1 wdata2_1_d;
            wdata2_2 <= #1 wdata2_2_d;
            wdata2_3 <= #1 wdata2_3_d;
            wdata2_4 <= #1 wdata2_4_d;
            wdata3_0 <= #1 wdata3_0_d;
            wdata3_1 <= #1 wdata3_1_d;
            wdata3_2 <= #1 wdata3_2_d;
            wdata3_3 <= #1 wdata3_3_d;
            wdata3_4 <= #1 wdata3_4_d;
            wdata4_0 <= #1 wdata4_0_d;
            wdata4_1 <= #1 wdata4_1_d;
            wdata4_2 <= #1 wdata4_2_d;
            wdata4_3 <= #1 wdata4_3_d;
            wdata4_4 <= #1 wdata4_4_d;
            wdata5_0 <= #1 wdata5_0_d;
            wdata5_1 <= #1 wdata5_1_d;
            wdata5_2 <= #1 wdata5_2_d;
            wdata5_3 <= #1 wdata5_3_d;
            wdata5_4 <= #1 wdata5_4_d;
            wdata6_0 <= #1 wdata6_0_d;
            wdata6_1 <= #1 wdata6_1_d;
            wdata6_2 <= #1 wdata6_2_d;
            wdata6_3 <= #1 wdata6_3_d;
            wdata6_4 <= #1 wdata6_4_d;
            ff_pushs_d <= #1 pushs_d;
            pushs <= #1 ff_pushs_d;
        end
    end

endmodule

