// A homework problem for ee287


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
       output pushout,input stopout, output signed [44:0] res);
    reg signed [39:0] idata0_0,idata0_0_d;
    reg signed [39:0] idata0_1,idata0_1_d;
    reg signed [39:0] idata0_2,idata0_2_d;
    reg signed [39:0] idata0_3,idata0_3_d;
    reg signed [39:0] idata0_4,idata0_4_d;
    reg signed [39:0] idata1_0,idata1_0_d;
    reg signed [39:0] idata1_1,idata1_1_d;
    reg signed [39:0] idata1_2,idata1_2_d;
    reg signed [39:0] idata1_3,idata1_3_d;
    reg signed [39:0] idata1_4,idata1_4_d;
    reg signed [39:0] idata2_0,idata2_0_d;
    reg signed [39:0] idata2_1,idata2_1_d;
    reg signed [39:0] idata2_2,idata2_2_d;
    reg signed [39:0] idata2_3,idata2_3_d;
    reg signed [39:0] idata2_4,idata2_4_d;
    reg signed [39:0] idata3_0,idata3_0_d;
    reg signed [39:0] idata3_1,idata3_1_d;
    reg signed [39:0] idata3_2,idata3_2_d;
    reg signed [39:0] idata3_3,idata3_3_d;
    reg signed [39:0] idata3_4,idata3_4_d;
    reg signed [39:0] idata4_0,idata4_0_d;
    reg signed [39:0] idata4_1,idata4_1_d;
    reg signed [39:0] idata4_2,idata4_2_d;
    reg signed [39:0] idata4_3,idata4_3_d;
    reg signed [39:0] idata4_4,idata4_4_d;
    reg signed [39:0] idata5_0,idata5_0_d;
    reg signed [39:0] idata5_1,idata5_1_d;
    reg signed [39:0] idata5_2,idata5_2_d;
    reg signed [39:0] idata5_3,idata5_3_d;
    reg signed [39:0] idata5_4,idata5_4_d;
    reg signed [39:0] idata6_0,idata6_0_d;
    reg signed [39:0] idata6_1,idata6_1_d;
    reg signed [39:0] idata6_2,idata6_2_d;
    reg signed [39:0] idata6_3,idata6_3_d;
    reg signed [39:0] idata6_4,idata6_4_d;
    reg signed [32:0] wdata0_0_d,wdata0_0;
    reg signed [32:0] wdata0_1_d,wdata0_1;
    reg signed [32:0] wdata0_2_d,wdata0_2;
    reg signed [32:0] wdata0_3_d,wdata0_3;
    reg signed [32:0] wdata0_4_d,wdata0_4;
    reg signed [32:0] wdata1_0_d,wdata1_0;
    reg signed [32:0] wdata1_1_d,wdata1_1;
    reg signed [32:0] wdata1_2_d,wdata1_2;
    reg signed [32:0] wdata1_3_d,wdata1_3;
    reg signed [32:0] wdata1_4_d,wdata1_4;
    reg signed [32:0] wdata2_0_d,wdata2_0;
    reg signed [32:0] wdata2_1_d,wdata2_1;
    reg signed [32:0] wdata2_2_d,wdata2_2;
    reg signed [32:0] wdata2_3_d,wdata2_3;
    reg signed [32:0] wdata2_4_d,wdata2_4;
    reg signed [32:0] wdata3_0_d,wdata3_0;
    reg signed [32:0] wdata3_1_d,wdata3_1;
    reg signed [32:0] wdata3_2_d,wdata3_2;
    reg signed [32:0] wdata3_3_d,wdata3_3;
    reg signed [32:0] wdata3_4_d,wdata3_4;
    reg signed [32:0] wdata4_0_d,wdata4_0;
    reg signed [32:0] wdata4_1_d,wdata4_1;
    reg signed [32:0] wdata4_2_d,wdata4_2;
    reg signed [32:0] wdata4_3_d,wdata4_3;
    reg signed [32:0] wdata4_4_d,wdata4_4;
    reg signed [32:0] wdata5_0_d,wdata5_0;
    reg signed [32:0] wdata5_1_d,wdata5_1;
    reg signed [32:0] wdata5_2_d,wdata5_2;
    reg signed [32:0] wdata5_3_d,wdata5_3;
    reg signed [32:0] wdata5_4_d,wdata5_4;
    reg signed [32:0] wdata6_0_d,wdata6_0;
    reg signed [32:0] wdata6_1_d,wdata6_1;
    reg signed [32:0] wdata6_2_d,wdata6_2;
    reg signed [32:0] wdata6_3_d,wdata6_3;
    reg signed [32:0] wdata6_4_d,wdata6_4;
    reg signed [79:0] mr0_0, mr0_0_d1;
    reg signed [79:0] mr0_1, mr0_1_d1;
    reg signed [79:0] mr0_2, mr0_2_d1;
    reg signed [79:0] mr0_3, mr0_3_d1;
    reg signed [79:0] mr0_4, mr0_4_d1;
    reg signed [79:0] mr1_0, mr1_0_d1;
    reg signed [79:0] mr1_1, mr1_1_d1;
    reg signed [79:0] mr1_2, mr1_2_d1;
    reg signed [79:0] mr1_3, mr1_3_d1;
    reg signed [79:0] mr1_4, mr1_4_d1;
    reg signed [79:0] mr2_0, mr2_0_d1;
    reg signed [79:0] mr2_1, mr2_1_d1;
    reg signed [79:0] mr2_2, mr2_2_d1;
    reg signed [79:0] mr2_3, mr2_3_d1;
    reg signed [79:0] mr2_4, mr2_4_d1;
    reg signed [79:0] mr3_0, mr3_0_d1;
    reg signed [79:0] mr3_1, mr3_1_d1;
    reg signed [79:0] mr3_2, mr3_2_d1;
    reg signed [79:0] mr3_3, mr3_3_d1;
    reg signed [79:0] mr3_4, mr3_4_d1;
    reg signed [79:0] mr4_0, mr4_0_d1;
    reg signed [79:0] mr4_1, mr4_1_d1;
    reg signed [79:0] mr4_2, mr4_2_d1;
    reg signed [79:0] mr4_3, mr4_3_d1;
    reg signed [79:0] mr4_4, mr4_4_d1;
    reg signed [79:0] mr5_0, mr5_0_d1;
    reg signed [79:0] mr5_1, mr5_1_d1;
    reg signed [79:0] mr5_2, mr5_2_d1;
    reg signed [79:0] mr5_3, mr5_3_d1;
    reg signed [79:0] mr5_4, mr5_4_d1;
    reg signed [79:0] mr6_0, mr6_0_d1;
    reg signed [79:0] mr6_1, mr6_1_d1;
    reg signed [79:0] mr6_2, mr6_2_d1;
    reg signed [79:0] mr6_3, mr6_3_d1;
    reg signed [79:0] mr6_4, mr6_4_d1;
    reg signed [79:0] mrs0,mrs0_d;
    reg signed [79:0] mrs1,mrs1_d;
    reg signed [79:0] mrs2,mrs2_d;
    reg signed [79:0] mrs3,mrs3_d;
    reg signed [79:0] mrs4,mrs4_d;
    reg signed [79:0] mrs5,mrs5_d;
    reg signed [79:0] mrs6,mrs6_d;
    reg signed [79:0] mrs7,mrs7_d;
    reg signed [79:0] mrs8,mrs8_d;
    reg signed [79:0] mrs9,mrs9_d;
    reg signed [79:0] mrs10,mrs10_d;
    reg signed [79:0] mrs11,mrs11_d;
    reg signed [79:0] mrs12,mrs12_d;
    reg signed [79:0] mrs13,mrs13_d;
    reg signed [79:0] mrs14,mrs14_d;
    reg signed [79:0] mrs15,mrs15_d;
    reg signed [79:0] mrs16,mrs16_d;
    reg signed [79:0] mrs17,mrs17_d;
    reg signed [79:0] mrsum0,mrsum0_d;
    reg signed [79:0] mrsum1,mrsum1_d;
    reg signed [79:0] mrsum2,mrsum2_d;
    reg signed [79:0] mrsum3,mrsum3_d;
    reg signed [79:0] mrsum4,mrsum4_d;
    reg signed [79:0] mrsum5,mrsum5_d;
    reg signed [79:0] mrsum, mrsum_d1;
    reg signed[44:0] mrfinal_d,mrfinal;
    reg pusho;
    reg pushs_d1, pushs_d2, pushs_d3, pushs_d4,pushs_d5;
    reg [44:0] datain[0:29];
    reg wr_en,rd_en; 
    reg [44:0] dataout[0:29];
    reg [4:0] rd_ptr,wr_ptr;
    reg empty,full;
    reg [44:0] mem[0:34];
	reg stop;
	reg signed[44:0] mrfinal_dd,mrfinal_ddd,mrfinal_dddd;


   assign pushout=pusho;
   assign stop=stopout;
   assign res = mrfinal_ddd;
    
	
	
  	fifo f1(.clk(clk),.reset(reset) ,.Data_in(mrfinal_d), .rd_en(!stop) ,.wr_en (pushout), .Data_out(mrfinal_dd));
	

	
    always @(*) begin
        wdata0_0_d = wdata0_0;
	wdata0_1_d = wdata0_1;
 	wdata0_2_d = wdata0_2;
        wdata0_3_d = wdata0_3;
        wdata0_4_d = wdata0_4;
        wdata1_0_d = wdata1_0;
        wdata1_1_d = wdata1_1;
        wdata1_2_d = wdata1_2;
        wdata1_3_d = wdata1_3;
        wdata1_4_d = wdata1_4;
        wdata2_0_d = wdata2_0;
        wdata2_1_d = wdata2_1;
        wdata2_2_d = wdata2_2;
        wdata2_3_d = wdata2_3;
        wdata2_4_d = wdata2_4;
        wdata3_0_d = wdata3_0;
        wdata3_1_d = wdata3_1;
        wdata3_2_d = wdata3_2;
        wdata3_3_d = wdata3_3;
        wdata3_4_d = wdata3_4;
        wdata4_0_d = wdata4_0;
        wdata4_1_d = wdata4_1;
        wdata4_2_d = wdata4_2;
        wdata4_3_d = wdata4_3;
        wdata4_4_d = wdata4_4;
        wdata5_0_d = wdata5_0;
        wdata5_1_d = wdata5_1;
        wdata5_2_d = wdata5_2;
        wdata5_3_d = wdata5_3;
        wdata5_4_d = wdata5_4;
        wdata6_0_d = wdata6_0;
        wdata6_1_d = wdata6_1;
        wdata6_2_d = wdata6_2;
        wdata6_3_d = wdata6_3;
        wdata6_4_d = wdata6_4;
        if (cw) begin
            case(ca)
                 0: wdata0_0_d = cd;
                 1: wdata0_1_d = cd;
                 2: wdata0_2_d = cd;
                 3: wdata0_3_d = cd;
                 4: wdata0_4_d = cd;
                 5: wdata1_0_d = cd;
                 6: wdata1_1_d = cd;
                 7: wdata1_2_d = cd;
                 8: wdata1_3_d = cd;
                 9: wdata1_4_d = cd;
                10: wdata2_0_d = cd;
                11: wdata2_1_d = cd;
                12: wdata2_2_d = cd;
                13: wdata2_3_d = cd;
                14: wdata2_4_d = cd;
                15: wdata3_0_d = cd;
                16: wdata3_1_d = cd;
                17: wdata3_2_d = cd;
                18: wdata3_3_d = cd;
                19: wdata3_4_d = cd;
                20: wdata4_0_d = cd;
                21: wdata4_1_d = cd;
                22: wdata4_2_d = cd;
                23: wdata4_3_d = cd;
                24: wdata4_4_d = cd;
                25: wdata5_0_d = cd;
                26: wdata5_1_d = cd;
                27: wdata5_2_d = cd;
                28: wdata5_3_d = cd;
                29: wdata5_4_d = cd;
                30: wdata6_0_d = cd;
                31: wdata6_1_d = cd;
                32: wdata6_2_d = cd;
                33: wdata6_3_d = cd;
                34: wdata6_4_d = cd;
            endcase
        end
        idata0_0_d = samp0_0;
        idata0_1_d = samp0_1;
        idata0_2_d = samp0_2;
        idata0_3_d = samp0_3;
        idata0_4_d = samp0_4;
        idata1_0_d = samp1_0;
        idata1_1_d = samp1_1;
        idata1_2_d = samp1_2;
        idata1_3_d = samp1_3;
        idata1_4_d = samp1_4;
        idata2_0_d = samp2_0;
        idata2_1_d = samp2_1;
        idata2_2_d = samp2_2;
        idata2_3_d = samp2_3;
        idata2_4_d = samp2_4;
        idata3_0_d = samp3_0;
        idata3_1_d = samp3_1;
        idata3_2_d = samp3_2;
        idata3_3_d = samp3_3;
        idata3_4_d = samp3_4;
        idata4_0_d = samp4_0;
        idata4_1_d = samp4_1;
        idata4_2_d = samp4_2;
        idata4_3_d = samp4_3;
        idata4_4_d = samp4_4;
        idata5_0_d = samp5_0;
        idata5_1_d = samp5_1;
        idata5_2_d = samp5_2;
        idata5_3_d = samp5_3;
        idata5_4_d = samp5_4;
        idata6_0_d = samp6_0;
        idata6_1_d = samp6_1;
        idata6_2_d = samp6_2;
        idata6_3_d = samp6_3;
        idata6_4_d = samp6_4;
    end
     always @(*) begin
     	mr0_0 = mr0_0_d1;
		mr0_1 = mr0_1_d1;
		mr0_2 = mr0_2_d1;
		mr0_3 = mr0_3_d1;
		mr0_4 = mr0_4_d1;
		mr1_0 = mr1_0_d1;
		mr1_1 = mr1_1_d1;
		mr1_2 = mr1_2_d1;
		mr1_3 = mr1_3_d1;
		mr1_4 = mr1_4_d1;
		mr2_0 = mr2_0_d1;
		mr2_1 = mr2_1_d1;
		mr2_2 = mr2_2_d1;
		mr2_3 = mr2_3_d1;
		mr2_4 = mr2_4_d1;
		mr3_0 = mr3_0_d1;
		mr3_1 = mr3_1_d1;
		mr3_2 = mr3_2_d1;
		mr3_3 = mr3_3_d1;
		mr3_4 = mr3_4_d1;
		mr4_0 = mr4_0_d1;
		mr4_1 = mr4_1_d1;
		mr4_2 = mr4_2_d1;
		mr4_3 = mr4_3_d1;
		mr4_4 = mr4_4_d1;
		mr5_0 = mr5_0_d1;
		mr5_1 = mr5_1_d1;
		mr5_2 = mr5_2_d1;
		mr5_3 = mr5_3_d1;
		mr5_4 = mr5_4_d1;
		mr6_0 = mr6_0_d1;
		mr6_1 = mr6_1_d1;
		mr6_2 = mr6_2_d1;
		mr6_3 = mr6_3_d1;
		mr6_4 = mr6_4_d1;
		
		if(pushs_d1) begin
			mr0_0 = wdata0_0 * idata0_0 ;
			mr0_1 = wdata0_1 * idata0_1 ;
			mr0_2 = wdata0_2 * idata0_2 ;
			mr0_3 = wdata0_3 * idata0_3 ;
			mr0_4 = wdata0_4 * idata0_4 ;
			mr1_0 = wdata1_0 * idata1_0 ;
			mr1_1 = wdata1_1 * idata1_1 ;
			mr1_2 = wdata1_2 * idata1_2 ;
			mr1_3 = wdata1_3 * idata1_3 ;
			mr1_4 = wdata1_4 * idata1_4 ;
			mr2_0 = wdata2_0 * idata2_0 ;
			mr2_1 = wdata2_1 * idata2_1 ;
			mr2_2 = wdata2_2 * idata2_2 ;
			mr2_3 = wdata2_3 * idata2_3 ;
			mr2_4 = wdata2_4 * idata2_4 ;
			mr3_0 = wdata3_0 * idata3_0 ;
			mr3_1 = wdata3_1 * idata3_1 ;
			mr3_2 = wdata3_2 * idata3_2 ;
			mr3_3 = wdata3_3 * idata3_3 ;
			mr3_4 = wdata3_4 * idata3_4 ;
			mr4_0 = wdata4_0 * idata4_0 ;
			mr4_1 = wdata4_1 * idata4_1 ;
			mr4_2 = wdata4_2 * idata4_2 ;
			mr4_3 = wdata4_3 * idata4_3 ;
			mr4_4 = wdata4_4 * idata4_4 ;
			mr5_0 = wdata5_0 * idata5_0 ;
			mr5_1 = wdata5_1 * idata5_1 ;
			mr5_2 = wdata5_2 * idata5_2 ;
			mr5_3 = wdata5_3 * idata5_3 ;
			mr5_4 = wdata5_4 * idata5_4 ;
			mr6_0 = wdata6_0 * idata6_0 ;
			mr6_1 = wdata6_1 * idata6_1 ;
			mr6_2 = wdata6_2 * idata6_2 ;
			mr6_3 = wdata6_3 * idata6_3 ;
			mr6_4 = wdata6_4 * idata6_4 ;
        end
    end 
	always @(posedge clk or posedge reset) begin
		if(reset) begin
            mr0_0_d1 <= 0 ;
            mr0_1_d1 <= 0 ;
            mr0_2_d1 <= 0 ;
            mr0_3_d1 <= 0 ;
            mr0_4_d1 <= 0 ;
            mr1_0_d1 <= 0 ;
            mr1_1_d1 <= 0 ;
            mr1_2_d1 <= 0 ;
            mr1_3_d1 <= 0 ;
            mr1_4_d1 <= 0 ;
            mr2_0_d1 <= 0 ;
            mr2_1_d1 <= 0 ;
            mr2_2_d1 <= 0 ;
            mr2_3_d1 <= 0 ;
            mr2_4_d1 <= 0 ;
            mr3_0_d1 <= 0 ;
            mr3_1_d1 <= 0 ;
            mr3_2_d1 <= 0 ;
            mr3_3_d1 <= 0 ;
            mr3_4_d1 <= 0 ;
            mr4_0_d1 <= 0 ;
            mr4_1_d1 <= 0 ;
            mr4_2_d1 <= 0 ;
            mr4_3_d1 <= 0 ;
            mr4_4_d1 <= 0 ;
            mr5_0_d1 <= 0 ;
            mr5_1_d1 <= 0 ;
            mr5_2_d1 <= 0 ;
            mr5_3_d1 <= 0 ;
            mr5_4_d1 <= 0 ;
            mr6_0_d1 <= 0 ;
            mr6_1_d1 <= 0 ;
            mr6_2_d1 <= 0 ;
            mr6_3_d1 <= 0 ;
            mr6_4_d1 <= 0 ;
		end
        else begin
            mr0_0_d1 <= #1 mr0_0 ;
            mr0_1_d1 <= #1 mr0_1 ;
            mr0_2_d1 <= #1 mr0_2 ;
            mr0_3_d1 <= #1 mr0_3 ;
            mr0_4_d1 <= #1 mr0_4 ;
            mr1_0_d1 <= #1 mr1_0 ;
            mr1_1_d1 <= #1 mr1_1 ;
            mr1_2_d1 <= #1 mr1_2 ;
            mr1_3_d1 <= #1 mr1_3 ;
            mr1_4_d1 <= #1 mr1_4 ;
            mr2_0_d1 <= #1 mr2_0 ;
            mr2_1_d1 <= #1 mr2_1 ;
            mr2_2_d1 <= #1 mr2_2 ;
            mr2_3_d1 <= #1 mr2_3 ;
            mr2_4_d1 <= #1 mr2_4 ;
            mr3_0_d1 <= #1 mr3_0 ;
            mr3_1_d1 <= #1 mr3_1 ;
            mr3_2_d1 <= #1 mr3_2 ;
            mr3_3_d1 <= #1 mr3_3 ;
            mr3_4_d1 <= #1 mr3_4 ;
            mr4_0_d1 <= #1 mr4_0 ;
            mr4_1_d1 <= #1 mr4_1 ;
            mr4_2_d1 <= #1 mr4_2 ;
            mr4_3_d1 <= #1 mr4_3 ;
            mr4_4_d1 <= #1 mr4_4 ;
            mr5_0_d1 <= #1 mr5_0 ;
            mr5_1_d1 <= #1 mr5_1 ;
            mr5_2_d1 <= #1 mr5_2 ;
            mr5_3_d1 <= #1 mr5_3 ;
            mr5_4_d1 <= #1 mr5_4 ;
            mr6_0_d1 <= #1 mr6_0 ;
            mr6_1_d1 <= #1 mr6_1 ;
            mr6_2_d1 <= #1 mr6_2 ;
            mr6_3_d1 <= #1 mr6_3 ;
            mr6_4_d1 <= #1 mr6_4 ;
		end
	end 
   always @(*) begin
	mrs0 = mrs0_d;
	mrs1 = mrs1_d;
	mrs2 = mrs2_d;
	mrs3 = mrs3_d;
	mrs4 = mrs4_d;
	mrs5 = mrs5_d;
	mrs6 = mrs6_d;
	mrs7 = mrs7_d;
	mrs8 = mrs8_d;
	mrs9 = mrs9_d;
	mrs10 = mrs10_d;
	mrs11 = mrs11_d;
	mrs12 = mrs12_d;
	mrs13 = mrs13_d;
	mrs14 = mrs14_d;
	mrs15 = mrs15_d;
	mrs16 = mrs16_d;
	mrs17 = mrs17_d;
	if (pushs_d2) begin
	mrs0 = mr0_0_d1 + mr0_1_d1;
	mrs1 = mr0_2_d1 + mr0_3_d1;
	mrs2 = mr0_4_d1 + mr1_0_d1;
	mrs3 = mr1_1_d1 + mr1_2_d1;
	mrs4 = mr1_3_d1 + mr1_4_d1;
	mrs5 = mr2_0_d1 + mr2_1_d1;
	mrs6 = mr2_2_d1 + mr2_3_d1;
	mrs7 = mr2_4_d1 + mr3_0_d1;
	mrs8 = mr3_1_d1 + mr3_2_d1;
	mrs9 = mr3_3_d1 + mr3_4_d1;
	mrs10 = mr4_0_d1 + mr4_1_d1;
	mrs11 = mr4_2_d1 + mr4_3_d1;
	mrs12 = mr4_4_d1 + mr5_0_d1;
	mrs13 = mr5_1_d1 + mr5_2_d1;
	mrs14 = mr5_3_d1 + mr5_4_d1;
	mrs15 = mr6_0_d1 + mr6_1_d1;
	mrs16 = mr6_2_d1 + mr6_3_d1;
	mrs17 = mr6_4_d1;
		end
	end
	always @(posedge (clk) or posedge (reset)) begin
	if (reset) begin
	mrs0_d <= 0;
	mrs1_d <= 0;
	mrs2_d <= 0;
	mrs3_d <= 0;
	mrs4_d <= 0;
	mrs5_d <= 0;
	mrs6_d <= 0;
	mrs7_d <= 0;
	mrs8_d <= 0;
	mrs9_d <= 0;
	mrs10_d <= 0;
	mrs11_d <= 0;
	mrs12_d <= 0;
	mrs13_d <= 0;
	mrs14_d <= 0;
	mrs15_d <= 0;
	mrs16_d <= 0;
	mrs17_d <= 0;
	end else begin
	mrs0_d <= #1 mrs0;
	mrs1_d <= #1 mrs1;
	mrs2_d <= #1 mrs2;
	mrs3_d <= #1 mrs3;
	mrs4_d <= #1 mrs4;
	mrs5_d <= #1 mrs5;
	mrs6_d <= #1 mrs6;
	mrs7_d <= #1 mrs7;
	mrs8_d <= #1 mrs8;
	mrs9_d <= #1 mrs9;
	mrs10_d <= #1 mrs10;
	mrs11_d <= #1 mrs11;
	mrs12_d <= #1 mrs12;
	mrs13_d <= #1 mrs13;
	mrs14_d <= #1 mrs14;
	mrs15_d <= #1 mrs15;
	mrs16_d <= #1 mrs16;
	mrs17_d <= #1 mrs17;
		end
	end
	always @(*)begin
	mrsum0 = mrsum0_d;
	mrsum1 = mrsum1_d;
	mrsum2 = mrsum2_d;
	mrsum3 = mrsum3_d;
	mrsum4 = mrsum4_d;
	mrsum5 = mrsum5_d;
	if (pushs_d3) begin
	mrsum0 = mrs0_d + mrs1_d + mrs2_d;
	mrsum1 = mrs3_d + mrs4_d + mrs5_d;
	mrsum2 = mrs6_d + mrs7_d + mrs8_d;
	mrsum3 = mrs9_d + mrs10_d + mrs11_d;
	mrsum4 = mrs12_d + mrs13_d + mrs14_d;
	mrsum5 = mrs15_d + mrs16_d + mrs17_d;
		end
	end
	always @(posedge (clk) or posedge (reset)) begin
	if (reset) begin
	mrsum0_d <= 0;
	mrsum1_d <= 0;
	mrsum2_d <= 0;
	mrsum3_d <= 0;
	mrsum4_d <= 0;
	mrsum5_d <= 0;
	end else begin
	mrsum0_d <= #1 mrsum0;
	mrsum1_d <= #1 mrsum1;
	mrsum2_d <= #1 mrsum2;
	mrsum3_d <= #1 mrsum3;
	mrsum4_d <= #1 mrsum4;
	mrsum5_d <= #1 mrsum5;
		end
	end
    always @(*) begin
        mrsum = mrsum_d1;
        if(pushs_d4) begin
            mrsum= (mrsum0_d + mrsum1_d) + (mrsum2_d + mrsum3_d )+ (mrsum4_d + mrsum5_d);
            if (mrsum[79]==1'b1) mrsum += 1<<24;
        end
    end
      always @(posedge clk or posedge reset) begin
        if(reset)
            mrsum_d1 <= 0 ;
        else
            mrsum_d1 <= #1 mrsum ;
    end
    always @(*) begin
       
        if(pushs_d5) begin
            mrfinal = (mrsum_d1 >>> 25);
        end else begin  mrfinal = mrfinal_d; end 
    end
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            mrfinal_d <= 0 ;
            mrfinal_ddd <= 0;
        end
        else
        begin
           mrfinal_d <= #1 mrfinal;
            mrfinal_ddd <= #1 mrfinal_dd;
        end
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
           

            pushs_d1 <= 0;
            pushs_d2 <= 0;
            pushs_d3 <= 0;
	    pushs_d4 <= 0;
	    pushs_d5 <= 0;
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
            
            
            pushs_d1 <= #1 push_samp;
            pushs_d2 <= #1 pushs_d1;
            pushs_d3 <= #1 pushs_d2;
	    pushs_d4 <= #1 pushs_d3;
	    pushs_d5 <= #1 pushs_d4;

            pusho <= #1 pushs_d5;

        end
    end

endmodule

