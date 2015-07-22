import posix

when isMainModule:
  let uid = geteuid()
  if uid == 0:
    quit("cannot find name for user ID " & $uid, QuitFailure)
  let pw = getpwuid(uid)
  echo pw.pw_name
