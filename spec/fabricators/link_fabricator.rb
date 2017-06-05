Fabricator(:link) do
  url { sequence(:url) { |i| "http://google#{i}.com" } }
end
