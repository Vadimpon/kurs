##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=kursovaya
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/stud/C++Projects/Education
ProjectPath            :=/home/stud/C++Projects/Education/kursovaya
IntermediateDirectory  :=../build-$(ConfigurationName)/kursovaya
OutDir                 :=../build-$(ConfigurationName)/kursovaya
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
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)crypto++ 
ArLibs                 :=  "crypto++" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++-10
CC       := /usr/bin/gcc-10
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/kursovaya/DataBase.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/kursovaya/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/kursovaya/Connect.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/kursovaya/Error.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/kursovaya/Auth.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/kursovaya/interface.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/kursovaya/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/kursovaya"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/kursovaya"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/kursovaya/.d:
	@mkdir -p "../build-$(ConfigurationName)/kursovaya"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/kursovaya/DataBase.cpp$(ObjectSuffix): DataBase.cpp ../build-$(ConfigurationName)/kursovaya/DataBase.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/Education/kursovaya/DataBase.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/DataBase.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/kursovaya/DataBase.cpp$(DependSuffix): DataBase.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/kursovaya/DataBase.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/kursovaya/DataBase.cpp$(DependSuffix) -MM DataBase.cpp

../build-$(ConfigurationName)/kursovaya/DataBase.cpp$(PreprocessSuffix): DataBase.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/kursovaya/DataBase.cpp$(PreprocessSuffix) DataBase.cpp

../build-$(ConfigurationName)/kursovaya/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/kursovaya/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/Education/kursovaya/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/kursovaya/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/kursovaya/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/kursovaya/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/kursovaya/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/kursovaya/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/kursovaya/Connect.cpp$(ObjectSuffix): Connect.cpp ../build-$(ConfigurationName)/kursovaya/Connect.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/Education/kursovaya/Connect.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Connect.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/kursovaya/Connect.cpp$(DependSuffix): Connect.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/kursovaya/Connect.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/kursovaya/Connect.cpp$(DependSuffix) -MM Connect.cpp

../build-$(ConfigurationName)/kursovaya/Connect.cpp$(PreprocessSuffix): Connect.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/kursovaya/Connect.cpp$(PreprocessSuffix) Connect.cpp

../build-$(ConfigurationName)/kursovaya/Error.cpp$(ObjectSuffix): Error.cpp ../build-$(ConfigurationName)/kursovaya/Error.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/Education/kursovaya/Error.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Error.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/kursovaya/Error.cpp$(DependSuffix): Error.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/kursovaya/Error.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/kursovaya/Error.cpp$(DependSuffix) -MM Error.cpp

../build-$(ConfigurationName)/kursovaya/Error.cpp$(PreprocessSuffix): Error.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/kursovaya/Error.cpp$(PreprocessSuffix) Error.cpp

../build-$(ConfigurationName)/kursovaya/Auth.cpp$(ObjectSuffix): Auth.cpp ../build-$(ConfigurationName)/kursovaya/Auth.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/Education/kursovaya/Auth.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Auth.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/kursovaya/Auth.cpp$(DependSuffix): Auth.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/kursovaya/Auth.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/kursovaya/Auth.cpp$(DependSuffix) -MM Auth.cpp

../build-$(ConfigurationName)/kursovaya/Auth.cpp$(PreprocessSuffix): Auth.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/kursovaya/Auth.cpp$(PreprocessSuffix) Auth.cpp

../build-$(ConfigurationName)/kursovaya/interface.cpp$(ObjectSuffix): interface.cpp ../build-$(ConfigurationName)/kursovaya/interface.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/stud/C++Projects/Education/kursovaya/interface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/interface.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/kursovaya/interface.cpp$(DependSuffix): interface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/kursovaya/interface.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/kursovaya/interface.cpp$(DependSuffix) -MM interface.cpp

../build-$(ConfigurationName)/kursovaya/interface.cpp$(PreprocessSuffix): interface.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/kursovaya/interface.cpp$(PreprocessSuffix) interface.cpp


-include ../build-$(ConfigurationName)/kursovaya//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


