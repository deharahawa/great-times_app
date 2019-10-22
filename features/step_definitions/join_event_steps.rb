module EventStepHelper
  def is_there_an_event(event_exists)
    if event_exists
      'Sucess'
    else
      'No cant do it'
    end
  end
end
World EventStepHelper

Given("there are no events listed") do
  @event_exists = false # Write code here that turns the phrase above into concrete actions
end

When("I want to join one") do
  @actual_answer = is_there_an_event(@event_exists) # Write code here that turns the phrase above into concrete actions
end

Then("I should be told {string}") do |string|
  expect(@actual_answer).to eq(string) # Write code here that turns the phrase above into concrete actions
end
