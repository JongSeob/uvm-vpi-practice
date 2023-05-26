`include "uvm_macros.svh"
`include "macros/uvm_printer_defines.svh"
import uvm_pkg::*;
module tb;
  typedef enum {FALSE = 0, TRUE = 1} e_bool;
  class my_obj_c extends uvm_object;
    // NOTE
    // array	: dynamic array
    // sarray	: static array
    // aa		: associate array
    //				var_aa_<value type>_<key type>
    int                 var_int;
    real                var_real;
    e_bool              var_enum;
    uvm_object          var_object;
    event               var_event;
    string              var_string;
    e_bool              var_array_enum[];
    int                 var_array_int[];
    int                 var_sarray_int[5];
    e_bool              var_sarray_enum[5];
    uvm_object          var_array_object[];
    uvm_object          var_sarray_object[5];
    string              var_array_string[];
    string              var_sarray_string[5];
    e_bool              var_queue_enum[$];
    int                 var_queue_int[$];
    uvm_object          var_queue_object[$];
    string              var_queue_string[$];
    int                 var_aa_int_string[string];
    string              var_aa_string_string[string];
    uvm_object          var_aa_object_string[string];
    int                 var_aa_int_int[int];
    int                 var_aa_int_int_unsigned[int unsigned];
    int                 var_aa_int_integer[integer];
    int                 var_aa_int_integer_unsigned[integer unsigned];
    int                 var_aa_int_byte[byte];
    int                 var_aa_int_byte_unsigned[byte unsigned];
    int                 var_aa_int_shortint[shortint];
    int                 var_aa_int_shortint_unsigned[shortint unsigned];
    int                 var_aa_int_longint[longint];
    int                 var_aa_int_longint_unsigned[longint unsigned];
    int                 var_aa_int_key[int];
    //string              var_aa_string_int[int]; `uvm_field_* macro for aa_string_int does not exist
    uvm_object          var_aa_object_int[int];
    `uvm_object_utils_begin(my_obj_c)
        `uvm_field_int                      ( var_int                      , UVM_DEFAULT                  ) // `uvm_field_int                      ( ARG , FLAG       )
        `uvm_field_real                     ( var_real                     , UVM_DEFAULT                  ) // `uvm_field_real                     ( ARG , FLAG       )
        `uvm_field_enum                     ( e_bool                       , var_enum       , UVM_DEFAULT ) // `uvm_field_enum                     ( T   , ARG , FLAG )
        `uvm_field_object                   ( var_object                   , UVM_DEFAULT                  ) // `uvm_field_object                   ( ARG , FLAG       )
        `uvm_field_event                    ( var_event                    , UVM_DEFAULT                  ) // `uvm_field_event                    ( ARG , FLAG       )
        `uvm_field_string                   ( var_string                   , UVM_DEFAULT                  ) // `uvm_field_string                   ( ARG , FLAG       )
    	  `uvm_field_array_enum               ( e_bool                       , var_array_enum , UVM_DEFAULT ) // `uvm_field_array_enum               ( T   , ARG , FLAG )
        `uvm_field_array_int                ( var_array_int                , UVM_DEFAULT                  ) // `uvm_field_array_int                ( ARG , FLAG       )
        `uvm_field_sarray_int               ( var_sarray_int               , UVM_DEFAULT                  ) // `uvm_field_sarray_int               ( ARG , FLAG       )
    	  `uvm_field_sarray_enum              ( e_bool                       , var_sarray_enum, UVM_DEFAULT ) // `uvm_field_sarray_enum              ( T   , ARG , FLAG )
        `uvm_field_array_object             ( var_array_object             , UVM_DEFAULT                  ) // `uvm_field_array_object             ( ARG , FLAG       )
        `uvm_field_sarray_object            ( var_sarray_object            , UVM_DEFAULT                  ) // `uvm_field_sarray_object            ( ARG , FLAG       )
        `uvm_field_array_string             ( var_array_string             , UVM_DEFAULT                  ) // `uvm_field_array_string             ( ARG , FLAG       )
        `uvm_field_sarray_string            ( var_sarray_string            , UVM_DEFAULT                  ) // `uvm_field_sarray_string            ( ARG , FLAG       )
        `uvm_field_queue_enum               ( e_bool                       , var_queue_enum , UVM_DEFAULT ) // `uvm_field_queue_enum               ( T   , ARG , FLAG )
        `uvm_field_queue_int                ( var_queue_int                , UVM_DEFAULT                  ) // `uvm_field_queue_int                ( ARG , FLAG       )
        `uvm_field_queue_object             ( var_queue_object             , UVM_DEFAULT                  ) // `uvm_field_queue_object             ( ARG , FLAG       )
        `uvm_field_queue_string             ( var_queue_string             , UVM_DEFAULT                  ) // `uvm_field_queue_string             ( ARG , FLAG       )
        `uvm_field_aa_int_string            ( var_aa_int_string            , UVM_DEFAULT                  ) // `uvm_field_aa_int_string            ( ARG , FLAG       )
        `uvm_field_aa_string_string         ( var_aa_string_string         , UVM_DEFAULT                  ) // `uvm_field_aa_string_string         ( ARG , FLAG       )
        `uvm_field_aa_object_string         ( var_aa_object_string         , UVM_DEFAULT                  ) // `uvm_field_aa_object_string         ( ARG , FLAG       )
        `uvm_field_aa_int_int               ( var_aa_int_int               , UVM_DEFAULT                  ) // `uvm_field_aa_int_int               ( ARG , FLAG       )
        `uvm_field_aa_int_int_unsigned      ( var_aa_int_int_unsigned      , UVM_DEFAULT                  ) // `uvm_field_aa_int_int_unsigned      ( ARG , FLAG       )
        `uvm_field_aa_int_integer           ( var_aa_int_integer           , UVM_DEFAULT                  ) // `uvm_field_aa_int_integer           ( ARG , FLAG       )
        `uvm_field_aa_int_integer_unsigned  ( var_aa_int_integer_unsigned  , UVM_DEFAULT                  ) // `uvm_field_aa_int_integer_unsigned  ( ARG , FLAG       )
        `uvm_field_aa_int_byte              ( var_aa_int_byte              , UVM_DEFAULT                  ) // `uvm_field_aa_int_byte              ( ARG , FLAG       )
        `uvm_field_aa_int_byte_unsigned     ( var_aa_int_byte_unsigned     , UVM_DEFAULT                  ) // `uvm_field_aa_int_byte_unsigned     ( ARG , FLAG       )
        `uvm_field_aa_int_shortint          ( var_aa_int_shortint          , UVM_DEFAULT                  ) // `uvm_field_aa_int_shortint          ( ARG , FLAG       )
        `uvm_field_aa_int_shortint_unsigned ( var_aa_int_shortint_unsigned , UVM_DEFAULT                  ) // `uvm_field_aa_int_shortint_unsigned ( ARG , FLAG       )
        `uvm_field_aa_int_longint           ( var_aa_int_longint           , UVM_DEFAULT                  ) // `uvm_field_aa_int_longint           ( ARG , FLAG       )
        `uvm_field_aa_int_longint_unsigned  ( var_aa_int_longint_unsigned  , UVM_DEFAULT                  ) // `uvm_field_aa_int_longint_unsigned  ( ARG , FLAG       )
        `uvm_field_aa_int_key               ( int                          , var_aa_int_key , UVM_DEFAULT ) // `uvm_field_aa_int_key               ( KEY , ARG , FLAG )
      //`uvm_field_aa_string_int            ( var_aa_string_int            , UVM_DEFAULT                  ) // `uvm_field_aa_string_int            ( ARG , FLAG       )
        `uvm_field_aa_object_int            ( var_aa_object_int            , UVM_DEFAULT                  ) // `uvm_field_aa_object_int            ( ARG , FLAG       )
    `uvm_object_utils_end
    function new (string name = "");
      super.new(name);
      init_properties();
    endfunction
    function void init_properties();
      var_enum = TRUE;
      var_object = null;
      var_string = "var_string";
      var_array_enum = new[5]({FALSE, FALSE, TRUE, TRUE, TRUE});
      var_array_int    = new[5]({0, 1, 2, 3, 4});
      var_array_object = new[5]({null, null, null, null, null});
      var_array_string = new[5]({"1", "2", "3", "4", "5"});
      var_aa_int_string["ten"]    = 10;
      var_aa_int_string["eleven"] = 11;
      var_aa_int_string["twenty"] = 20;
	endfunction: init_properties
  endclass
  function void my_print(my_obj_c obj);
	// refer to uvm_1.1d/sv/src/base/uvm_object.svh, Line 875, uvm_object::print
    automatic uvm_table_printer tprinter = new();
    tprinter.print_int        ("var_int",                      obj.var_int, $bits(int), UVM_HEX);
    tprinter.print_real       ("var_real",                     obj.var_real);
    tprinter.print_generic    ("var_enum",                     "e_bool", $bits(e_bool), obj.var_enum.name());
    tprinter.print_object_header ( "var_object", obj.var_object );
    tprinter.print_generic    ("var_event",                    "event", -1, "");
    tprinter.print_string     ("var_string",                   obj.var_string);
    begin
      tprinter.print_array_header ("var_array_enum", obj.var_array_enum.size(), "da(e_bool)");
      foreach(obj.var_array_enum[i])
        tprinter.print_generic($sformatf("[%0d]", i), "e_bool", $bits(e_bool), obj.var_array_enum[i].name(), "["); // last argument is scope_separator
      tprinter.print_array_footer (obj.var_array_enum.size());													   // characters in front of scope_separator is not printed.
    end
    begin
      tprinter.print_array_header ("var_array_int", obj.var_array_int.size(), "da(int)");
      foreach(obj.var_array_int[i])
        tprinter.print_generic($sformatf("[%0d]", i), "int", $bits(int), $sformatf("'h%0h", obj.var_array_int[i]), "[");
        tprinter.print_array_footer (obj.var_array_int.size());
    end
    begin
      tprinter.print_array_header ("var_sarray_int", $size(obj.var_sarray_int), "sa(int)");
      foreach(obj.var_sarray_int[i])
        tprinter.print_generic($sformatf("[%0d]", i), "int", $bits(int), $sformatf("'h%0h", obj.var_sarray_int[i]), "[");
      tprinter.print_array_footer ($size(obj.var_sarray_int));
    end
    begin
      tprinter.print_array_header ("var_aa_int_string", obj.var_aa_int_string.size(), "aa(int, string)");
      foreach(obj.var_aa_int_string[key])
        tprinter.print_generic($sformatf("[\"%s\"]", key), "int", $bits(int), $sformatf("'h%0h", obj.var_aa_int_string[key]), "[");
      tprinter.print_array_footer ($size(obj.var_aa_int_string));
    end
    // if the third argument of print_generic() "size" is set to -2, it prints "..." instead of -2.
    tprinter.print_generic    ("...", "...", -1, "..."); // ...                ...              -1    ...
    tprinter.print_generic    ("...", "...", -2, "..."); // ...                ...              ...   ...
    $fwrite(tprinter.knobs.mcd, tprinter.emit());
  endfunction
  initial begin
    my_obj_c my_obj = new;
    my_obj.print();
    my_print(my_obj);
  end
endmodule