# APEX Visualizer
simply add <br>
https://raw.githubusercontent.com/OliverLemm/apex-visualizer/master/manifest.json<br>
inside your internal APEX workspace. <br>
Go Manage Instance => Instance Setting => Application Gallery and add a new line.

## Release 23.1
APEX Visualizer itself migrated to APEX 23.1.

## Release 22.2.1
Migration checks for APEX 23.1 have been added.

## Release 22.2
Migrated to APEX 22.2.
Solved a bug on the QA page when multiple themes are related to one application.

## Release 22.1.2
Migrated to APEX 22.1.7.
Added checks for desupported and deprecated features for APEX 22.2.

## Release 22.1.1
Solving some Bugs for Pages CSS and JavaScript regarding charts and grouping issues.

## Release 22.1
APEX Visualizer has been migrated to APEX 22.1. ZIP, yaml and json exports have also been added to the repository.

## Release 21.2.5
The APEX 22.1 Migration Page with major Deprecated and Desupported Checks has been added. This version is the last version of APEX Visualizer for APEX 21.2. Next versions will need APEX 22.1 or higher.

## Release 21.2.4
The APEX 20.1 Migration Page with major Deprecated and Desupported Checks has been added.

## Release 21.2.3
On the new APEX 21.2 Migration Page Region Positions Above and Below added for the Check "5.1.2 Deprecated Region Positions". 

## Release 21.2.2
On the new APEX 21.2 Migration Page more sources to find Legacy Substitution Strings added and minor tweaks regarding clob strings.

## Release 21.2.1
On the new APEX 21.2 Migration Page more sources to find Legacy Substitution Strings and a Refresh Button has been added.
Deinstallation Script added.

## Release 21.2
The Application is migrated to APEX 21.2.
The new Page Migration with Subpage APEX 21.2 has been added for migration support.

## Release 2.0
The Application is migrated to APEX 21.1.
Plugins, Links and QA are added as new Features.
Page Designer Links are added to JavaScript, CSS and PL/SQL.

## Release 1.3
All views are using now union all if possible.

## Release 1.2
Page views are renamed. Every view must start with av_

## Release 1.1
The Application is migrated to APEX 20.2.  
D3 Bubble Charts are removed because of incompatibility. The integrated Bubble Charts are used now.  
The main views are reworked to use union all instead of union. All views now contain columns which support clob or varchar2 for the code.

## Release 1.0  
An APEX application based on version 5.1 which can visualize all applications in the same workspace.

The approach is to make complex applications visible in an easy and fancy way by using oracleJet Charts.

When installing the application, 6 views will be installed (names starting with av_...). These views are defined as supporting objects and will only be installed when clicking "Yes" after installing the application.
The views are using the APEX metadata and can also be found inside this github repository as single files.
