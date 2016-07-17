Feature: Create a post

Background:
Given I am on the Tumblr Dashboard Page

@post
Scenario: Creating a Post
And I create a post
Then the post is added to the dashboard
