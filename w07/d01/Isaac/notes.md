Acceptance test
drives a headless browser
tests at  level
Capybara tests web applications by simulating how a real user would interact with the app. interacting with the html, like a real user.
gem 'capybara'
rspec command runs tests in rails
set up a tunr_database
in ourspec describe features
visit '/login'
fill_in :email, with: "email@example.com"
save_and_open_page
browser operates in memory that we don't see 
describe "a user can create a playlist" do ... 
-create user
-login
- go to create playlists page
-add title, songs
RUN TEST
let(:user) do User.create(blah blah blah) end
let(:ticktock) do Song.create(blah blah) end
we expect to see the title and expect that only songs that were added are here
before {  user.purchase(tick_tock)}
it "adds the song to the users songs" do 
expect(user.songs) to include(tick_tok)
expect(user.balance.to_f).to eq(original_balance - tick-tok.price)
visit "/login" 
vill_in :email, with: user.email
fill in :password, with: user.password
click_button "Login"
click_link "create playlist"
fill_in :title, with: "Sweet beats"
select tick_tock.title, from: "playlists_songs"
click_button "Create"
within ".playlist" do
expect(page).to have_content "sweet beats"
within".playlist .songs" do
expect(page).to have_content tick_tock.title
expect(page).to have_content love_is_my_drug.title
save_and_open_page
run rspec
rake db:test:prepare to migrate test database
















