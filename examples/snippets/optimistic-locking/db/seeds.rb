# Copyright 2021 Google LLC
#
# Use of this source code is governed by an MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT.

require_relative "../../config/environment"
require_relative "../models/singer"
require_relative "../models/album"

first_names = ["Pete", "Alice", "John", "Ethel", "Trudy", "Naomi", "Wendy", "Ruben", "Thomas", "Elly"]
last_names = ["Wendelson", "Allison", "Peterson", "Johnson", "Henderson", "Ericsson", "Aronson", "Tennet", "Courtou"]

adjectives = ["daily", "happy", "blue", "generous", "cooked", "bad", "open"]
nouns = ["windows", "potatoes", "bank", "street", "tree", "glass", "bottle"]
budgets = [15000, 25000, 10000, 20000, 30000, 12000, 13000]

5.times do
  Singer.create first_name: first_names.sample, last_name: last_names.sample
end

20.times do
  singer_id = Singer.all.sample.id
  Album.create title: "#{adjectives.sample} #{nouns.sample}", marketing_budget: budgets.sample, singer_id: singer_id
end
