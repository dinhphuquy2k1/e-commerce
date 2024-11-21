<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

final class ContactType extends Enum
{
    const PHONE = 1;
    const EMAIL = 2;
    const ADDRESS = 3;
    const SOCIAL = 4;
}
