#include "SYSTEM.oh"

/*============================================================================*/
#ifndef _WIN32
  INTEGER SYSTEM_argc;
  void *SYSTEM_argv;
#endif

#ifndef _WIN32
#  include <stdlib.h>
   void SYSTEM_ExitOS (int code) { exit(code); }
#else
#  include "_windows.h"
   void SYSTEM_ExitOS (int code) { ExitProcess((UINT)(code)); }
#endif
