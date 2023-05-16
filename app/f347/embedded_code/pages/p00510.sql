-- --------------------------------------------------------------------------------
-- 
-- Oracle APEX source export file
-- 
-- The contents of this file are intended for review and analysis purposes only.
-- Developers must use the Application Builder to make modifications to an
-- application. Changes to this file will not be reflected in the application.
-- 
-- --------------------------------------------------------------------------------

-- ----------------------------------------
-- Page: 510 - Login Page > Process: Login > Source > PL/SQL Code

apex_authentication.login(
    p_username => :P510_USERNAME,
    p_password => :P510_PASSWORD );

-- ----------------------------------------
-- Page: 510 - Login Page > Process: Get Username Cookie > Source > PL/SQL Code

:P510_USERNAME := apex_authentication.get_login_username_cookie;
:P510_REMEMBER := case when :P510_USERNAME is not null then 'Y' end;

-- ----------------------------------------
-- Page: 510 - Login Page > Process: Set Username Cookie > Source > PL/SQL Code

apex_authentication.send_login_username_cookie (
    p_username => lower(:P510_USERNAME),
    p_consent  => :P510_REMEMBER = 'Y' );

