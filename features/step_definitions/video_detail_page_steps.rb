video_detail_page = VideoDetailPage.new


And(/^skip the ads$/) do
  video_detail_page.skip_ads_function
end

And(/^play the video$/) do
  video_detail_page.click_play_button
end

And(/^pause the video$/) do
  video_detail_page.click_pause_button
end

And(/^mute the video$/) do
  video_detail_page.click_mute_button
end

And(/^unmute the video$/) do
  video_detail_page.click_unmute_button
end

And(/^replay video$/) do
  video_detail_page.click_replay_button
end

And(/^open next video$/) do
  video_detail_page.click_next_button
end

And(/^the video is finished$/) do
  video_detail_page.video_is_finished
end

And(/^autoplay is turned off$/) do
  video_detail_page.autoplay_is_turned_off
end

Then(/^verify video started$/) do
  video_detail_page.skip_ads
end

And(/^verify replay button$/) do
  video_detail_page.verify_replay_button
end