# - Try to find NURBS++
# Once done, this will define
#
#  NURBS++_FOUND - system has NURBS++
#  NURBS++_INCLUDE_DIRS - the NURBS++ include directories
#  NURBS++_LIBRARIES - link these to use NURBS++


find_path(NURBS++_INCLUDE_DIR nurbs++/plib.h
          PATH_SUFFIXES nurbs++)

find_library(NURBS++_LIBRARY_NURBSD NAMES nurbsd libnurbsd )
find_library(NURBS++_LIBRARY_NURBSF NAMES nurbsf libnurbsf )
find_library(NURBS++_LIBRARY_MAT NAMES matrix libmatrix ) 
find_library(NURBS++_LIBRARY_MATI NAMES matrixI libmatrixI )
find_library(NURBS++_LIBRARY_MATN NAMES matrixN libmatrixN )

set(NURBS++_LIBRARIES ${NURBS++_LIBRARY_NURBSD} 
                      ${NURBS++_LIBRARY_NURBSF}
                      ${NURBS++_LIBRARY_MAT} 
                      ${NURBS++_LIBRARY_MATI} 
                      ${NURBS++_LIBRARY_MATN} )
set(NURBS++_INCLUDE_DIRS ${NURBS++_INCLUDE_DIR} )

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set LIBXML2_FOUND to TRUE
# if all listed variables are TRUE
find_package_handle_standard_args(NURBS++  DEFAULT_MSG
                                  NURBS++_LIBRARY_NURBSD
                                  NURBS++_LIBRARY_NURBSF
                                  NURBS++_LIBRARY_MAT
                                  NURBS++_LIBRARY_MATI 
                                  NURBS++_LIBRARY_MATN
                                  NURBS++_INCLUDE_DIR)

mark_as_advanced(NURBS++_INCLUDE_DIR 
                 NURBS++_LIBRARY_NURBSD
                 NURBS++_LIBRARY_NURBSF
                 NURBS++_LIBRARY_MAT
                 NURBS++_LIBRARY_MATI 
                 NURBS++_LIBRARY_MATN
                 NURBS++_INCLUDE_DIR )
