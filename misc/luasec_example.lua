--Client code

require("socket")
require("ssl")

-- TLS/SSL client parameters (omitted)
local params

local conn = socket.tcp()
conn:connect("127.0.0.1", 8888)

-- TLS/SSL initialization
conn = ssl.wrap(conn, params)
conn:dohandshake()
--
print(conn:receive("*l"))
conn:close()

--Server code

require("socket")
require("ssl")

-- TLS/SSL server parameters (omitted)
local params 

local server = socket.tcp()
server:bind("127.0.0.1", 8888)
server:listen()
local conn = server:accept()

-- TLS/SSL initialization
conn = ssl.wrap(conn, params)
conn:dohandshake()
--
conn:send("one line\n")
conn:close()

--LuaSec needs a set of information (such as protocol, key, certificate, etc.) to wrap the TCP connection. For instance, we --can use the following parameters in the example above:

--Client parameters

local params = {
  mode = "client",
  protocol = "sslv23",
  key = "/etc/certs/clientkey.pem",
  certificate = "/etc/certs/client.pem",
  cafile = "/etc/certs/CA.pem",
  verify = "peer",
  options = {"all", "no_sslv3"}
}

--Server parameters

local params = {
  mode = "server",
  protocol = "tlsv1_2",
  key = "/etc/certs/serverkey.pem",
  certificate = "/etc/certs/server.pem",
  cafile = "/etc/certs/CA.pem",
  verify = {"peer", "fail_if_no_peer_cert"},
  options = "all"
}
