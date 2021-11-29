
module Nios2 (
	audio_clk_clk,
	audio_pll_ref_clk_clk,
	audio_pll_ref_reset_reset,
	audiocore_ADCDAT,
	audiocore_ADCLRCK,
	audiocore_BCLK,
	audiocore_DACDAT,
	audiocore_DACLRCK,
	avconfig_SDAT,
	avconfig_SCLK,
	clk_clk,
	gpio_expansion_export,
	hex0_export,
	hex1_export,
	hex2_export,
	hex3_export,
	hex4_export,
	hex5_export,
	hex6_export,
	hex7_export,
	keys_export,
	ledg_export,
	ledr_export,
	reset_reset,
	sdram_clk_clk,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n,
	switches_export);	

	output		audio_clk_clk;
	input		audio_pll_ref_clk_clk;
	input		audio_pll_ref_reset_reset;
	input		audiocore_ADCDAT;
	input		audiocore_ADCLRCK;
	input		audiocore_BCLK;
	output		audiocore_DACDAT;
	input		audiocore_DACLRCK;
	inout		avconfig_SDAT;
	output		avconfig_SCLK;
	input		clk_clk;
	inout	[31:0]	gpio_expansion_export;
	output	[6:0]	hex0_export;
	output	[6:0]	hex1_export;
	output	[6:0]	hex2_export;
	output	[6:0]	hex3_export;
	output	[6:0]	hex4_export;
	output	[6:0]	hex5_export;
	output	[6:0]	hex6_export;
	output	[6:0]	hex7_export;
	input	[3:0]	keys_export;
	output	[7:0]	ledg_export;
	output	[17:0]	ledr_export;
	input		reset_reset;
	output		sdram_clk_clk;
	output	[12:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[31:0]	sdram_wire_dq;
	output	[3:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
	input	[17:0]	switches_export;
endmodule
