#include <assert.h>
#include <stdio.h>
#include "../src/functions.h"
//Test Comment
int main() {
    assert(add(2, 2) == 4);
    assert(add(-1, 1) == 0);
    printf("All tests passed!\n");
    return 0;
}

