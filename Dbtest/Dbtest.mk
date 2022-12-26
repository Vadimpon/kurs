##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Dbtest
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/stud/C++Projects/C++Projects
ProjectPath            :=/home/stud/C++Projects/C++Projects/Dbtest
IntermediateDirectory  :=../build-$(ConfigurationName)/Dbtest
OutDir                 :=../build-$(ConfigurationName)/Dbtest
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
Objects0=../build-$(ConfigurationName)/Dbtest/Error.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Dbtest/DataBase.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Dbtest/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Dbtest/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/Dbtest"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/Dbtest"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/Dbtest/.d:
	@mkdir -p "../build-$(ConfigurationName)/Dbtest"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Dbtest/Error.cpp$(ObjectSuffix): Error.cpp ../build-$(ConfigurationName)/Dbtest/Error.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/C++Projects/Dbtest/Error.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Error.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Dbtest/Error.cpp$(DependSuffix): Error.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Dbtest/Error.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Dbtest/Error.cpp$(DependSuffix) -MM Error.cpp

../build-$(ConfigurationName)/Dbtest/Error.cpp$(PreprocessSuffix): Error.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Dbtest/Error.cpp$(PreprocessSuffix) Error.cpp

../build-$(ConfigurationName)/Dbtest/DataBase.cpp$(ObjectSuffix): DataBase.cpp ../build-$(ConfigurationName)/Dbtest/DataBase.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/C++Projects/Dbtest/DataBase.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/DataBase.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Dbtest/DataBase.cpp$(DependSuffix): DataBase.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Dbtest/DataBase.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Dbtest/DataBase.cpp$(DependSuffix) -MM DataBase.cpp

../build-$(ConfigurationName)/Dbtest/DataBase.cpp$(PreprocessSuffix): DataBase.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Dbtest/DataBase.cpp$(PreprocessSuffix) DataBase.cpp

../build-$(ConfigurationName)/Dbtest/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/Dbtest/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/C++Projects/Dbtest/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Dbtest/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Dbtest/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Dbtest/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/Dbtest/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Dbtest/main.cpp$(PreprocessSuffix) main.cpp


-include ../build-$(ConfigurationName)/Dbtest//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


