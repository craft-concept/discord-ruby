module Discord
  class Application
    class Command < Resource
      summary "Application commands are native ways to interact with apps in the Discord client."

      field :id,                       :snowflake, description: "the unique ID of command"
      field :type,                     "Type",     description: "the type of command"
      field :application_id,           :snowflake, description: "the ID of the parent application"
      field :guild_id,                 :snowflake, description: "Guild ID of the command, if not global"
      field :name,                     :string,    description: "Name of command, 1-32 characters"
      field :description,              :string,    description: ""

      class Type < Enum(Integer)
        const :CHAT_INPUT,          1, description: "Slash commands; a text-based command that shows up when a user types `/`"
        const :USER,                2, description: "A UI-based command that shows up when you right click or tap on a user"
        const :MESSAGE,             3, decsription: "A UI-based command that shows up when you right click or tap on a message"
        const :PRIMARY_ENTRY_POINT, 4, description: "A UI-based command that represents the primary way to invoke an app's Activity"
      end
    end
  end
end
