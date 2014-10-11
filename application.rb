set :markdown, fenced_code_blocks: true, highlight: true

get '/' do
  erb :home
end

get '/providers/:name' do
  name = params['name']
  not_found and return unless File.exists? File.join(settings.root, "views/providers/#{name}.markdown")
  erb :layout, layout: false do
    erb :provider do
      markdown "providers/#{name}".to_sym
    end
  end
end
