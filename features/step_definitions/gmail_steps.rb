Given(/^I am on the gmail page$/) do
  p "Executando primeiro passo: abrindo a pagina do gmail"
  visit 'http://www.gmail.com.br'
end

When(/^I enter the username "(.*)" and the password "(.*)"$/) do |user, password|
  p "Executando segundo passo: #{user} e #{password}"
  fill_in 'Email', :with => user
  fill_in 'Passwd', :with => password
  click_button 'signIn'
end

When(/^I enter valid credentials$/) do
 p "Executando segundo passo: preenchendo o formulario de login"
end

When(/^I click on submit$/) do
 p "Executando terceiro passo: enviando o formulario de login"
end

Then(/^I should see a error message$/) do
  expect(page).to have_text "The email or password you entered is incorrect."
end

