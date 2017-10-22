module SpriteTable (
	input Clk,
	input logic [7:0] Sprite,
	input logic [9:0] DrawX, DrawY,
	output logic [7:0] color
	
);


	int ship [49][51];
	int X, Y;
		
	always_ff @ (posedge Clk) begin
		ship = '{'
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 0, 0, 0, 4, 5, 2, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 0, 2, 2, 2, 5, 5, 2, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{0, 2, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2},
'{5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 5, 5},
'{5, 5, 5, 5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5},
'{5, 5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5},
'{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 0, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 1, 0, 3, 0, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 0, 1, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 4, 0, 1, 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 2, 2, 1, 1, 0, 4, 2, 2, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 0, 1, 1, 4, 2, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 5, 2, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 0, 1, 1, 4, 5, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 0, 1, 1, 1, 1, 1, 1, 4, 5, 2, 1, 1, 0, 2, 5, 5, 5, 5, 2, 2, 2, 5, 5, 5, 5, 2, 0, 1, 1, 4, 5, 2, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
'{3, 0, 1, 1, 1, 1, 1, 4, 5, 2, 1, 1, 0, 2, 5, 5, 5, 5, 2, 3, 3, 2, 5, 5, 5, 2, 0, 1, 1, 4, 5, 2, 0, 1, 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 1, 1, 1, 0, 3, 3, 0},
'{1, 1, 1, 1, 1, 4, 5, 2, 1, 1, 0, 2, 5, 5, 5, 2, 2, 3, 3, 2, 5, 5, 5, 2, 0, 1, 1, 4, 5, 2, 0, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1, 1, 1, 0, 3, 3, 0, 1, 1},
'{1, 1, 1, 4, 5, 2, 0, 0, 0, 2, 5, 2, 2, 2, 3, 3, 3, 2, 2, 2, 5, 2, 4, 0, 0, 2, 5, 2, 0, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 0, 1, 1, 1, 1},
'{1, 4, 5, 2, 4, 0, 4, 5, 5, 3, 3, 3, 3, 3, 3, 3, 3, 2, 5, 5, 4, 0, 0, 2, 5, 2, 0, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1, 1, 1, 0, 3, 3, 0, 1, 1, 1, 1, 1, 4},
'{5, 2, 4, 4, 4, 5, 5, 3, 3, 3, 3, 3, 3, 3, 3, 2, 5, 5, 4, 4, 4, 2, 5, 4, 0, 1, 1, 1, 1, 0, 3, 3, 1, 1, 1, 1, 1, 1, 1, 0, 2, 2, 0, 1, 1, 1, 1, 1, 0, 4, 4},
'{2, 2, 5, 5, 5, 3, 3, 3, 2, 2, 2, 3, 3, 2, 5, 5, 5, 2, 2, 4, 4, 0, 0, 1, 1, 1, 1, 0, 2, 2, 0, 1, 1, 1, 1, 1, 1, 0, 2, 2, 0, 1, 1, 1, 1, 1, 0, 0, 4, 5, 5},
'{5, 5, 5, 3, 3, 3, 2, 5, 2, 3, 3, 2, 5, 5, 5, 5, 5, 4, 4, 0, 1, 1, 1, 1, 1, 0, 2, 2, 0, 1, 1, 1, 1, 1, 1, 0, 2, 2, 0, 1, 1, 1, 1, 1, 0, 4, 4, 5, 5, 5, 5},
'{5, 2, 3, 2, 2, 5, 5, 2, 3, 2, 5, 5, 5, 5, 5, 4, 4, 0, 1, 1, 1, 1, 1, 0, 5, 2, 0, 1, 1, 1, 1, 1, 1, 0, 2, 2, 0, 1, 1, 0, 2, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5},
'{2, 2, 5, 5, 5, 2, 2, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 0, 1, 1, 0, 5, 2, 0, 1, 1, 1, 1, 1, 1, 0, 2, 2, 0, 1, 1, 0, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
'{5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 1, 1, 0, 2, 2, 0, 1, 1, 1, 1, 1, 1, 0, 2, 5, 2, 0, 0, 2, 2, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 5, 5, 5, 5},
'{5, 5, 5, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5, 5, 2, 0, 0, 4, 5, 2, 0, 1, 1, 1, 1, 1, 1, 0, 2, 5, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5, 5, 2, 3, 3, 2, 5, 5, 5, 5, 5, 5},
'{5, 2, 3, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 5, 2, 0, 1, 1, 1, 1, 1, 1, 0, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 2, 3, 3, 2, 5, 5, 5, 5, 5, 5, 5, 2},
'{3, 3, 2, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 3, 3, 3, 2, 5, 5, 5, 5, 5, 5, 5, 2, 3, 3},
'{3, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 2, 5, 5, 5, 5, 5, 5, 5, 2, 3, 3, 3, 3},
'{3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 2, 2, 2, 2, 5, 5, 2, 2, 2, 3, 3, 3, 3, 3, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 0, 0, 0, 0, 5, 2, 0, 0, 0, 3, 3, 3, 3, 3, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 0, 1, 1, 0, 5, 2, 1, 1, 1, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 5, 2, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
'{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1} };
		
	end
	
/*
	0 = '0x2C2B2C' = DARK GRAY
	1 = '0x000000' = BLACK
	2 = '0xDCDCDC' = LIGHT GRAY
	3 = '0xFF0000' = RED
	4 = '0x65B0FF' = BABY BLUE
   5 = '0xFCFCFC' = WHITE
*/
	
	
always_ff @ (posedge Clk)
begin

	//Set Y and X values to something based on DrawX and DrawY
	
	
	unique case (Sprite)
		8'h00:
		begin
			color = 8'h05;//ship[2][20];
		end
		
		default:
		begin
			color = 8'h01;
		end
	endcase


end

endmodule
	