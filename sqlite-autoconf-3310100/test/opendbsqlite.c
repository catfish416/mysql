// name： opendbsqlite.c
// This prog is used to test C/C++ API for sqlite3.It is very simple,ha!
 
#include <stdio.h>
#include "sqlite3.h"
 
int main( int argc, char **argv )
{
    char *file = "database.sqlite3";
    sqlite3 *pDB = NULL;
    int rc = 0;
 
    sqlite3_initialize( );
    rc = sqlite3_open_v2( file, &pDB, SQLITE_OPEN_READWRITE |
         SQLITE_OPEN_CREATE, NULL );
    if ( rc != SQLITE_OK)
    {
        sqlite3_close_v2( pDB );
    }
 
    /*  perform database operations  */
    sqlite3_close_v2( pDB );
 
}