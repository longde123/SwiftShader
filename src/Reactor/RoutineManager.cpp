// SwiftShader Software Renderer
//
// Copyright(c) 2005-2011 TransGaming Inc.
//
// All rights reserved. No part of this software may be copied, distributed, transmitted,
// transcribed, stored in a retrieval system, translated into any human or computer
// language by any means, or disclosed to third parties without the explicit written
// agreement of TransGaming Inc. Without such an agreement, no rights or licenses, express
// or implied, including but not limited to any patent rights, are granted to you.
//

#include "RoutineManager.hpp"

#include "Routine.hpp"
#include "llvm/IR/Function.h"
#include "../Common/Memory.hpp"
#include "../Common/Thread.hpp"
#include "../Common/Debug.hpp"

#if __x86_64__
	extern "C" void __chkstk();
#else
	extern "C" void _chkstk();
#endif

namespace sw
{
	using namespace llvm;

	volatile int RoutineManager::averageInstructionSize = 4;

	RoutineManager::RoutineManager()
	{
		routine = 0;
	}

	RoutineManager::~RoutineManager()
	{
		delete routine;
	}

	uint8_t *RoutineManager::allocateCodeSection(uintptr_t Size, unsigned Alignment, unsigned SectionID, StringRef SectionName)
	{
		UNIMPLEMENTED();
		return 0;
	}
	
	uint8_t *RoutineManager::allocateDataSection(uintptr_t Size, unsigned Alignment, unsigned SectionID, StringRef SectionName, bool IsReadOnly)
	{
		UNIMPLEMENTED();
		return 0;
	}

	bool RoutineManager::finalizeMemory(std::string *ErrMsg)
	{
		UNIMPLEMENTED();
		return false;
	}

	void RoutineManager::setMemoryWritable()
	{
	}

	void RoutineManager::setMemoryExecutable()
	{
		markExecutable(routine->buffer, routine->bufferSize);
	}

	void RoutineManager::setPoisonMemory(bool poison)
	{
		UNIMPLEMENTED();
	}

	void RoutineManager::AllocateGOT()
	{
		UNIMPLEMENTED();
	}

	uint8_t *RoutineManager::getGOTBase() const
	{
		ASSERT(!HasGOT);
		return 0;
	}

	void *RoutineManager::getPointerToNamedFunction(const std::string &Name, bool AbortOnFailure)
	{
		#if __x86_64__
			if(Name == "__chkstk") return __chkstk;
		#else
			if(Name == "_chkstk") return _chkstk;
		#endif

		UNIMPLEMENTED();
		return 0;
	}

	uint8_t *RoutineManager::startFunctionBody(const llvm::Function *function, uintptr_t &actualSize)
	{
		if(actualSize == 0)   // Estimate size
		{
			int instructionCount = 0;
			for(llvm::Function::const_iterator basicBlock = function->begin(); basicBlock != function->end(); basicBlock++)
			{
				instructionCount += basicBlock->size();
			}

			actualSize = instructionCount * averageInstructionSize;
		}
		else   // Estimate was too low
		{
			sw::atomicIncrement(&averageInstructionSize);
		}

		// Round up to the next page size
		size_t pageSize = memoryPageSize();
		actualSize = (actualSize + pageSize - 1) & -pageSize;

		delete routine;
		routine = new Routine(actualSize);

		return (uint8_t*)routine->getBuffer();
	}

	uint8_t *RoutineManager::allocateStub(const GlobalValue *function, unsigned stubSize, unsigned alignment)
	{
		UNIMPLEMENTED();
		return 0;
	}

	void RoutineManager::endFunctionBody(const llvm::Function *function, uint8_t *functionStart, uint8_t *functionEnd)
	{
		routine->setFunctionSize(functionEnd - functionStart);
	}

	uint8_t *RoutineManager::allocateSpace(intptr_t Size, unsigned Alignment)
	{
		UNIMPLEMENTED();
		return 0;
	}

	uint8_t *RoutineManager::allocateGlobal(uintptr_t Size, unsigned Alignment)
	{
		UNIMPLEMENTED();
		return 0;
	}

	void RoutineManager::deallocateFunctionBody(void *Body)
	{
		delete routine;
		routine = 0;
	}

	Routine *RoutineManager::acquireRoutine(void *entry)
	{
		routine->entry = entry;

		Routine *result = routine;
		routine = 0;

		return result;
	}
}
