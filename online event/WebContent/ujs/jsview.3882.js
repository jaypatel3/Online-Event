
					jQuery(document).ready(function($){
					$.getJSON('http://api.twitter.com/1/statuses/user_timeline.json?screen_name=envato&count=3&callback=?', function(tweets){
					$("#twitterBlog").html(tz_format_twitter(tweets));
					}); });
				