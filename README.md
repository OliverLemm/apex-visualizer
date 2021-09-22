# Apex-Visualizer
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