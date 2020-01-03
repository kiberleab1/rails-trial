FactoryGirl.define do
  factory :project do
    name "example project"
  end

end
FactoryGirl.define do
  factory :ticket do
    title "Example ticket"
    description "An example ticket, nothing more"
  end
end