

import re
msg = re.sub('\d{4} \| ', '', """
0000 | 00 00 00 00 00 00 00 00 4A 96 70 27 C4 7A E5 51
0010 | 14 00 00 00 78 97 46 60 3E 05 49 82 8C CA 27 E9
0020 | 66 B3 01 A4 8F EC E2 FC
""")
msg = re.sub('\s+', '', msg)
print(msg);
##msg = bytes.fromhex(msg)

import struct
import zlib
counter = 0
msg = struct.pack('<ii', len(msg) + 12, counter) + msg
#msg += struct.pack('<I', zlib.crc32(msg))

print(msg)