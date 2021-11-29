	component Nios2 is
		port (
			audio_clk_clk             : out   std_logic;                                        -- clk
			audio_pll_ref_clk_clk     : in    std_logic                     := 'X';             -- clk
			audio_pll_ref_reset_reset : in    std_logic                     := 'X';             -- reset
			audiocore_ADCDAT          : in    std_logic                     := 'X';             -- ADCDAT
			audiocore_ADCLRCK         : in    std_logic                     := 'X';             -- ADCLRCK
			audiocore_BCLK            : in    std_logic                     := 'X';             -- BCLK
			audiocore_DACDAT          : out   std_logic;                                        -- DACDAT
			audiocore_DACLRCK         : in    std_logic                     := 'X';             -- DACLRCK
			avconfig_SDAT             : inout std_logic                     := 'X';             -- SDAT
			avconfig_SCLK             : out   std_logic;                                        -- SCLK
			clk_clk                   : in    std_logic                     := 'X';             -- clk
			gpio_expansion_export     : inout std_logic_vector(31 downto 0) := (others => 'X'); -- export
			hex0_export               : out   std_logic_vector(6 downto 0);                     -- export
			hex1_export               : out   std_logic_vector(6 downto 0);                     -- export
			hex2_export               : out   std_logic_vector(6 downto 0);                     -- export
			hex3_export               : out   std_logic_vector(6 downto 0);                     -- export
			hex4_export               : out   std_logic_vector(6 downto 0);                     -- export
			hex5_export               : out   std_logic_vector(6 downto 0);                     -- export
			hex6_export               : out   std_logic_vector(6 downto 0);                     -- export
			hex7_export               : out   std_logic_vector(6 downto 0);                     -- export
			keys_export               : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			ledg_export               : out   std_logic_vector(7 downto 0);                     -- export
			ledr_export               : out   std_logic_vector(17 downto 0);                    -- export
			reset_reset               : in    std_logic                     := 'X';             -- reset
			sdram_clk_clk             : out   std_logic;                                        -- clk
			sdram_wire_addr           : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba             : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n          : out   std_logic;                                        -- cas_n
			sdram_wire_cke            : out   std_logic;                                        -- cke
			sdram_wire_cs_n           : out   std_logic;                                        -- cs_n
			sdram_wire_dq             : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm            : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_wire_ras_n          : out   std_logic;                                        -- ras_n
			sdram_wire_we_n           : out   std_logic;                                        -- we_n
			switches_export           : in    std_logic_vector(17 downto 0) := (others => 'X')  -- export
		);
	end component Nios2;

	u0 : component Nios2
		port map (
			audio_clk_clk             => CONNECTED_TO_audio_clk_clk,             --           audio_clk.clk
			audio_pll_ref_clk_clk     => CONNECTED_TO_audio_pll_ref_clk_clk,     --   audio_pll_ref_clk.clk
			audio_pll_ref_reset_reset => CONNECTED_TO_audio_pll_ref_reset_reset, -- audio_pll_ref_reset.reset
			audiocore_ADCDAT          => CONNECTED_TO_audiocore_ADCDAT,          --           audiocore.ADCDAT
			audiocore_ADCLRCK         => CONNECTED_TO_audiocore_ADCLRCK,         --                    .ADCLRCK
			audiocore_BCLK            => CONNECTED_TO_audiocore_BCLK,            --                    .BCLK
			audiocore_DACDAT          => CONNECTED_TO_audiocore_DACDAT,          --                    .DACDAT
			audiocore_DACLRCK         => CONNECTED_TO_audiocore_DACLRCK,         --                    .DACLRCK
			avconfig_SDAT             => CONNECTED_TO_avconfig_SDAT,             --            avconfig.SDAT
			avconfig_SCLK             => CONNECTED_TO_avconfig_SCLK,             --                    .SCLK
			clk_clk                   => CONNECTED_TO_clk_clk,                   --                 clk.clk
			gpio_expansion_export     => CONNECTED_TO_gpio_expansion_export,     --      gpio_expansion.export
			hex0_export               => CONNECTED_TO_hex0_export,               --                hex0.export
			hex1_export               => CONNECTED_TO_hex1_export,               --                hex1.export
			hex2_export               => CONNECTED_TO_hex2_export,               --                hex2.export
			hex3_export               => CONNECTED_TO_hex3_export,               --                hex3.export
			hex4_export               => CONNECTED_TO_hex4_export,               --                hex4.export
			hex5_export               => CONNECTED_TO_hex5_export,               --                hex5.export
			hex6_export               => CONNECTED_TO_hex6_export,               --                hex6.export
			hex7_export               => CONNECTED_TO_hex7_export,               --                hex7.export
			keys_export               => CONNECTED_TO_keys_export,               --                keys.export
			ledg_export               => CONNECTED_TO_ledg_export,               --                ledg.export
			ledr_export               => CONNECTED_TO_ledr_export,               --                ledr.export
			reset_reset               => CONNECTED_TO_reset_reset,               --               reset.reset
			sdram_clk_clk             => CONNECTED_TO_sdram_clk_clk,             --           sdram_clk.clk
			sdram_wire_addr           => CONNECTED_TO_sdram_wire_addr,           --          sdram_wire.addr
			sdram_wire_ba             => CONNECTED_TO_sdram_wire_ba,             --                    .ba
			sdram_wire_cas_n          => CONNECTED_TO_sdram_wire_cas_n,          --                    .cas_n
			sdram_wire_cke            => CONNECTED_TO_sdram_wire_cke,            --                    .cke
			sdram_wire_cs_n           => CONNECTED_TO_sdram_wire_cs_n,           --                    .cs_n
			sdram_wire_dq             => CONNECTED_TO_sdram_wire_dq,             --                    .dq
			sdram_wire_dqm            => CONNECTED_TO_sdram_wire_dqm,            --                    .dqm
			sdram_wire_ras_n          => CONNECTED_TO_sdram_wire_ras_n,          --                    .ras_n
			sdram_wire_we_n           => CONNECTED_TO_sdram_wire_we_n,           --                    .we_n
			switches_export           => CONNECTED_TO_switches_export            --            switches.export
		);

