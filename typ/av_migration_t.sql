create or replace type av_migration_t force as object
(
-- Author  : oliver lemm
-- Created : 07.01.2024
-- Purpose : type for migration table function

-- Attributes
  apex_version    varchar2(20 char), -- 23.2,23.1,22.2,...
  rn_type         varchar(20 char), -- new feature,deprecated,desupported
  rn_chapter_no   varchar2(10 char), -- 6.1.1,7.1.2,...
  rn_chapter_name varchar2(100 char), -- Post Calculation for Page Items Deprecated,apexrefresh Event is Deprecated
  app_id          number,
  page_id         number,
  page_name       varchar2(100 char),
  component_name  varchar2(100 char),
  component_type  varchar2(100 char), -- region,item,dynamic action,page process
  region_name     varchar2(100 char),
  item_name       varchar2(100 char),
  item_label      varchar2(200 char),
  js_code_vc2     varchar2(4000),
  plsql_code_vc2  varchar2(4000),
  css_code_vc2    varchar2(4000),

-- Constructors
  constructor function av_migration_t
  (
    i_apex_version    in varchar2
   ,i_rn_type         in varchar2
   ,i_rn_chapter_no   in varchar2
   ,i_rn_chapter_name in varchar2
   ,i_app_id          in number
   ,i_page_id         in number
   ,i_page_name       in varchar2
  ) return self as result,

-- Member functions and procedures
  member function to_string return varchar2
)
/
create or replace type body av_migration_t is

  -- Constructors
  constructor function av_migration_t
  (
    i_apex_version    varchar2
   ,i_rn_type         varchar2
   ,i_rn_chapter_no   in varchar2
   ,i_rn_chapter_name in varchar2
   ,i_app_id          number
   ,i_page_id         number
   ,i_page_name       varchar2
  ) return self as result is
  begin
    self.apex_version    := i_apex_version;
    self.rn_type         := i_rn_type;
    self.rn_chapter_no   := i_rn_chapter_no;
    self.rn_chapter_name := i_rn_chapter_name;
    self.app_id          := i_app_id;
    self.page_id         := i_page_id;
    self.page_name       := i_page_name;
  
    return;
  end av_migration_t;

  -- Member procedures and functions
  member function to_string return varchar2 is
  begin
    return self.apex_version || utl_tcp.crlf || self.app_id;
  end to_string;

end;
/
