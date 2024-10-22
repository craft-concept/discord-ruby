require_relative "resource"

module Discord
  class Channel < Resource
    summary "Represents a guild or DM channel within Discord."

    field :id,        :snowflake, description: "the id of this channel"
    field :type,      "Type",     description: "the type of channel"
    field :guild_id?,	:snowflake, description: "the id of the guild (may be missing for some channel objects received over gateway guild dispatches)"
    field :position?,	:integer,   description: "sorting position of the channel (channels with the same position are sorted by id)"

    class Type < Enum(Integer)
      const :GUILD_TEXT,         0,  description: "a text channel within a server"
      const :DM,                 1,  description: "a direct message between users"
      const :GUILD_VOICE,        2,  description: "a voice channel within a server"
      const :GROUP_DM,           3,  description: "a direct message between multiple users"
      const :GUILD_CATEGORY,     4,  description: "an organizational category that contains up to 50 channels"
      const :GUILD_ANNOUNCEMENT, 5,  description: "a channel that users can follow and crosspost into their own server (formerly news channels)"

      constraint api: gte(9) do
        const :ANNOUNCEMENT_THREAD, 10, description: "a temporary sub-channel within a GUILD_ANNOUNCEMENT channel"
        const :PUBLIC_THREAD,       11, description: "a temporary sub-channel within a GUILD_TEXT or GUILD_FORUM channel"
        const :PRIVATE_THREAD,      12, description: "a temporary sub-channel within a GUILD_TEXT channel that is only viewable by those invited and those with the MANAGE_THREADS permission"
      end

      const :GUILD_STAGE_VOICE, 13, description: "a voice channel for hosting events with an audience"
      const :GUILD_DIRECTORY,   14, description: "the channel in a hub containing the listed servers"
      const :GUILD_FORUM,       15, description: "Channel that can only contain threads"
      const :GUILD_MEDIA,       16, description: "Channel that can only contain threads, similar to GUILD_FORUM channels"
    end

    class VideoQualityMode < Enum(Integer)
      const :AUTO, 1, description: "Discord chooses the quality for optimal performance"
      const :FULL, 2, description: "720p"
    end

    class Flags < Flag(Integer)
      const :PINNED,                      1 << 1,  description: "this thread is pinned to the top of its parent GUILD_FORUM or GUILD_MEDIA channel"
      const :REQUIRE_TAG,                 1 << 4,  description: "whether a tag is required to be specified when creating a thread in a GUILD_FORUM or a GUILD_MEDIA channel. Tags are specified in the applied_tags field."
      const :HIDE_MEDIA_DOWNLOAD_OPTIONS, 1 << 15, description: "when set hides the embedded media download options. Available only for media channels"
    end

    class SortOrderType < Enum(Integer)
      const :LATEST_ACTIVITY, 0, description: "Sort forum posts by activity"
    end
  end
end
