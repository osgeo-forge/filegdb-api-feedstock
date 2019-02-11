:: Copy 64-bit only
copy /y "bin64\\*.dll" "%LIBRARY_BIN%\" || exit 1
copy /y "lib64\\*.lib" "%LIBRARY_LIB%\" || exit 1

if not exist "%LIBRARY_INC%\filegdb" mkdir "%LIBRARY_INC%\filegdb"
copy /y "include\\*.h" "%LIBRARY_INC%\filegdb\" || exit 1

if not exist "%LIBRARY_PREFIX%\share\filegdb" mkdir "%LIBRARY_PREFIX%\share\filegdb"
copy /y "xmlResources\FileGDBAPI.xsd" "%LIBRARY_PREFIX%\share\filegdb\" || exit 1
