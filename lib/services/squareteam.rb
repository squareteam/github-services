class Service::Squareteam < Service::HttpPost

  url "https://www.squareteam.io"

  maintained_by :github => 'popox'

  # Support channels for user-level Hook problems (service failure,
  # misconfigured
  supported_by :github => 'popox'

  def receive_event
    deliver "https://dev.squareteam.io:443/api/hooks/github", insecure_ssl: true
  end
end

