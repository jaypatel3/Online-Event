
                        jQuery(document).ready(function($){
                        $.getJSON('http://api.twitter.com/1/statuses/user_timeline.json?screen_name=envato&count=2&callback=?', function(tweets){
                        $("#twitter").html(tz_format_twitter(tweets));
                        }); });
                    