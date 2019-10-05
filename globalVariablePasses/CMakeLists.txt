cmake_minimum_required(VERSION 3.10)
add_llvm_library(LLVMGlobalVars MODULE
		printGlobalVars.cpp
		globalVariableUtils.cpp

)

