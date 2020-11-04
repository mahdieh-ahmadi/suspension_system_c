##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=suspension
ConfigurationName      :=Debug
WorkspacePath          :=E:/university/3991/mechatronic/homeworks/1/C/suspension
ProjectPath            :=E:/university/3991/mechatronic/homeworks/1/C/suspension/suspension
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=mahdie
Date                   :=25/10/2020
CodeLitePath           :=D:/CodeLite
LinkerName             :=C:/MinGW/bin/g++.exe
SharedObjectLinkerName :=C:/MinGW/bin/g++.exe -shared -fPIC
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="suspension.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/MinGW/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/MinGW/bin/ar.exe rcu
CXX      := C:/MinGW/bin/g++.exe
CC       := C:/MinGW/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/MinGW/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=D:\CodeLite
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/controller.c$(ObjectSuffix) $(IntermediateDirectory)/setpoint.c$(ObjectSuffix) $(IntermediateDirectory)/system.c$(ObjectSuffix) $(IntermediateDirectory)/YR.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c $(IntermediateDirectory)/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "E:/university/3991/mechatronic/homeworks/1/C/suspension/suspension/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM main.c

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) main.c

$(IntermediateDirectory)/controller.c$(ObjectSuffix): controller.c $(IntermediateDirectory)/controller.c$(DependSuffix)
	$(CC) $(SourceSwitch) "E:/university/3991/mechatronic/homeworks/1/C/suspension/suspension/controller.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/controller.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/controller.c$(DependSuffix): controller.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/controller.c$(ObjectSuffix) -MF$(IntermediateDirectory)/controller.c$(DependSuffix) -MM controller.c

$(IntermediateDirectory)/controller.c$(PreprocessSuffix): controller.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/controller.c$(PreprocessSuffix) controller.c

$(IntermediateDirectory)/setpoint.c$(ObjectSuffix): setpoint.c $(IntermediateDirectory)/setpoint.c$(DependSuffix)
	$(CC) $(SourceSwitch) "E:/university/3991/mechatronic/homeworks/1/C/suspension/suspension/setpoint.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/setpoint.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/setpoint.c$(DependSuffix): setpoint.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/setpoint.c$(ObjectSuffix) -MF$(IntermediateDirectory)/setpoint.c$(DependSuffix) -MM setpoint.c

$(IntermediateDirectory)/setpoint.c$(PreprocessSuffix): setpoint.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/setpoint.c$(PreprocessSuffix) setpoint.c

$(IntermediateDirectory)/system.c$(ObjectSuffix): system.c $(IntermediateDirectory)/system.c$(DependSuffix)
	$(CC) $(SourceSwitch) "E:/university/3991/mechatronic/homeworks/1/C/suspension/suspension/system.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/system.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/system.c$(DependSuffix): system.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/system.c$(ObjectSuffix) -MF$(IntermediateDirectory)/system.c$(DependSuffix) -MM system.c

$(IntermediateDirectory)/system.c$(PreprocessSuffix): system.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/system.c$(PreprocessSuffix) system.c

$(IntermediateDirectory)/YR.c$(ObjectSuffix): YR.c $(IntermediateDirectory)/YR.c$(DependSuffix)
	$(CC) $(SourceSwitch) "E:/university/3991/mechatronic/homeworks/1/C/suspension/suspension/YR.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/YR.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/YR.c$(DependSuffix): YR.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/YR.c$(ObjectSuffix) -MF$(IntermediateDirectory)/YR.c$(DependSuffix) -MM YR.c

$(IntermediateDirectory)/YR.c$(PreprocessSuffix): YR.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/YR.c$(PreprocessSuffix) YR.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


