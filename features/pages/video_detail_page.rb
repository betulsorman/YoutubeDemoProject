class VideoDetailPage

  def initialize
    @skip_ad_button_css = ".ytp-ad-skip-button"
    @play_or_replay_button_css = ".ytp-play-button"
    @play_pause_screen_css = "#movie_player"
    @pause_button_xpath = "//*[@title='Pause (k)']"
    @mute_button_title = "Mute (m)"
    @unmute_button_title = "Unmute (m)"
    @next_video_button_xpath = "//*[@title='Next (SHIFT+n)']"
    @autoplay_on_button_xpath = "//*[@title='Autoplay is on']"
    @autoplay_off_button_xpath = "//*[@title='Autoplay is off']"
    @video_stream_css = ".video-stream"
    @time_current_css = ".ytp-time-current"
    @time_end_css = ".ytp-time-duration"
    @skip_trial_xpath = "//*[@aria-label='Skip trial']"
  end

  def skip_ads_function
    if page.has_css?(@skip_ad_button_css)
      find(@skip_ad_button_css, visible: true).click
    else
      puts "There are no ads."
    end
  end

  def click_pause_button
    if page.has_selector?(:xpath, @pause_button_xpath)
      find(:xpath, @pause_button_xpath, wait: 5).click
    else
      find(@play_pause_screen_css, wait: 5).click
    end
  end

  def click_play_button
    if page.has_selector?(@play_or_replay_button_css)
      find(@play_or_replay_button_css, wait: 5).click
    else
      find(@play_pause_screen_css, wait: 5).click
    end
  end

  def click_mute_button
    click_button(@mute_button_title, wait: 5)
  end

  def click_unmute_button
    click_button(@unmute_button_title, wait: 5)
  end

  def click_replay_button
    if page.has_selector?(@play_or_replay_button_css)
      find(@play_or_replay_button_css, wait: 2).click
    else
      find(:xpath, @pause_button_xpath, wait: 2).click
    end
  end

  def click_next_button
    find(:xpath, @next_video_button_xpath, wait: 5)
  end

  def video_is_finished
    find(@video_stream_css).hover
    time_current_text = find(@time_current_css).text
    time_end_text = find(@time_end_css).text

    time_end = time_end_text.split(":")
    time_current = time_current_text.split(":")

    hour_end = 0
    hour_current = 0

    if time_end.size == 3
      hour_end = time_end[0]
      min_end = time_end[1]
      sec_end = time_end[2]
    else
      min_end = time_end[0]
      sec_end = time_end[1]
    end

    if time_current.size == 3
      hour_current = time_current[0]
      min_current = time_current[1]
      sec_current = time_current[2]
    else
      min_current = time_current[0]
      sec_current = time_current[1]
    end
    puts hour_end
    puts min_end.to_i

    puts min_end.to_i - min_current.to_i
    calculate_wait_time = ((hour_end.to_i - hour_current.to_i) * 60 * 60) + ((min_end.to_i - min_current.to_i) * 60) + (sec_end.to_i - sec_current.to_i)
    sleep calculate_wait_time + 1

    time_current_text_on_video_finish = find(@time_current_css).text

    expect(time_current_text_on_video_finish).to eq(time_end_text)

  end

  def verify_replay_button
    page.should have_selector(@play_or_replay_button_css, wait: 3)
  end

  def autoplay_is_turned_off
    if page.has_selector?(:xpath, @autoplay_on_button_xpath)
      find(:xpath, @autoplay_on_button_xpath, wait: 3).click
    end
  end

  def skip_ads
    if page.has_selector?(@skip_ad_button_css)
      puts "The video has not started, the ad continues."
      page.should_not have_selector(@skip_ad_button_css, wait: 5)
    else
      puts "The video has started."
    end
  end

  def skip_trial
    if page.has_selector?(:xpath, @skip_trial_xpath)
      find(:xpath, @skip_trial_xpath).click
    end
  end

end


