/* this function triggers all hide and show regions to refresh */
function av_refresh_hide_show_regions() {
  $('.t-Region.t-Region--hideShow').each(function() {
      let region_id = $(this).attr('id');
      apex.region(region_id).refresh();
  });  
}
