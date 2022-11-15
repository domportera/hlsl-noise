// psrdnoise (c) 2021 Stefan Gustavson and Ian McEwan
// Published under the MIT license.
// https://github.com/stegu/psrdnoise/

#ifndef __STEGUMATH_HLSL__
#define __STEGUMATH_HLSL__

#include "glsl-translations.hlsl"

// Modulo 289, optimizes to code without divisions in glsl, probably hlsl too (1.0 / 289.0 -> 0.0034602076124567)
#define mod289(x) (x - floor(x * (1.0 / 289.0)) * 289.0)

// Modulo 7 without a division, just like mod289
#define mod7(x) (x - floor(x * (1.0 / 7.0)) * 7.0)

// Permutation polynomial: (34x^2 + 6x) mod 289
#define permute(x) (mod289(((x*34.0)+1.0)*x))

// Permutation polynomial for the hash value
float4 permute2(float4 x) {
     float4 xm = mod(x, 289.0);
     return mod(((xm*34.0)+10.0)*xm, 289.0);
}

#define taylorInvSqrt(r) (1.79284291400159 - 0.85373472095314 * r)

#define fade(t) (t*t*t*(t*(t*6.0-15.0)+10.0))

#endif // __STEGUMATH_HLSL__
