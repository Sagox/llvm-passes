cmake_minimum_required(VERSION 3.10)
add_llvm_library(LLVMenumerator MODULE
	getFunctionNames.cpp
	getLoopNames.cpp
	getLoopFacts.cpp
	loopInstructionEnumerator.cpp
)
