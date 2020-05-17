
// A test bench for the c5x7 assignments
`timescale 1ns/10ps


`include "c5x72_gates.v"

module top();

    reg clk,reset;
    reg [5:0] ca;
    reg [32:0] cd;
    reg cw;
    reg push_samp;
    reg signed [39:0] samp00;
    reg signed [39:0] samp01;
    reg signed [39:0] samp02;
    reg signed [39:0] samp03;
    reg signed [39:0] samp04;
    reg signed [39:0] samp10;
    reg signed [39:0] samp11;
    reg signed [39:0] samp12;
    reg signed [39:0] samp13;
    reg signed [39:0] samp14;
    reg signed [39:0] samp20;
    reg signed [39:0] samp21;
    reg signed [39:0] samp22;
    reg signed [39:0] samp23;
    reg signed [39:0] samp24;
    reg signed [39:0] samp30;
    reg signed [39:0] samp31;
    reg signed [39:0] samp32;
    reg signed [39:0] samp33;
    reg signed [39:0] samp34;
    reg signed [39:0] samp40;
    reg signed [39:0] samp41;
    reg signed [39:0] samp42;
    reg signed [39:0] samp43;
    reg signed [39:0] samp44;
    reg signed [39:0] samp50;
    reg signed [39:0] samp51;
    reg signed [39:0] samp52;
    reg signed [39:0] samp53;
    reg signed [39:0] samp54;
    reg signed [39:0] samp60;
    reg signed [39:0] samp61;
    reg signed [39:0] samp62;
    reg signed [39:0] samp63;
    reg signed [39:0] samp64;

    wire pushout;
    reg stopout;
    wire [44:0] res;

    integer f;
    string strx;
    integer rv;
    integer fifo_depth;
    event fev;
    reg signed [32:0] d;
    reg signed [39:0] sd,sx;
    reg signed [44:0] sr;
    reg [5:0] adr,sa;
    reg rand_wdelay=0;
    reg [44:0] efifo[$];

initial begin
    clk=0;
    stopout=1'bz;
    repeat(7080000) begin
        #5 clk=0;
        #5 clk=1;
    end
    $display("Ran out of clocks");
    $finish;
end


initial begin
    reset=1;
    cw=0;
    ca=0;
    cd=32'h12345678;

    samp00 = 0;
    samp01 = 0;
    samp02 = 0;
    samp03 = 0;
    samp04 = 0;
    samp10 = 0;
    samp11 = 0;
    samp12 = 0;
    samp13 = 0;
    samp14 = 0;
    samp20 = 0;
    samp21 = 0;
    samp22 = 0;
    samp23 = 0;
    samp24 = 0;
    samp30 = 0;
    samp31 = 0;
    samp32 = 0;
    samp33 = 0;
    samp34 = 0;
    samp40 = 0;
    samp41 = 0;
    samp42 = 0;
    samp43 = 0;
    samp44 = 0;
    samp50 = 0;
    samp51 = 0;
    samp52 = 0;
    samp53 = 0;
    samp54 = 0;
    samp60 = 0;
    samp61 = 0;
    samp62 = 0;
    samp63 = 0;
    samp64 = 0;

    repeat(3) @(posedge(clk)) #1;
    reset=0;
end

initial begin
    $dumpfile("c5x72.vpd");
    $dumpvars(0,top);
    $dumplimit(300000000);
end

task die(input string msg);
    $display("\n\n\n\n");
    $display("===Error===Error===Error===Error\n");
    $display("At %t",$realtime);
    $display("==> %s <<==",msg);
    $display("===Error===Error===Error===Error\n");
    $display("\n\n");
    #30;
    $finish;
endtask : die

always @(posedge(clk)) begin
    if ((!reset) && (efifo.size() < 29) ) begin
        #1;
        stopout=0;
        if ($urandom_range(1,10)>5) begin
            stopout=1;
        end
    end else begin
        stopout= #1 0;
    end
end


always @(fev) fifo_depth=efifo.size();

reg [44:0] rd,old_rd,ed;
reg po,old_po;
always @(posedge(clk)) begin
    if(!reset) begin
        old_rd = res;
        old_po = pushout;
        #0.1;
        rd = res;
        po = pushout;
        if (old_rd !== rd) die("no hold time on res");
        if (old_po !== po) die("no hold time on pushout");
        if ( ((^old_rd)^(^rd))===1'bX) die("x in res");
        if ( ((^old_po)^(^po))===1'bX) die("x in pushout");
        if(po && (!stopout)) begin
            if(efifo.size()==0) die("You pushed and Nothing expected");
            ed=efifo.pop_front();
            -> fev;
            if(rd !== ed) begin
                die($sformatf("Data out error... Received %08x expected %08x",rd,ed));
            end
        end
    end
end


reg happy;
initial begin
    push_samp=0;


    f = $fopen("t5x72.txt","r");
    repeat(5) @(posedge(clk)) #1;
    happy=1;
    while( happy && !$feof(f) ) begin
        rv=$fgets(strx,f);
        case(strx[0])
            "w": begin // update a weight
                rv=$sscanf(strx,"%*s %d %x",adr,d);
                if(adr!=34) begin
                    ca=adr;
                    cd=d;
                    cw=1;
                    @(posedge(clk)) #1;
                    cw=0;
                    cd=32'h12345678;
                    ca=2;
                    if(rand_wdelay) begin
                        repeat($urandom_range(0,2)) @(posedge(clk)) #1;
                    end
                end
            end
            "q": happy=0;
            "s": begin
                rv=$sscanf(strx,"%*s %d %x",sa,sd);
                case(sa)
					0: samp00=sd;
					1: samp01=sd;
					2: samp02=sd;
					3: samp03=sd;
					4: samp04=sd;
					5: samp10=sd;
					6: samp11=sd;
					7: samp12=sd;
					8: samp13=sd;
					9: samp14=sd;
					10: samp20=sd;
					11: samp21=sd;
					12: samp22=sd;
					13: samp23=sd;
					14: samp24=sd;
					15: samp30=sd;
					16: samp31=sd;
					17: samp32=sd;
					18: samp33=sd;
					19: samp34=sd;
					20: samp40=sd;
					21: samp41=sd;
					22: samp42=sd;
					23: samp43=sd;
					24: samp44=sd;
					25: samp50=sd;
					26: samp51=sd;
					27: samp52=sd;
					28: samp53=sd;
					29: samp54=sd;
					30: samp60=sd;
					31: samp61=sd;
					32: samp62=sd;
					33: samp63=sd;
					34: samp64=sd;

                    default: begin
                        $display("Im lost on sample number");
//                        $display(strx);
                        $finish;
                    end
                endcase
            end
            "e": begin
                rv=$sscanf(strx,"%*s %d %x",sx,sr);
                efifo.push_back(sr);
                -> fev;
                if(sa==34) begin
                    push_samp=1;
                    if(adr==34) begin
                        ca=adr;
                        cd=d;
                        cw=1;
                    end
                    @(posedge(clk)) #1;
                    if(adr==34) begin
                        cw=0;
                        cd=32'h12345678;
                        ca=2;
                        adr=31;
                    end
                    push_samp=0;
                    samp00=32'h12345678;
                    samp01=32'h87654321;
                    samp02=samp00;
                    samp03=samp01;
                    samp04=$random();
                    samp22=$random();
                    if(rand_wdelay && ($urandom_range(0,32)>20)) begin
                        repeat($urandom_range(1,4)) @(posedge(clk)) #1;
                    end
                end else begin
                    $display("e with wrong sa");
                    $finish;
                end
                if(sx>100) rand_wdelay=1;
                if(sx > 200) happy=1;
            end
            default:
                $display("Im lost on %s",strx);
//                $display(strx);
        endcase
    end

    $fclose(f);
    while(efifo.size() > 0) begin
        @(posedge(clk)) #1;
    end
    $display("\n\n\nSmile, You passed the test\n\n\n");
    $finish;
end




c5x72 c(clk,reset,ca,cd, cw, push_samp,
    samp00,samp01,samp02,samp03,samp04,
	samp10,samp11,samp12,samp13,samp14,
	samp20,samp21,samp22,samp23,samp24,
	samp30,samp31,samp32,samp33,samp34,
	samp40,samp41,samp42,samp43,samp44,
	samp50,samp51,samp52,samp53,samp54,
	samp60,samp61,samp62,samp63,samp64,
	pushout, stopout, res);


endmodule : top
