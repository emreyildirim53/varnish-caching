vcl 4.0;

backend application {
  .host = "application";
  .port = "8080";
}


sub vcl_recv {
  # URL mapping
  if(req.method == "GET" && req.url ~ "^/") {
    set req.backend_hint = application;
  }
}

sub vcl_backend_response {
  set beresp.do_esi = true; // Do ESI processing
  set beresp.ttl = 10 s;    // Sets the TTL
}