<?php

function validate($data)
{
    if (strlen($data['name']) < 2)
        return false;
    return true;
}
