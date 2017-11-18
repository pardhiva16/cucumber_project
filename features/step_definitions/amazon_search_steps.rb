
Given(/^I am on Amazon$/) do
        #visit method goes to google.com the specified Capybara.app_host in env.rb
        visit '/'
end
 
Given(/^I search For Paper$/) do
        #fill the amazon page search box with paper
        #fill_in 'twotabsearchtextbox', :with => 'Paper')
        find('#twotabsearchtextbox').set('Paper')
        #click on the amazon search button
        #click_on 'nav-input'
  
      find_button('Go').click
end
 
Then(/^I should be able to access the Paper Search Results page$/) do
        #use xpath to find the link we require and click it
        find(:xpath, "//*[@id='result_3']/div/div[2]/div/div[2]/div[1]/div[1]/a/h2").click
        #test the h1 title is equal to GP
        #find('a').text == 'Georgia-Pacific'
         #page.should have_content('Georgia-Pacific')
          page.find_link('Georgia-Pacific').text

#step definition file for learning purposes of capybara cucumber ruby automation framework


end
