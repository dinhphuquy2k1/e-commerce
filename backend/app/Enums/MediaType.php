<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

/**
 * @method static static OptionOne()
 * @method static static OptionTwo()
 * @method static static OptionThree()
 */
final class MediaType extends Enum
{
    const IMAGE =   0;
    const VIDEO =   1;

    const PC = 2;
    const MOBILE = 3;
    const BOTH = 4;
}
