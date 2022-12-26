##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=C++Projects
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/stud/C++Projects/C++Projects
ProjectPath            :=/home/stud/C++Projects/C++Projects/C++Projects
IntermediateDirectory  :=../build-$(ConfigurationName)/C++Projects
OutDir                 :=../build-$(ConfigurationName)/C++Projects
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=
Date                   :=12/26/22
CodeLitePath           :=/home/stud/.codelite
LinkerName             :=/usr/bin/g++-10
SharedObjectLinkerName :=/usr/bin/g++-10 -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)/usr/include/unittest++ 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)UnitTest++ 
ArLibs                 :=  "libUnitTest++.a" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++-10
CC       := /usr/bin/gcc-10
CXXFLAGS :=  -g $(Preprocessors)
CFLAGS   :=  -g $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/C++Projects/Error.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/C++Projects/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/C++Projects/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/C++Projects"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/C++Projects"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/C++Projects/.d:
	@mkdir -p "../build-$(ConfigurationName)/C++Projects"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/C++Projects/Error.cpp$(ObjectSuffix): Error.cpp ../build-$(ConfigurationName)/C++Projects/Error.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/C++Projects/C++Projects/Error.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Error.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/C++Projects/Error.cpp$(DependSuffix): Error.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/C++Projects/Error.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/C++Projects/Error.cpp$(DependSuffix) -MM Error.cpp

../build-$(ConfigurationName)/C++Projects/Error.cpp$(PreprocessSuffix): Error.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/C++Projects/Error.cpp$(PreprocessSuffix) Error.cpp

../build-$(ConfigurationName)/C++Projects/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/C++Projects/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/C++Projects/C++Projects/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/C++Projects/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/C++Projects/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/C++Projects/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/C++Projects/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/C++Projects/main.cpp$(PreprocessSuffix) main.cpp


-include ../build-$(ConfigurationName)/C++Projects//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


