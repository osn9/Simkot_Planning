
function GetInputMask()

jQuery(function ($) {
    $.mask.definitions['d'] = '[0-3]';
    $.mask.definitions['y'] = '[12]';
    $.mask.definitions['m'] = '[01]';
    $(".row .CopoMem .TDate").mask("y999/m9/d9");
});



