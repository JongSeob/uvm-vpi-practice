/**********************************************************************
 * $hello example -- PLI application using VPI routines
 *
 * C source to print "Hello World" as a PLI application.
 *
 * Usage: $hello;
 *
 * For the book, "The Verilog PLI Handbook" by Stuart Sutherland
 *  Copyright 1999 & 2001, Kluwer Academic Publishers, Norwell, MA, USA
 *   Contact: www.wkap.il
 *  Example copyright 1998, Sutherland HDL Inc, Portland, Oregon, USA
 *   Contact: www.sutherland-hdl.com
 *********************************************************************/

#include <stdlib.h>    /* ANSI C standard library */
#include <stdio.h>     /* ANSI C standard input/output library */
#include <stdarg.h>    /* ANSI C standard arguments library */
#include "vpi_user.h"  /* IEEE 1364 PLI VPI routine library  */

/**********************************************************************
 * calltf routine
 *********************************************************************/
__declspec(dllexport) PLI_INT32 PLIbook_hello_calltf(PLI_BYTE8 *user_data)
{
  vpi_printf("\nHello Questa VPI!\n\n");
  return(0);
}

/**********************************************************************
 * $hello Registration Data
 * (add this function name to the vlog_startup_routines array)
 *********************************************************************/
__declspec(dllexport) void PLIbook_hello_register()
{
  s_vpi_systf_data tf_data;

  tf_data.type        = vpiSysTask;
  tf_data.sysfunctype = 0;
  tf_data.tfname      = "$hello";
  tf_data.calltf      = PLIbook_hello_calltf;
  tf_data.compiletf   = NULL;
  tf_data.sizetf      = NULL;
  tf_data.user_data   = NULL;
  vpi_register_systf(&tf_data);
}
