pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__media_lib.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__media_lib.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E063 : Short_Integer; pragma Import (Ada, E063, "system__os_lib_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "ada__exceptions_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "system__soft_links_E");
   E012 : Short_Integer; pragma Import (Ada, E012, "system__exception_table_E");
   E034 : Short_Integer; pragma Import (Ada, E034, "ada__containers_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__io_exceptions_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "ada__strings_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "ada__strings__maps_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__strings__maps__constants_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "interfaces__c_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exceptions_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "system__object_reader_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "system__dwarf_lines_E");
   E092 : Short_Integer; pragma Import (Ada, E092, "system__soft_links__initialize_E");
   E033 : Short_Integer; pragma Import (Ada, E033, "system__traceback__symbolic_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "ada__strings__utf_encoding_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ada__tags_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "ada__strings__text_buffers_E");
   E217 : Short_Integer; pragma Import (Ada, E217, "gnat_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "ada__streams_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "system__file_control_block_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "system__finalization_root_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "ada__finalization_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "system__file_io_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "system__storage_pools_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "system__storage_pools__subpools_E");
   E158 : Short_Integer; pragma Import (Ada, E158, "ada__strings__unbounded_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "ada__calendar_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "ada__calendar__time_zones_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "ada__text_io_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "system__pool_global_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "system__regexp_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "ada__directories_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "media_types_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "probe_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E183 := E183 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "media_types__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "ada__directories__finalize_body");
      begin
         E103 := E103 - 1;
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__directories__finalize_spec");
      begin
         F3;
      end;
      E177 := E177 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__regexp__finalize_spec");
      begin
         F4;
      end;
      E206 := E206 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__pool_global__finalize_spec");
      begin
         F5;
      end;
      E181 := E181 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "ada__text_io__finalize_spec");
      begin
         F6;
      end;
      E158 := E158 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "ada__strings__unbounded__finalize_spec");
      begin
         F7;
      end;
      E210 := E210 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__storage_pools__subpools__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__file_io__finalize_body");
      begin
         E172 := E172 - 1;
         F9;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Exception_Tracebacks_Symbolic : Integer;
      pragma Import (C, Exception_Tracebacks_Symbolic, "__gl_exception_tracebacks_symbolic");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");
      Interrupts_Default_To_System : Integer;
      pragma Import (C, Interrupts_Default_To_System, "__gl_interrupts_default_to_system");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := '8';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Exception_Tracebacks_Symbolic := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E012 := E012 + 1;
      Ada.Containers'Elab_Spec;
      E034 := E034 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E058 := E058 + 1;
      Ada.Strings'Elab_Spec;
      E009 := E009 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E096 := E096 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E099 := E099 + 1;
      Interfaces.C'Elab_Spec;
      E039 := E039 + 1;
      System.Exceptions'Elab_Spec;
      E021 := E021 + 1;
      System.Object_Reader'Elab_Spec;
      E076 := E076 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E047 := E047 + 1;
      System.Os_Lib'Elab_Body;
      E063 := E063 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E092 := E092 + 1;
      E014 := E014 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E033 := E033 + 1;
      E018 := E018 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E128 := E128 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E136 := E136 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      E126 := E126 + 1;
      Gnat'Elab_Spec;
      E217 := E217 + 1;
      Ada.Streams'Elab_Spec;
      E124 := E124 + 1;
      System.File_Control_Block'Elab_Spec;
      E175 := E175 + 1;
      System.Finalization_Root'Elab_Spec;
      E146 := E146 + 1;
      Ada.Finalization'Elab_Spec;
      E122 := E122 + 1;
      System.File_Io'Elab_Body;
      E172 := E172 + 1;
      System.Storage_Pools'Elab_Spec;
      E179 := E179 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E210 := E210 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E158 := E158 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E105 := E105 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E114 := E114 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E181 := E181 + 1;
      System.Pool_Global'Elab_Spec;
      E206 := E206 + 1;
      System.Regexp'Elab_Spec;
      E177 := E177 + 1;
      Ada.Directories'Elab_Spec;
      Ada.Directories'Elab_Body;
      E103 := E103 + 1;
      Media_Types'Elab_Spec;
      E183 := E183 + 1;
      Probe'Elab_Spec;
      E216 := E216 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_media_lib");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/onyr/Documents/media_lib/obj/development/media_types.o
   --   /home/onyr/Documents/media_lib/obj/development/probe.o
   --   /home/onyr/Documents/media_lib/obj/development/media_lib.o
   --   -L/home/onyr/Documents/media_lib/obj/development/
   --   -L/home/onyr/Documents/media_lib/obj/development/
   --   -L/home/onyr/.local/share/alire/toolchains/gnat_native_16.1.0_9f74f58a/lib/gcc/x86_64-pc-linux-gnu/16.1.0/adalib/
   --   -static
   --   -lgnat
   --   -ldl
--  END Object file/option list   

end ada_main;
