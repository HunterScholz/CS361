class DataManager
  def initialize(connection)
    @network_connection = connection
  end

  def send_request(r)
    @network_connection.send(r)  # Send some data
  end

  def recv_response()
    @network_connection.recv()  # Return the received data
  end
end

class MockNetConnection
    def initialize(d)
        @domain = d
    end

    def send(r)
    end

    def recv
        "This is a test response!"
    end
end

# Testing Code
if testing
    dm = DataManager.new(NetConnection.new("example.com"))
else
    dm = DataManager.new(MockNetConnection.new("mock.com"))
end

dm.send_request("REQUEST: good things")
good_things = dm.recv_response()