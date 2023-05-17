#include "vpi_user.h"

/* prototypes of the PLI registration routines */
extern void PLIbook_hello_register();

void (*vlog_startup_routines[])() = 
{
    /*** add user entries here ***/
  PLIbook_hello_register,
  0 /*** final entry must be 0 ***/
};
