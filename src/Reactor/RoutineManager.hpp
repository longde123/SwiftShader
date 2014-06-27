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

#ifndef sw_RoutineManager_hpp
#define sw_RoutineManager_hpp

#include "llvm/IR/GlobalValue.h"
#include "llvm/ExecutionEngine/JITMemoryManager.h"

namespace sw
{
	class Routine;

	class RoutineManager : public llvm::JITMemoryManager
	{
	public:
		RoutineManager();

		virtual ~RoutineManager();

		virtual uint8_t *allocateCodeSection(uintptr_t Size, unsigned Alignment, unsigned SectionID, llvm::StringRef SectionName);
		virtual uint8_t *allocateDataSection(uintptr_t Size, unsigned Alignment, unsigned SectionID, llvm::StringRef SectionName, bool IsReadOnly);
		virtual bool finalizeMemory(std::string *ErrMsg = 0);

		virtual void setMemoryWritable();
		virtual void setMemoryExecutable();
		virtual void setPoisonMemory(bool poison);

		virtual void AllocateGOT();
		virtual uint8_t *getGOTBase() const;

		virtual void *getPointerToNamedFunction(const std::string &Name, bool AbortOnFailure = true);

		virtual uint8_t *startFunctionBody(const llvm::Function *function, uintptr_t &actualSize);
		virtual uint8_t *allocateStub(const llvm::GlobalValue *function, unsigned stubSize, unsigned alignment);
		virtual void endFunctionBody(const llvm::Function *function, uint8_t *functionStart, uint8_t *functionEnd);
		virtual uint8_t *allocateSpace(intptr_t Size, unsigned Alignment);
		virtual uint8_t *allocateGlobal(uintptr_t Size, unsigned int Alignment);
		virtual void deallocateFunctionBody(void *Body);

		Routine *acquireRoutine(void *entry);

	private:
		Routine *routine;

		static volatile int averageInstructionSize;
	};
}

#endif   // sw_RoutineManager_hpp
