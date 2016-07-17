Given /I am on the Tumblr Dashboard Page/ do
 @tumblr.tumblr_login.logged_in
 @tumblr.tumblr_dashboard.check
end

And /I create a post/ do
 @tumblr.tumblr_dashboard.create_a_new_post
 @tumblr.tumblr_post_modal.fill_in_post
end

Then /the post is added to the dashboard/ do
 @tumblr.tumblr_dashboard.check_post
end
