// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/alex1/AppData/Roaming/Xilinx/Vitis/core.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/alex1/AppData/Roaming/Xilinx/Vitis/core.cpp"
float gravity(float m1, float m2, float distance)
{
 float force = 0;
 float distSquare = 0;
 if(distance == 0)
 {
  distSquare = 0.000001f;
 }
 else distSquare = distance*distance;
 force = 10.0f*(m1*m2)/distSquare;
 return force;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
float apatb_gravity_ir(float, float, float);
#ifdef __cplusplus
extern "C"
#endif
float gravity_hw_stub(float m1, float m2, float distance){
float _ret = gravity(m1, m2, distance);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
float apatb_gravity_sw(float m1, float m2, float distance){
float _ret = apatb_gravity_ir(m1, m2, distance);
return _ret;
}
#endif
# 12 "C:/Users/alex1/AppData/Roaming/Xilinx/Vitis/core.cpp"

