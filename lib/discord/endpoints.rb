module Discord
  module Endpoints
    include Potter::Endpoints

    get   "/channels/:id"
    patch "/channels/:id"
    delete "/channels/:id"
  end
end
