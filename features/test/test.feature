Feature: Youtube Test Suite

  Background:
    Given visit homepage
    When clicks on search box
    And search with "one minute black screen"
    Then verify search listed
    And open first video

  Scenario: mute-unmute and play-pause the video
    And skip the ads
    And pause the video
    And mute the video
    And play the video
    And unmute the video

  Scenario: open next video
    When autoplay is turned off
    Then open next video

  Scenario: verify that the video has started
    And skip the ads
    Then verify video started

  Scenario: verify that the video is finished
    And skip the ads
    And autoplay is turned off
    Then the video is finished
    Then verify replay button




