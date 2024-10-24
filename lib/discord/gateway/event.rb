require_relative "../gateway"

module Discord
  module Gateway
    class Event < Model
      field :op, "OpCode", description: "the op code of the event"

      class OpCode < Enum(Integer)
        const :Dispatch,                0,  description: "An event was dispatched."
        const :Heartbeat,               1,  description: "Fired periodically by the client to keep the connection alive."
        const :Identify,                2,  description: "Starts a new session during the initial handshake."
        const :PresenceUpdate,          3,  description: "Update the client's presence."
        const :VoiceStateUpdate,        4,  description: "Used to join/leave or move between voice channels."
        const :Resume,                  6,  description: "Resume a previous session that was disconnected."
        const :Reconnect,               7,  description: "You should attempt to reconnect and resume immediately."
        const :RequestGuildMembers,     8,  description: "Request information about offline guild members in a large guild."
        const :InvalidSession,          9,  description: "The session has been invalidated. You should reconnect and identify/resume accordingly."
        const :Hello,                   10, description: "Sent immediately after connecting, contains the heartbeat_interval to use."
        const :HeartbeatACK,            11, description: "Sent in response to receiving a heartbeat to acknowledge that it has been received."
        const :RequestSoundboardSounds, 31, description: "Request information about soundboard sounds in a set of guilds."
      end

      class Data < Model
      end
    end

    class DispatchEvent < Event
    end

    class IdentifyEvent < Event
      fixed :op, OpCode::CLOSE

      class Data < Data
      end
    end
  end
end
