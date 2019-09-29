cmake_minimum_required(VERSION 3.10)
add_llvm_library(LLVMAddressSimilarity MODULE
		address-similarity.cpp
		printDebugInfo.cpp
)

