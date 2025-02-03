extern int _main (void);
__attribute__((dllimport)) void __stdcall ExitProcess (int uExitCode);

void __stdcall WinMain (
  void *hInstance, void *hPrevInstance, char *lpCmdLine, int nCmdShow)
{
  ExitProcess(_main());
} //WinMain
