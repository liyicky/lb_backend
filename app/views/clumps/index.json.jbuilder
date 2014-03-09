json.array!(@clumps) do |clump|
  json.extract! clump, :id, :url, :shit
  json.url clump_url(clump, format: :json)
end
