// --------------------------------------------------------------------------------
// 
// Oracle APEX source export file
// 
// The contents of this file are intended for review and analysis purposes only.
// Developers must use the Application Builder to make modifications to an
// application. Changes to this file will not be reflected in the application.
// 
// --------------------------------------------------------------------------------

// ----------------------------------------
// Page: 600 - QA > Dynamic Action: change P600_UT_VERSION - setColor > Action: Execute JavaScript Code > Settings > Code

var $trigger = $(this.triggeringElement);
var val = $trigger.val();

// success - up-to-date
if (val == '22.2') {    
    $trigger.addClass("u-success");
    $trigger.removeClass("u-warning");
    $trigger.removeClass("u-danger");

// danger - old versions which are not supported any more
} else if ((val == '1.0') || (val == '1.1')) {    
    $trigger.removeClass("u-success");
    $trigger.removeClass("u-warning");
    $trigger.addClass("u-danger");

// warning - versions not old and not the newest
} else {    
    $trigger.removeClass("u-success");
    $trigger.addClass("u-warning");
    $trigger.removeClass("u-danger");
}

// ----------------------------------------
// Page: 600 - QA > Dynamic Action: change P600_RUNTIME_API_USAGE - setColor > Action: Execute JavaScript Code > Settings > Code

var $trigger = $(this.triggeringElement);
var val = $trigger.val();

if (val == 'None') {    
    $trigger.addClass("u-success");
    $trigger.removeClass("u-warning");
    $trigger.removeClass("u-danger");
} else if (val == 'This:Other:Workspace') {
    $trigger.removeClass("u-success");
    $trigger.removeClass("u-warning");
    $trigger.addClass("u-danger");
} else {
    $trigger.removeClass("u-success");
    $trigger.addClass("u-warning");
    $trigger.removeClass("u-danger");
}

// ----------------------------------------
// Page: 600 - QA > Dynamic Action: change P600_SESSION_STATE_PROTECTION - setColor > Action: Execute JavaScript Code > Settings > Code

var $trigger = $(this.triggeringElement);
var val = $trigger.val();

if (val == 'Enabled') {    
    $trigger.addClass("u-success");
    $trigger.removeClass("u-warning");
} else {    
    $trigger.removeClass("u-success");
    $trigger.addClass("u-warning");
}

// ----------------------------------------
// Page: 600 - QA > Dynamic Action: change P600_COMPATIBILITY_MODE - setColor > Action: Execute JavaScript Code > Settings > Code

var $trigger = $(this.triggeringElement);
var val = apex.item("P600_COMPATIBILITY_MODE").getValue();
console.log("P600_COMPATIBILITY_MODE=" + val);

// success - up-to-date => 21.2 / 22.1 / 22.2
if (val == '21.2') {
    $trigger.removeClass("u-danger");
    $trigger.addClass("u-success");
    $trigger.removeClass("u-warning");

// warning - not up-to-date => only one version before 19.2 / 20.1 / 20.2 / 21.1
} else if (val == '19.2') {
    $trigger.removeClass("u-danger");
    $trigger.removeClass("u-success");
    $trigger.addClass("u-warning");

// danger - older than 19.2
} else {
    $trigger.addClass("u-danger");
    $trigger.removeClass("u-success");
    $trigger.removeClass("u-warning");
}

// ----------------------------------------
// Page: 600 - QA > Dynamic Action: change P600_INCLUDE_LEGACY_JAVASCRIPT - setColorl > Action: Execute JavaScript Code > Settings > Code

var $trigger = $(this.triggeringElement);
var val = $trigger.val();

if (val == 'No') {    
    $trigger.addClass("u-success");
    $trigger.removeClass("u-warning");
} else {    
    $trigger.removeClass("u-success");
    $trigger.addClass("u-warning");
}

// ----------------------------------------
// Page: 600 - QA > Dynamic Action: change P600_INCLUDE_JQUERY_MIGRATE - setColorl > Action: Execute JavaScript Code > Settings > Code

var $trigger = $(this.triggeringElement);
var val = $trigger.val();

if (val == 'No') {    
    $trigger.addClass("u-success");
    $trigger.removeClass("u-danger");
} else {    
    $trigger.removeClass("u-success");
    $trigger.addClass("u-danger");
}

// ----------------------------------------
// Page: 600 - QA > Dynamic Action: change P600_THEME_NAME - setColor show/hide P600_UT_REFRESHED > Action: Execute JavaScript Code > Settings > Code

var $trigger = $(this.triggeringElement);
var val = $trigger.val();

if (val == 'Universal Theme') {    
    $trigger.addClass("u-success");
    $trigger.removeClass("u-danger");
} else {    
    $trigger.removeClass("u-success");
    $trigger.addClass("u-danger");
}

