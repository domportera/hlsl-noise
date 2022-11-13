Ports of [this library](https://github.com/ashima/webgl-noise) to HLSL. [This fork](https://github.com/stegu/webgl-noise) of the original library is your best source of information about these functions.

I have also included and converted that latter fork's author's [improved simplex noise](https://github.com/stegu/psrdnoise/) as well.

These have been modified for compatibility with HLSL (of course), removing redundant code and renaming things where necessary so that you may #include to your heart's content without worrying about function redefinition errors. I've even included a "noise-include-all.hlsl" for your convenience if you'd like to play around.

All comments have been maintained, with little added of my own. I am but a translator of genius work done by others.

I have not tested this entire library in full, and I'd be lying if said I knew how to use every function available. However, visiting the original libraries and their wikis/readmes should provide you better context than I could. If you encounter any bugs not present in the source material, please submit an issue or pull request.

I have only tested this library in Unity using a compute shader on DX11, and am curious to see if this works in other use cases. I assume it would, but I'm new to this.

When using this, ensure you are using a compiler that supports macros. If you're not, you may need to edit the `special-math.hlsl` file to convert the macros into several explicit overloaded functions.
