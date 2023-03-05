class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"
    get '/boards' do
        board = Board.all
        board.to_json
    end
end 