// glsl style mod - thank you bgolus
//https://forum.unity.com/threads/translating-a-glsl-shader-noise-algorithm-to-hlsl-cg.485750/#post-3164874
#define mod(x, y) (x - y * floor(x / y))


// Modulo 289, optimizes to code without divisions in glsl, probably hlsl too
float4 mod289(float4 x)
{
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}

float3 mod289(float3 x)
{
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}

float2 mod289(float2 x)
{
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}

float mod289(float x)
{
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}


// Modulo 7 without a division
float4 mod7(float4 x)
{
  return x - floor(x * (1.0 / 7.0)) * 7.0;
}

float3 mod7(float3 x)
{
  return x - floor(x * (1.0 / 7.0)) * 7.0;
}

float2 mod7(float2 x)
{
  return x - floor(x * (1.0 / 7.0)) * 7.0;
}

float mod7(float x)
{
  return x - floor(x * (1.0 / 7.0)) * 7.0;
}


// Permutation polynomial: (34x^2 + 6x) mod 289
float4 permute(float4 x)
{
     return mod289(((x*34.0)+1.0)*x);
}

float3 permute(float3 x)
{
     return mod289(((x*34.0)+1.0)*x);
}

float2 permute(float2 x)
{
     return mod289(((x*34.0)+1.0)*x);
}

float permute(float x)
{
     return mod289(((x*34.0)+1.0)*x);
}


float4 taylorInvSqrt(float4 r)
{
  return 1.79284291400159 - 0.85373472095314 * r;
}

float3 taylorInvSqrt(float3 r)
{
  return 1.79284291400159 - 0.85373472095314 * r;
}

float2 taylorInvSqrt(float2 r)
{
  return 1.79284291400159 - 0.85373472095314 * r;
}

float taylorInvSqrt(float r)
{
  return 1.79284291400159 - 0.85373472095314 * r;
}


float4 fade(float4 t)
{
  return t*t*t*(t*(t*6.0-15.0)+10.0);
}

float3 fade(float3 t)
{
  return t*t*t*(t*(t*6.0-15.0)+10.0);
}

float2 fade(float2 t)
{
  return t*t*t*(t*(t*6.0-15.0)+10.0);
}

float fade(float t)
{
  return t*t*t*(t*(t*6.0-15.0)+10.0);
}