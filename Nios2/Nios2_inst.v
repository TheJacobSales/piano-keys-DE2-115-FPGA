	Nios2 u0 (
		.audio_clk_clk             (<connected-to-audio_clk_clk>),             //           audio_clk.clk
		.audio_pll_ref_clk_clk     (<connected-to-audio_pll_ref_clk_clk>),     //   audio_pll_ref_clk.clk
		.audio_pll_ref_reset_reset (<connected-to-audio_pll_ref_reset_reset>), // audio_pll_ref_reset.reset
		.audiocore_ADCDAT          (<connected-to-audiocore_ADCDAT>),          //           audiocore.ADCDAT
		.audiocore_ADCLRCK         (<connected-to-audiocore_ADCLRCK>),         //                    .ADCLRCK
		.audiocore_BCLK            (<connected-to-audiocore_BCLK>),            //                    .BCLK
		.audiocore_DACDAT          (<connected-to-audiocore_DACDAT>),          //                    .DACDAT
		.audiocore_DACLRCK         (<connected-to-audiocore_DACLRCK>),         //                    .DACLRCK
		.avconfig_SDAT             (<connected-to-avconfig_SDAT>),             //            avconfig.SDAT
		.avconfig_SCLK             (<connected-to-avconfig_SCLK>),             //                    .SCLK
		.clk_clk                   (<connected-to-clk_clk>),                   //                 clk.clk
		.gpio_expansion_export     (<connected-to-gpio_expansion_export>),     //      gpio_expansion.export
		.hex0_export               (<connected-to-hex0_export>),               //                hex0.export
		.hex1_export               (<connected-to-hex1_export>),               //                hex1.export
		.hex2_export               (<connected-to-hex2_export>),               //                hex2.export
		.hex3_export               (<connected-to-hex3_export>),               //                hex3.export
		.hex4_export               (<connected-to-hex4_export>),               //                hex4.export
		.hex5_export               (<connected-to-hex5_export>),               //                hex5.export
		.hex6_export               (<connected-to-hex6_export>),               //                hex6.export
		.hex7_export               (<connected-to-hex7_export>),               //                hex7.export
		.keys_export               (<connected-to-keys_export>),               //                keys.export
		.ledg_export               (<connected-to-ledg_export>),               //                ledg.export
		.ledr_export               (<connected-to-ledr_export>),               //                ledr.export
		.reset_reset               (<connected-to-reset_reset>),               //               reset.reset
		.sdram_clk_clk             (<connected-to-sdram_clk_clk>),             //           sdram_clk.clk
		.sdram_wire_addr           (<connected-to-sdram_wire_addr>),           //          sdram_wire.addr
		.sdram_wire_ba             (<connected-to-sdram_wire_ba>),             //                    .ba
		.sdram_wire_cas_n          (<connected-to-sdram_wire_cas_n>),          //                    .cas_n
		.sdram_wire_cke            (<connected-to-sdram_wire_cke>),            //                    .cke
		.sdram_wire_cs_n           (<connected-to-sdram_wire_cs_n>),           //                    .cs_n
		.sdram_wire_dq             (<connected-to-sdram_wire_dq>),             //                    .dq
		.sdram_wire_dqm            (<connected-to-sdram_wire_dqm>),            //                    .dqm
		.sdram_wire_ras_n          (<connected-to-sdram_wire_ras_n>),          //                    .ras_n
		.sdram_wire_we_n           (<connected-to-sdram_wire_we_n>),           //                    .we_n
		.switches_export           (<connected-to-switches_export>)            //            switches.export
	);

