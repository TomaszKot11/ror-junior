Spree::Order.class_eval do
  # https://rubydoc.info/gems/solidus_core/Spree/Order/NumberGenerator.html
  include Spree::Core::NumberGenerator.new(
    prefix: 'RORJUN',
    lenght: 8,
    letters: false
  )
end