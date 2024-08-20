<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

/**
 * @method static static OptionOne()
 * @method static static OptionTwo()
 * @method static static OptionThree()
 */
final class GenitiveType extends Enum
{
    const PRODUCT = 0;
    const VARIANT = 1;
    const SIZE = 2;
}
