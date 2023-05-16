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
// Page: 0 - Global Page - Desktop > Dynamic Action: Show Details > Client-side Condition > JavaScript Expression

$('#details').is(':hidden')

// ----------------------------------------
// Page: 0 - Global Page - Desktop > Dynamic Action: change APP_ID,PAGE_ID - set P0_PAGE_DESIGNER_LINK > Action: Execute JavaScript Code > Settings > Code

$('#P0_LINK_CONTAINER').html(apex.item("P0_PAGE_DESIGNER_LINK").getValue());

