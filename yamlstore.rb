require 'yaml/store'

repo = YAML::Store.new "blog.yml"

Post = Struct.new :title, :body, :category
Category = Struct.new :name

food = Category.new :food

repo.transaction do
  posts = repo[:posts] = []
  posts << Post.new("First post!", "antani!!!", food)
  posts << Post.new("whoho second!", "ahuauahuaaha", food)
end
