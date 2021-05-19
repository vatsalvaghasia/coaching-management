json.extract! paper, :id, :title, :description, :category_id, :month_id, :year_id, :created_at, :updated_at
json.url paper_url(paper, format: :json)
