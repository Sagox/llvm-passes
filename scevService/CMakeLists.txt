cmake_minimum_required(VERSION 3.10)
add_llvm_library(LLVMSCEVpasses MODULE
		scevInfo.cpp
)

