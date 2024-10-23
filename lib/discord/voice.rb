module Discord
  class Voice < Resource
    summary "Used to represent a user's voice connection status."

    field :guild_id?,   :snowflake, description: "the guild id this voice channel is in"
    field :channel_id, :snowflake?, description: "the id of the parent voice channel"
    field :user_id,     :snowflake, description: "the user id this voice object is for"
    field :member?,     "Member",   description: "the member object for this user, if they are connected to the voice channel"
    field :session_id,  :string,    description: "the session id for this voice state"

    field :deaf, :boolean, description: "whether this user is deafened by the server"
    field :mute, :boolean, description: "whether this user is muted by the server"

    field :self_mute,    :boolean, description: "whether this user is locally deafened"
    field :self_deaf,    :boolean, description: "whether this user is locally muted"
    field :self_stream?, :boolean, description: "whether this user is streaming using \"Go Live\""
    field :self_video,   :boolean, description: "whether this user's camera is enabled"

    field :suppress,     :boolean, description: "whether this user is muted by the current user"
    field :request_to_speak_timestamp, :iso8601?, description: "the time at which the user requested to speak"
  end
end
