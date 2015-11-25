Then(/^I should back to the Machines Page$/) do
  assert_current_path(machines_path)
end

Then(/^I should not see the machine "(.*?)"$/) do |arg1|
    if page.has_content?(arg1)
      find( 'td', text: arg1, exact: true )
    end
end
