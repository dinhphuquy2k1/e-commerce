<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

/**
 * @method static static OptionOne()
 * @method static static OptionTwo()
 * @method static static OptionThree()
 */
final class WareHouseType extends Enum
{
    const WARE_HOUSE_RETRIEVAL = 0;
    const RETURN_WARE_HOUSE = 1;
}
