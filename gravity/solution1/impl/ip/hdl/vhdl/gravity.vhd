-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gravity is
generic (
    C_S_AXI_CRTLS_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_CRTLS_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    distance : IN STD_LOGIC_VECTOR (31 downto 0);
    s_axi_CRTLS_AWVALID : IN STD_LOGIC;
    s_axi_CRTLS_AWREADY : OUT STD_LOGIC;
    s_axi_CRTLS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CRTLS_ADDR_WIDTH-1 downto 0);
    s_axi_CRTLS_WVALID : IN STD_LOGIC;
    s_axi_CRTLS_WREADY : OUT STD_LOGIC;
    s_axi_CRTLS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CRTLS_DATA_WIDTH-1 downto 0);
    s_axi_CRTLS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CRTLS_DATA_WIDTH/8-1 downto 0);
    s_axi_CRTLS_ARVALID : IN STD_LOGIC;
    s_axi_CRTLS_ARREADY : OUT STD_LOGIC;
    s_axi_CRTLS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CRTLS_ADDR_WIDTH-1 downto 0);
    s_axi_CRTLS_RVALID : OUT STD_LOGIC;
    s_axi_CRTLS_RREADY : IN STD_LOGIC;
    s_axi_CRTLS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CRTLS_DATA_WIDTH-1 downto 0);
    s_axi_CRTLS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_CRTLS_BVALID : OUT STD_LOGIC;
    s_axi_CRTLS_BREADY : IN STD_LOGIC;
    s_axi_CRTLS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of gravity is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "gravity_gravity,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.702000,HLS_SYN_LAT=23,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=553,HLS_SYN_LUT=1077,HLS_VERSION=2020_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (23 downto 0) := "000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (23 downto 0) := "000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (23 downto 0) := "000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (23 downto 0) := "000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (23 downto 0) := "000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (23 downto 0) := "000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (23 downto 0) := "000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (23 downto 0) := "000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (23 downto 0) := "000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (23 downto 0) := "001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (23 downto 0) := "010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (23 downto 0) := "100000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_41200000 : STD_LOGIC_VECTOR (31 downto 0) := "01000001001000000000000000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv32_358637BD : STD_LOGIC_VECTOR (31 downto 0) := "00110101100001100011011110111101";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal m1 : STD_LOGIC_VECTOR (31 downto 0);
    signal m2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_68_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul1_reg_148 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln5_fu_109_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln5_reg_160 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln5_1_fu_115_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln5_1_reg_165 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_85_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_170 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal distSquare_1_fu_130_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal distSquare_1_reg_175 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_fu_76_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul2_reg_180 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_68_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_68_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal bitcast_ln5_fu_91_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_95_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln5_fu_105_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal or_ln5_fu_121_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln5_fu_125_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_81_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state24 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state24 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_ce_reg : STD_LOGIC;
    signal ap_return : STD_LOGIC_VECTOR (31 downto 0);

    component gravity_fmul_32ns_32ns_32_4_max_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component gravity_fdiv_32ns_32ns_32_16_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component gravity_fcmp_32ns_32ns_1_2_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component gravity_CRTLS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC;
        ap_return : IN STD_LOGIC_VECTOR (31 downto 0);
        m1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        m2 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    CRTLS_s_axi_U : component gravity_CRTLS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CRTLS_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CRTLS_DATA_WIDTH)
    port map (
        AWVALID => s_axi_CRTLS_AWVALID,
        AWREADY => s_axi_CRTLS_AWREADY,
        AWADDR => s_axi_CRTLS_AWADDR,
        WVALID => s_axi_CRTLS_WVALID,
        WREADY => s_axi_CRTLS_WREADY,
        WDATA => s_axi_CRTLS_WDATA,
        WSTRB => s_axi_CRTLS_WSTRB,
        ARVALID => s_axi_CRTLS_ARVALID,
        ARREADY => s_axi_CRTLS_ARREADY,
        ARADDR => s_axi_CRTLS_ARADDR,
        RVALID => s_axi_CRTLS_RVALID,
        RREADY => s_axi_CRTLS_RREADY,
        RDATA => s_axi_CRTLS_RDATA,
        RRESP => s_axi_CRTLS_RRESP,
        BVALID => s_axi_CRTLS_BVALID,
        BREADY => s_axi_CRTLS_BREADY,
        BRESP => s_axi_CRTLS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle,
        ap_return => grp_fu_81_p2,
        m1 => m1,
        m2 => m2);

    fmul_32ns_32ns_32_4_max_dsp_1_U1 : component gravity_fmul_32ns_32ns_32_4_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => grp_fu_68_p0,
        din1 => grp_fu_68_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_68_p2);

    fmul_32ns_32ns_32_4_max_dsp_1_U2 : component gravity_fmul_32ns_32ns_32_4_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => mul1_reg_148,
        din1 => ap_const_lv32_41200000,
        ce => ap_const_logic_1,
        dout => grp_fu_76_p2);

    fdiv_32ns_32ns_32_16_no_dsp_1_U3 : component gravity_fdiv_32ns_32ns_32_16_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 16,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => mul2_reg_180,
        din1 => distSquare_1_reg_175,
        ce => ap_const_logic_1,
        dout => grp_fu_81_p2);

    fcmp_32ns_32ns_1_2_no_dsp_1_U4 : component gravity_fcmp_32ns_32ns_1_2_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => distance,
        din1 => ap_const_lv32_0,
        ce => ap_const_logic_1,
        opcode => ap_const_lv5_1,
        dout => grp_fu_85_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                distSquare_1_reg_175 <= distSquare_1_fu_130_p3;
                mul2_reg_180 <= grp_fu_76_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                icmp_ln5_1_reg_165 <= icmp_ln5_1_fu_115_p2;
                icmp_ln5_reg_160 <= icmp_ln5_fu_109_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                mul1_reg_148 <= grp_fu_68_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                tmp_1_reg_170 <= grp_fu_85_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    and_ln5_fu_125_p2 <= (tmp_1_reg_170 and or_ln5_fu_121_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state24 <= ap_CS_fsm(23);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state24)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state24)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state24)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state24)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    bitcast_ln5_fu_91_p1 <= distance;
    distSquare_1_fu_130_p3 <= 
        ap_const_lv32_358637BD when (and_ln5_fu_125_p2(0) = '1') else 
        grp_fu_68_p2;

    grp_fu_68_p0_assign_proc : process(ap_CS_fsm_state1, m1, distance, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_fu_68_p0 <= distance;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_68_p0 <= m1;
        else 
            grp_fu_68_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_68_p1_assign_proc : process(ap_CS_fsm_state1, m2, distance, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_fu_68_p1 <= distance;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_68_p1 <= m2;
        else 
            grp_fu_68_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    icmp_ln5_1_fu_115_p2 <= "1" when (trunc_ln5_fu_105_p1 = ap_const_lv23_0) else "0";
    icmp_ln5_fu_109_p2 <= "0" when (tmp_fu_95_p4 = ap_const_lv8_FF) else "1";
    or_ln5_fu_121_p2 <= (icmp_ln5_reg_160 or icmp_ln5_1_reg_165);
    tmp_fu_95_p4 <= bitcast_ln5_fu_91_p1(30 downto 23);
    trunc_ln5_fu_105_p1 <= bitcast_ln5_fu_91_p1(23 - 1 downto 0);
end behav;
