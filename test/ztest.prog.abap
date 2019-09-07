program ztest.

data gv_hello type string.

if 1 = 1.
  gv_hello = 'world'.
endif.

write: / gv_hello.
