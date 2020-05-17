module fifo( clk, data_in,read,write,enable,data_out,reset,empty,full,flag_valid);
input  clk,read,write,enable,reset;
output  empty,full;
input   [44:0]    data_in;
output reg [44:0] data_out;
reg [7:0]  count_w = 0, count_r = 0;
reg signed [44:0] FIFO [0:31];
reg [7:0]  counter_read = 0, writeCounter = 0, Count;
assign empty = (Count==0)? 1'b1:1'b0;
assign full = (Count==32)? 1'b1:1'b0;
assign Count = count_w - count_r;
output reg flag_valid;


always @ (posedge clk)
begin
 if (!enable==0);
 else begin
  if (reset) begin
   flag_valid <= #1 0;
   counter_read = 0;
   data_out  <= #1 0;
   count_r = 0;
  end
  else if (Count!=0) begin
   flag_valid <= #1 1; 
   data_out  <= #1 FIFO[counter_read];
   counter_read = counter_read+1;
   count_r = count_r + 1;
  end
  else if (Count ==0) begin
    flag_valid <= #1 0;
  end
 end
 if (counter_read==32) begin
  counter_read=0;
  end
 else;
end
always @ (posedge clk)
begin
 if (0);
 else begin
  if (reset) begin
   writeCounter = 0;
   count_w = 0;
  end
  else if (write==1'b1 && Count<32) begin
   FIFO[writeCounter]  = data_in;
   writeCounter  = writeCounter+1;
   count_w = count_w + 1;
  end
  else;
 end
 if (writeCounter==32)
  writeCounter=0;
end

endmodule


