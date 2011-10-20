Factory.define :campaign do |t|
  t.sequence(:title) { |n| "Let's change the world #{n}" }
  t.description { Forgery::LoremIpsum.paragraphs(2) }
  t.up_count 0 # rand(1000)
end