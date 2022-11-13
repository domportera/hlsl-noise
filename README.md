
Ports of [this port](https://github.com/hughsk/glsl-noise) of [this library](https://github.com/ashima/webgl-noise) as well as that original library are included. [This fork](https://github.com/stegu/webgl-noise) of the original library is your best source of information about these functions.

I have also included and converted that latter fork's author's [improved simplex noise](https://github.com/stegu/psrdnoise/).

I am aware that this means there are some duplicates here, but there are differences between them, especially the improved ones, and having them all in their entirety is convenient for me and respectful to The Great Archive.

These have been modified for compatibility with HLSL (of course), removing redundant code and renaming things where necessary so that you may #include to your heart's content without worrying about function redefinition errors.

I have not tested this entire library in full, and I'd be lying if said I knew how to use every function available. However, visiting the original libraries and their wikis should provide you better context than I could.