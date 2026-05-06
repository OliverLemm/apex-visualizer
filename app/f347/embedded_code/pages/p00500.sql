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
-- Page: 500 - Links > Region: Links to Page > Source > SQL Query

select PAGE_ID,
       PAGE_NAME,
       PAGE_GROUP,
       LINK_TYPE,
       LINK_NAME,
       LINK_LABEL,
       LINK_PAGE_ID
  from AV_PAGE_LINKS_V
 where application_id = :P0_APP_ID and
(:P0_PAGE_ID is null or :P0_PAGE_ID = link_page_id);

-- ----------------------------------------
-- Page: 500 - Links > Region: Links from Page > Source > SQL Query

select PAGE_ID,
       PAGE_NAME,
       LINK_TYPE,
       LINK_NAME,
       LINK_LABEL,
       LINK_PAGE_ID
  from AV_PAGE_LINKS_V
 where application_id = :P0_APP_ID 
 and (:P0_PAGE_ID is null or :P0_PAGE_ID = page_id)
 and page_id <> coalesce(link_page_id,-1);

-- ----------------------------------------
-- Page: 500 - Links > Region: D3 Chart > Source > SQL Query

WITH
nodes AS ( --> START YOUR NODES QUERY HERE
  SELECT XMLELEMENT( "nodes", xmlattributes(
         l.page_id    AS id
       , l.page_name  AS label
       , 1            AS sizevalue
       , l.page_id    AS colorvalue
       , l.page_name || ' - ' || page_id  AS colorlabel    -- optional, used for the graph legend
     --, 'http://...' AS link          -- optional
     --, 'some text'  AS infostring    -- optional, rendered as tooltip
     --, 'false'      AS labelcircular -- optional, overwrites the global labelsCircular
     --, 'http://...' AS image         -- optional, background image for a node instead of a fill color
     --, 'true'       AS "fixed"       -- optional | fixed, x and y are native D3 attributes
     --, 100          AS "x"           -- optional | they must be lowercase
     --, 100          AS "y"           -- optional | you can predefine a layout with these attributes
         ) ) AS xml_nodes
    FROM av_page_links_v l 
    where l.application_id = :P0_APP_ID --< STOP YOUR NODES QUERY HERE
),
links AS ( --> START YOUR LINKS QUERY HERE
  SELECT XMLELEMENT( "links", xmlattributes(
         l.page_id      AS fromid
        ,l.link_page_id AS toid
     --, 'dashed'       AS style       -- optional, can be solid (default), dotted or dashed
     --, 'red'          AS color       -- optional, must be a HTML color code like green or #00ff00
     --, 'some text'    AS infostring  -- optional, rendered as tooltip
         ) ) AS xml_links
    FROM av_page_links_v l 
    where l.page_id <> coalesce(l.link_page_id,-1)
    and l.application_id = :P0_APP_ID --< STOP YOUR LINKS QUERY HERE
)
SELECT XMLSERIALIZE( DOCUMENT( XMLELEMENT( "data",
        ( SELECT XMLAGG( xml_nodes ) FROM nodes ),
        ( SELECT XMLAGG( xml_links ) FROM links ) ) ) INDENT ) AS single_clob_result
  FROM DUAL;

