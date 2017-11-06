# Unrealhx4Haxedevelop

This is a **automated** project template and tool/setup for Unreal.hx in Flashdevelop/Haxedevelop. With this you are able to code in Haxe, and create Unreal Engine 4 projects in Flashdevelop/Haxedevelop without using c++ code or Visual Studio.

**Please read the instructions!**

![](Screenshot.jpg?raw=true)

## Install :
Download the .fdz file from here:
[Unrealhx-template.fdz](https://github.com/datee/Unrealhx4Haxedevelop/raw/master/Unrealhx-template.fdz).
To install, just doubleclick it or drag/drop into FD/HD.

## What can i do with this template?
You can code in Haxe instead of c++ and work with Flashdevelop / Haxedevelop instead of using Visual Studio.

> **Workflow:**
>- Create new Haxe/Unreal.hx enabled UE4 projects without opening the UE4 launcher and/or manually setting up the plugin/tools.
>- Code in Haxe
>- Build UE4 projects
>- Rebuild UE4 projects
>- Quickcompile with Unreal.hx Cppia ( Read about it [**here**](https://github.com/proletariatgames/unreal.hx/wiki/Faster-compiler-iteration-with-cppia) )
>- Package UE4 projects for release/shipping, and cook UE4 content
 
## What is Unreal.hx?
Unreal.hx is an amazing plugin for Unreal Engine 4 that allows you to write code in the [Haxe](https://haxe.org) programming language. It is written by [Proletariatgames](http://proletariat.com/).
If you are not familiar with it, please read more here : [https://github.com/proletariatgames/unreal.hx](https://github.com/proletariatgames/unreal.hx). 
Also, read the [**Unreal.hx Wiki!!**](https://github.com/proletariatgames/unreal.hx/wiki)

And if you are unfamiliar with Haxe : It is an open source toolkit based on a modern, high level, strictly typed programming language, a cross-compiler, a complete cross-platform standard library and ways to access each platform's native capabilities. See [www.haxe.org](https://haxe.org)


## What is required?
Unrealhx4Haxedevelop is a complete and tested setup for Unreal.hx and Haxe with Unreal Engine 4. It **should** work straight **out of the box.** HOWEVER; this is in early testing to things might not work for you. If you run into problems with the project template or setup, create an issue about this. For other issues related to Unreal.hx, see [Unreal.hx issues](https://github.com/proletariatgames/unreal.hx/issues)

**What you need:**
- [Flashdevelop 5.xx](http://www.flashdevelop.org/) or [Haxedevelop 5.xx](http://haxedevelop.org/)
- Unreal Engine 4.16 / 4.17 - *(Only 4.17 template exits for now)*
- Visual Studio 2015 - Only the c++ compiler *(2017 might work, but this is not tested)*
- Haxe 3.4.3 / 3.4.4 - [Download here](https://haxe.org/download/)
- Hxcpp 3.4.188 - *( haxelib install hxcpp )* *( Other versions might work, but this is not tested )*
- Hxcs 3.4.0 - *( haxelib install hxcs )* *( Other versions might work, but this is not tested )*


## The setup
When you create a new project from within FD/HD it will copy a lot of files to the project folder.

**Important!!! :**
> **The first time you hit compile, the project template will invoke the automated setup. This copies files, prepares UE4 setup, Unreal.hx options and does an initial full build of your project. It can take a bit of time, up to maybe 5-10 minutes depending
> on your computer speed.**


## Some things to know :
Even though Unreal.hx enables you to code in Haxe, you still NEED to know and understand how Unreal Engine 4 works. This is because the API and functions are still the same as in C++.
If you are unfamiliar with the Unreal Engine 4 API and workflow there is a lot of information available from Epic Games here : **[Unreal Engine 4 Documentation](https://docs.unrealengine.com/latest/INT/)**

## Working with Unreal.hx
In your project root you will have a folder called "haxe". Within this you will find two folders; **Static** and **Scripts**.

**Static** : This is your "normal" Haxe code that will build with the normal "Build UE4 Project" option. This code is staticly compiled to c++ and is available after you compile and launch the editor, or the Editor hotloads the c++ output.

**Scripts** : In this folder you can put all the Haxe classes you want to compile using Unreal.hx Cppia. This means it will compile superfast and dynamicly reload while the UE4 Editor is open. This makes for a very speedy workflow and iterations. 

A note about Cppia scripts: They can extend and use Static code, but NOT the other way around. Also; due to an issue with Hxcpp you cannot call "super()" from a cppia class that extends a static cod, it will crash. 

**Also : When packaging a UE4 project you have to move all your code from "Scripts" to "Static". This is because Cppia does not work in packaged projects, it is for fast code iterations only.**
