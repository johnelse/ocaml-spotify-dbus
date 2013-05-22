let of_bus bus =
  OBus_proxy.make
    (OBus_peer.make bus "org.mpris.MediaPlayer2.spotify")
    ["org"; "mpris"; "MediaPlayer2"]
