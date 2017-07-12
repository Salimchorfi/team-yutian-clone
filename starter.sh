bundle update
bundle install
rails db:drop db:create db:migrate && rails db:seed
