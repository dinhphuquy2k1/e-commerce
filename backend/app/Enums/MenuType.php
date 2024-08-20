<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

/**
 * @method static static OptionOne()
 * @method static static OptionTwo()
 * @method static static OptionThree()
 */
final class MenuType extends Enum
{
    const ADMIN_MENU =   0;
    const CHAT_MENU =   1;
}
