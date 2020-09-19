json.extract! twiit, :id, :created_at, :updated_at
json.url twiit_url(twiit, format: :json)
