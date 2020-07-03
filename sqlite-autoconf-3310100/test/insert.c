// name： insert.c
// This prog is used to test C/C++ API for sqlite3 .It is very simple,ha !
 
#include <stdio.h>
#include <stdlib.h>
#include "sqlite3.h" 
#define _DEBUG_
 
int main( void )
{
	sqlite3 *db=NULL;
	char *zErrMsg = 0;
	int rc;
	char *sql;
 
	rc = sqlite3_open("zieckey.db", &db); //打开指定的数据库文件,如果不存在将创建一个同名的数据库文件
	if( rc )
	{
		fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
		sqlite3_close(db);
		return 0;
	}
	else 
		printf("You have opened a sqlite3 database named zieckey.db successfully!\nCongratulations! Have fun ! ^-^ \n");
 
	//创建一个表,如果该表存在，则不创建，并给出提示信息，存储在 zErrMsg 中
	sql = "CREATE TABLE SensorData(\
		ID INTEGER PRIMARY KEY, \
		SensorID INTEGER, \
		SiteNum INTEGER, \
		Time VARCHAR(12), \
		SensorParameter REAL \
		);";
	sqlite3_exec( db , sql , 0 , 0 , &zErrMsg );
 
	//插入数据 
	sql = "INSERT INTO \"SensorData\" VALUES( NULL , 1 , 1 , '201205011206', 18.9 );" ;
	sqlite3_exec( db , sql , 0 , 0 , &zErrMsg );
 
	sql = "INSERT INTO \"SensorData\" VALUES( NULL , 1 , 1 , '201205011306', 16.4 );" ;
	sqlite3_exec( db , sql , 0 , 0 , &zErrMsg );
 
 
	sqlite3_close(db); //关闭数据库
	return 0;
}