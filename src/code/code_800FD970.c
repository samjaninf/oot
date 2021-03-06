#include <ultra64.h>
#include <global.h>

// The latest generated random number, used to generate the next number in the sequence.
u32 randomNumber = 1;

// Space to store a value to be re-interpreted as a float.
u32 floatStore;

/**
 * Gets the next integer in the sequence of pseudo-random numbers.
 */
u32 Math_Rand_Next() {
    return randomNumber = (randomNumber * 1664525) + 1013904223;
}

/**
 * Seeds the pseudo-random number generator by providing a starting value.
 */
void Math_Rand_Seed(u32 seed) {
    randomNumber = seed;
}

/**
 * Returns a pseudo-random floating-point number between 0.0f and 1.0f, by generating 
 * the next integer and masking it to an IEEE-754 compliant floating-point number 
 * between 1.0f and 2.0f, returning the result subtract 1.0f.
 */
f32 Math_Rand_ZeroOne() {
    randomNumber = (randomNumber * 1664525) + 1013904223;
    floatStore = ((randomNumber >> 9) | 0x3F800000);
    return *((f32*)&floatStore) - 1.0f;
}

/**
 * Returns a pseudo-random floating-point number between -0.5f and 0.5f by the same
 * manner in which Math_Rand_ZeroOne generates its result.
 */
f32 Math_Rand_Centered() {
    randomNumber = (randomNumber * 1664525) + 1013904223;
    floatStore = ((randomNumber >> 9) | 0x3F800000);
    return *((f32*)&floatStore) - 1.5f;
}

/**
 * Seeds a pseudo-random number at rndNum with a provided seed.
 */
void Math_Rand_Seed_Variable(u32* rndNum, u32 seed) {
    *rndNum = seed;
}

/**
 * Generates the next pseudo-random integer from the provided rndNum.
 */
u32 Math_Rand_Next_Variable(u32* rndNum) {
    return *rndNum = (*rndNum * 1664525) + 1013904223;
}

/**
 * Generates the next pseudo-random floating-point number between 0.0f and
 * 1.0f from the provided rndNum.
 */
f32 Math_Rand_ZeroOne_Variable(u32* rndNum) {
    u32 next;

    next = (*rndNum * 1664525) + 1013904223;
    // clang-format off
    *rndNum = next; floatStore = (next >> 9) | 0x3F800000;
    // clang-format on
    return *((f32*)&floatStore) - 1.0f;
}

/**
 * Generates the next pseudo-random floating-point number between -0.5f and
 * 0.5f from the provided rndNum.
 */
f32 Math_Rand_Centered_Variable(u32* rndNum) {
    u32 next;

    next = (*rndNum * 1664525) + 1013904223;
    // clang-format off
    *rndNum = next; floatStore = (next >> 9) | 0x3F800000;
    // clang-format on
    return *((f32*)&floatStore) - 1.5f;
}
