module Discord
  class Application < Model
    summary "Applications (or \"apps\") are containers for developer platform features, and can be installed to Discord servers and/or user accounts."

    field :id,   :snowflake, description: "ID of the app"
    field :name, :string,    description: "Name of the app"
  end
end
