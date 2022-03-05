// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CRTLS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x18 : Data signal of m1
//        bit 31~0 - m1[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of m2
//        bit 31~0 - m2[31:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XGRAVITY_CRTLS_ADDR_AP_CTRL   0x00
#define XGRAVITY_CRTLS_ADDR_GIE       0x04
#define XGRAVITY_CRTLS_ADDR_IER       0x08
#define XGRAVITY_CRTLS_ADDR_ISR       0x0c
#define XGRAVITY_CRTLS_ADDR_AP_RETURN 0x10
#define XGRAVITY_CRTLS_BITS_AP_RETURN 32
#define XGRAVITY_CRTLS_ADDR_M1_DATA   0x18
#define XGRAVITY_CRTLS_BITS_M1_DATA   32
#define XGRAVITY_CRTLS_ADDR_M2_DATA   0x20
#define XGRAVITY_CRTLS_BITS_M2_DATA   32

