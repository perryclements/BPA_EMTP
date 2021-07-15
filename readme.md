# Setting up oneAPI on Windows 10

I followed an excellent guide at



https://www.scivision.dev/intel-oneapi-fortran-install/



The main steps are:

1. Install Visual Studio Community

2. Install oneAPI_Base_Toolkit

3. Install oneAPI_HPC_Toolkit

	- After the installation is finished, check **Get Started** before clicking the finish button.

	-  Follow to guide

## Get Started

- Install **cmake**
	- Will be useful to build samples
	- Download msi installer file and run
	- Check *add CMake to the system path for all users*. Note that this is not set by default
	
- **Run a sample project**
	- Command Line
	- Visual Studio
- Click Visual Studio

## Compile and run fortran program manually
-Create fortran programs say main.for and add.for
-Compile 

- ** Before we use oneAPI compiler, we must set environment variables by launching a special command prompt which was created by oneAPI installation**
-from start menu, locate and run 
** ``` Intel oneAPI Command prompt for Intel 64 for Visual Studio 2019``` **
This will launch a command window and will set environment variables. Use it like a regular comand window.

	FORTRAN compiler is invoked by typing **IFX** at the sommand prompt. For example

 - ifx -c main.for
 - ifx -c add.for
 - ifx -o test.exe main.obj add.obj
 - test
 - OR to compile and link in one step
 - ifx -o test.exe main.for add.for
 - test
