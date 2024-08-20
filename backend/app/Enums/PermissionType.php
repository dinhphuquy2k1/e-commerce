<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

/**
 * @method static static OptionOne()
 * @method static static OptionTwo()
 * @method static static OptionThree()
 */
final class PermissionType extends Enum
{
    const ALL = 0;
    const VIEW = 1;
    const EDIT = 2;
    const DELETE = 3;
    const SEARCH = 4;
    const VIEW_EDIT = 5;
    const ADD = 6;
    const ADD_EDIT = 7;
}
