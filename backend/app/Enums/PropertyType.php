<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

/**
 * @method static static OptionOne()
 * @method static static OptionTwo()
 * @method static static OptionThree()
 */
final class PropertyType extends Enum
{
    const INPUT_TEXT = 0;
    const SELECT_SINGLE = 1;
    const SELECT_MULTIPLE = 2;
    const SELECT_SINGLE_WITH_ADD_OPTION = 3;
    const SELECT_MULTIPLE_WITH_ADD_OPTION = 4;
}
