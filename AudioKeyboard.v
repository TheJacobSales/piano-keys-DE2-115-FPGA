module AudioKeyboard(LEDR,LEDG,CLOCK_50,CLOCK2_50,RESET,KEY,SW,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7,
GPIO,
AUD_XCK, AUD_ADCLRCK,AUD_ADCDAT,AUD_DACLRCK,AUD_BCLK,AUD_DACDAT, I2C_SCLK, I2C_SDAT,
DRAM_CLK,DRAM_CKE,DRAM_ADDR,DRAM_BA,DRAM_CS_N,DRAM_CAS_N,DRAM_RAS_N,DRAM_WE_N,DRAM_DQ,DRAM_DQM);
	
	input CLOCK_50, CLOCK2_50;
	input RESET;
	input [3:0] KEY;
	input [17:0] SW;
	output [17:0] LEDR;
	output [7:0] LEDG;
	output [12:0] DRAM_ADDR;
	output [1:0] DRAM_BA;
	output DRAM_CAS_N,DRAM_RAS_N,DRAM_CLK;
	output DRAM_CKE,DRAM_CS_N,DRAM_WE_N;
	output [3:0] DRAM_DQM;
	inout [31:0] DRAM_DQ;
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;
	output [6:0] HEX4;
	output [6:0] HEX5;
	output [6:0] HEX6;
	output [6:0] HEX7;
	input AUD_ADCLRCK, AUD_ADCDAT, AUD_DACLRCK, AUD_BCLK;
	output AUD_DACDAT, AUD_XCK;
	inout I2C_SDAT;
	output I2C_SCLK;
	inout [31:0] GPIO;
	wire [31:0] HEX0_3;
	wire [31:0] HEX4_7;
	assign HEX0_3 = {1'b0,HEX3,1'b0,HEX2,1'b0,HEX4,1'b0,HEX0};
	assign HEX4_7 = {1'b0,HEX7,1'b0,HEX6,1'b0,HEX5,1'b0,HEX4};
	Nios2 mySystem(
		.audio_clk_clk(AUD_XCK),
		.audio_pll_ref_clk_clk(CLOCK2_50),
		.audio_pll_ref_reset_reset(RESET),
		.audiocore_ADCDAT(AUD_ADCDAT),
		.audiocore_ADCLRCK(AUD_ADCLRCK),
		.audiocore_BCLK(AUD_BCLK),
		.audiocore_DACDAT(AUD_DACDAT),
		.audiocore_DACLRCK(AUD_DACLRCK),
		.avconfig_SDAT(I2C_SDAT),
		.avconfig_SCLK(I2C_SCLK),
		.clk_clk(CLOCK_50),
		.gpio_expansion_export(GPIO),
		.keys_export(KEY),
		.ledr_export(LEDR),
		.ledg_export(LEDG),
		.reset_reset(RESET),
		.switches_export(SW),
		.hex0_export(HEX0),
		.hex1_export(HEX1),
		.hex2_export(HEX2),
		.hex3_export(HEX3),
		.hex4_export(HEX4),
		.hex5_export(HEX5),
		.hex6_export(HEX6),
		.hex7_export(HEX7),
		.sdram_clk_clk(DRAM_CLK),
		.sdram_wire_addr(DRAM_ADDR),
		.sdram_wire_ba(DRAM_BA),
		.sdram_wire_cas_n(DRAM_CAS_N),
		.sdram_wire_cke(DRAM_CKE),
		.sdram_wire_cs_n(DRAM_CS_N),
		.sdram_wire_dq(DRAM_DQ),
		.sdram_wire_dqm(DRAM_DQM),
		.sdram_wire_ras_n(DRAM_RAS_N),
		.sdram_wire_we_n(DRAM_WE_N));
endmodule 