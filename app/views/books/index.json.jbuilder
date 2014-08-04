json.array!(@books) do |book|
  json.extract! book, :id, :title, :details, :price, :vendor_id, :buyer_id, :subject_id, :condition_id
  json.url book_url(book, format: :json)
end
