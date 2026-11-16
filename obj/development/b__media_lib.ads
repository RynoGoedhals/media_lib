pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 16.1.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_media_lib" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#a6983dc1#;
   pragma Export (C, u00001, "media_libB");
   u00002 : constant Version_32 := 16#b2cfab41#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#f0b96e04#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00005, "ada__charactersS");
   u00006 : constant Version_32 := 16#75913d83#;
   pragma Export (C, u00006, "ada__characters__handlingB");
   u00007 : constant Version_32 := 16#729cc5db#;
   pragma Export (C, u00007, "ada__characters__handlingS");
   u00008 : constant Version_32 := 16#cde9ea2d#;
   pragma Export (C, u00008, "ada__characters__latin_1S");
   u00009 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00009, "ada__stringsS");
   u00010 : constant Version_32 := 16#e2b7c99d#;
   pragma Export (C, u00010, "systemS");
   u00011 : constant Version_32 := 16#45e1965e#;
   pragma Export (C, u00011, "system__exception_tableB");
   u00012 : constant Version_32 := 16#6f9cbf84#;
   pragma Export (C, u00012, "system__exception_tableS");
   u00013 : constant Version_32 := 16#7fa0a598#;
   pragma Export (C, u00013, "system__soft_linksB");
   u00014 : constant Version_32 := 16#c40bf0df#;
   pragma Export (C, u00014, "system__soft_linksS");
   u00015 : constant Version_32 := 16#33935a56#;
   pragma Export (C, u00015, "system__secondary_stackB");
   u00016 : constant Version_32 := 16#d845cfdc#;
   pragma Export (C, u00016, "system__secondary_stackS");
   u00017 : constant Version_32 := 16#04356d51#;
   pragma Export (C, u00017, "ada__exceptionsB");
   u00018 : constant Version_32 := 16#677117e5#;
   pragma Export (C, u00018, "ada__exceptionsS");
   u00019 : constant Version_32 := 16#85bf25f7#;
   pragma Export (C, u00019, "ada__exceptions__last_chance_handlerB");
   u00020 : constant Version_32 := 16#c1262c0b#;
   pragma Export (C, u00020, "ada__exceptions__last_chance_handlerS");
   u00021 : constant Version_32 := 16#d01276af#;
   pragma Export (C, u00021, "system__exceptionsS");
   u00022 : constant Version_32 := 16#c367aa24#;
   pragma Export (C, u00022, "system__exceptions__machineB");
   u00023 : constant Version_32 := 16#8d1d496c#;
   pragma Export (C, u00023, "system__exceptions__machineS");
   u00024 : constant Version_32 := 16#2f7ce883#;
   pragma Export (C, u00024, "system__exceptions_debugB");
   u00025 : constant Version_32 := 16#d2b991ce#;
   pragma Export (C, u00025, "system__exceptions_debugS");
   u00026 : constant Version_32 := 16#7597daaf#;
   pragma Export (C, u00026, "system__img_intS");
   u00027 : constant Version_32 := 16#2e691d75#;
   pragma Export (C, u00027, "system__storage_elementsS");
   u00028 : constant Version_32 := 16#5c7d9c20#;
   pragma Export (C, u00028, "system__tracebackB");
   u00029 : constant Version_32 := 16#642d3d20#;
   pragma Export (C, u00029, "system__tracebackS");
   u00030 : constant Version_32 := 16#5f6b6486#;
   pragma Export (C, u00030, "system__traceback_entriesB");
   u00031 : constant Version_32 := 16#2aab7611#;
   pragma Export (C, u00031, "system__traceback_entriesS");
   u00032 : constant Version_32 := 16#61e81064#;
   pragma Export (C, u00032, "system__traceback__symbolicB");
   u00033 : constant Version_32 := 16#3e2e1203#;
   pragma Export (C, u00033, "system__traceback__symbolicS");
   u00034 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00034, "ada__containersS");
   u00035 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00035, "ada__exceptions__tracebackB");
   u00036 : constant Version_32 := 16#47e3d2a3#;
   pragma Export (C, u00036, "ada__exceptions__tracebackS");
   u00037 : constant Version_32 := 16#9111f9c1#;
   pragma Export (C, u00037, "interfacesS");
   u00038 : constant Version_32 := 16#b9ada65a#;
   pragma Export (C, u00038, "interfaces__cB");
   u00039 : constant Version_32 := 16#09d5a0e7#;
   pragma Export (C, u00039, "interfaces__cS");
   u00040 : constant Version_32 := 16#3007a9ef#;
   pragma Export (C, u00040, "system__parametersB");
   u00041 : constant Version_32 := 16#431962c1#;
   pragma Export (C, u00041, "system__parametersS");
   u00042 : constant Version_32 := 16#0978786d#;
   pragma Export (C, u00042, "system__bounded_stringsB");
   u00043 : constant Version_32 := 16#954ae884#;
   pragma Export (C, u00043, "system__bounded_stringsS");
   u00044 : constant Version_32 := 16#22b1fb99#;
   pragma Export (C, u00044, "system__crtlB");
   u00045 : constant Version_32 := 16#c12207f7#;
   pragma Export (C, u00045, "system__crtlS");
   u00046 : constant Version_32 := 16#71c7401b#;
   pragma Export (C, u00046, "system__dwarf_linesB");
   u00047 : constant Version_32 := 16#029d32b0#;
   pragma Export (C, u00047, "system__dwarf_linesS");
   u00048 : constant Version_32 := 16#f9910acc#;
   pragma Export (C, u00048, "system__address_imageB");
   u00049 : constant Version_32 := 16#435b54a7#;
   pragma Export (C, u00049, "system__address_imageS");
   u00050 : constant Version_32 := 16#d7092338#;
   pragma Export (C, u00050, "system__img_address_32S");
   u00051 : constant Version_32 := 16#fa2982ba#;
   pragma Export (C, u00051, "system__img_address_64S");
   u00052 : constant Version_32 := 16#b9ea0573#;
   pragma Export (C, u00052, "system__img_unsS");
   u00053 : constant Version_32 := 16#189db6c4#;
   pragma Export (C, u00053, "system__unsigned_typesS");
   u00054 : constant Version_32 := 16#20ec7aa3#;
   pragma Export (C, u00054, "system__ioB");
   u00055 : constant Version_32 := 16#7cf53ed2#;
   pragma Export (C, u00055, "system__ioS");
   u00056 : constant Version_32 := 16#e15ca368#;
   pragma Export (C, u00056, "system__mmapB");
   u00057 : constant Version_32 := 16#5d1b9a97#;
   pragma Export (C, u00057, "system__mmapS");
   u00058 : constant Version_32 := 16#367911c4#;
   pragma Export (C, u00058, "ada__io_exceptionsS");
   u00059 : constant Version_32 := 16#193b6ddb#;
   pragma Export (C, u00059, "system__mmap__os_interfaceB");
   u00060 : constant Version_32 := 16#f34495e5#;
   pragma Export (C, u00060, "system__mmap__os_interfaceS");
   u00061 : constant Version_32 := 16#7d07d9b0#;
   pragma Export (C, u00061, "system__mmap__unixS");
   u00062 : constant Version_32 := 16#861c956a#;
   pragma Export (C, u00062, "system__os_libB");
   u00063 : constant Version_32 := 16#dc62b743#;
   pragma Export (C, u00063, "system__os_libS");
   u00064 : constant Version_32 := 16#94d23d25#;
   pragma Export (C, u00064, "system__atomic_operations__test_and_setB");
   u00065 : constant Version_32 := 16#57acee8e#;
   pragma Export (C, u00065, "system__atomic_operations__test_and_setS");
   u00066 : constant Version_32 := 16#25d4b3b8#;
   pragma Export (C, u00066, "system__atomic_operationsS");
   u00067 : constant Version_32 := 16#553a519e#;
   pragma Export (C, u00067, "system__atomic_primitivesB");
   u00068 : constant Version_32 := 16#d8f6eff3#;
   pragma Export (C, u00068, "system__atomic_primitivesS");
   u00069 : constant Version_32 := 16#14fb286b#;
   pragma Export (C, u00069, "system__case_utilB");
   u00070 : constant Version_32 := 16#3c4f28f7#;
   pragma Export (C, u00070, "system__case_utilS");
   u00071 : constant Version_32 := 16#8b956324#;
   pragma Export (C, u00071, "system__case_util_nssB");
   u00072 : constant Version_32 := 16#87d84db7#;
   pragma Export (C, u00072, "system__case_util_nssS");
   u00073 : constant Version_32 := 16#256dbbe5#;
   pragma Export (C, u00073, "system__stringsB");
   u00074 : constant Version_32 := 16#7935c985#;
   pragma Export (C, u00074, "system__stringsS");
   u00075 : constant Version_32 := 16#8d759e14#;
   pragma Export (C, u00075, "system__object_readerB");
   u00076 : constant Version_32 := 16#ee235c84#;
   pragma Export (C, u00076, "system__object_readerS");
   u00077 : constant Version_32 := 16#b14bacb0#;
   pragma Export (C, u00077, "system__val_lliS");
   u00078 : constant Version_32 := 16#7d4c7c5b#;
   pragma Export (C, u00078, "system__val_lluS");
   u00079 : constant Version_32 := 16#0d1904b9#;
   pragma Export (C, u00079, "system__val_utilB");
   u00080 : constant Version_32 := 16#0e1c2bbe#;
   pragma Export (C, u00080, "system__val_utilS");
   u00081 : constant Version_32 := 16#382ef1e7#;
   pragma Export (C, u00081, "system__exception_tracesB");
   u00082 : constant Version_32 := 16#0e2fa0fb#;
   pragma Export (C, u00082, "system__exception_tracesS");
   u00083 : constant Version_32 := 16#fd158a37#;
   pragma Export (C, u00083, "system__wch_conB");
   u00084 : constant Version_32 := 16#3bb4eafe#;
   pragma Export (C, u00084, "system__wch_conS");
   u00085 : constant Version_32 := 16#5c289972#;
   pragma Export (C, u00085, "system__wch_stwB");
   u00086 : constant Version_32 := 16#16a5c6ff#;
   pragma Export (C, u00086, "system__wch_stwS");
   u00087 : constant Version_32 := 16#7cd63de5#;
   pragma Export (C, u00087, "system__wch_cnvB");
   u00088 : constant Version_32 := 16#3d74208e#;
   pragma Export (C, u00088, "system__wch_cnvS");
   u00089 : constant Version_32 := 16#e538de43#;
   pragma Export (C, u00089, "system__wch_jisB");
   u00090 : constant Version_32 := 16#88c342a4#;
   pragma Export (C, u00090, "system__wch_jisS");
   u00091 : constant Version_32 := 16#0286ce9f#;
   pragma Export (C, u00091, "system__soft_links__initializeB");
   u00092 : constant Version_32 := 16#ac2e8b53#;
   pragma Export (C, u00092, "system__soft_links__initializeS");
   u00093 : constant Version_32 := 16#8599b27b#;
   pragma Export (C, u00093, "system__stack_checkingB");
   u00094 : constant Version_32 := 16#25e8dc8b#;
   pragma Export (C, u00094, "system__stack_checkingS");
   u00095 : constant Version_32 := 16#9a8aed35#;
   pragma Export (C, u00095, "ada__strings__mapsB");
   u00096 : constant Version_32 := 16#879d83f1#;
   pragma Export (C, u00096, "ada__strings__mapsS");
   u00097 : constant Version_32 := 16#d55f7fbe#;
   pragma Export (C, u00097, "system__bit_opsB");
   u00098 : constant Version_32 := 16#2f4465a1#;
   pragma Export (C, u00098, "system__bit_opsS");
   u00099 : constant Version_32 := 16#5c2ece6d#;
   pragma Export (C, u00099, "ada__strings__maps__constantsS");
   u00100 : constant Version_32 := 16#08e5adbf#;
   pragma Export (C, u00100, "ada__command_lineB");
   u00101 : constant Version_32 := 16#3cdef8c9#;
   pragma Export (C, u00101, "ada__command_lineS");
   u00102 : constant Version_32 := 16#9e964cc8#;
   pragma Export (C, u00102, "ada__directoriesB");
   u00103 : constant Version_32 := 16#4b8877ef#;
   pragma Export (C, u00103, "ada__directoriesS");
   u00104 : constant Version_32 := 16#9fbfddeb#;
   pragma Export (C, u00104, "ada__calendarB");
   u00105 : constant Version_32 := 16#c907a168#;
   pragma Export (C, u00105, "ada__calendarS");
   u00106 : constant Version_32 := 16#d61fa080#;
   pragma Export (C, u00106, "system__os_primitivesB");
   u00107 : constant Version_32 := 16#e54aac6b#;
   pragma Export (C, u00107, "system__os_primitivesS");
   u00108 : constant Version_32 := 16#75266e31#;
   pragma Export (C, u00108, "system__c_timeB");
   u00109 : constant Version_32 := 16#0c19ab29#;
   pragma Export (C, u00109, "system__c_timeS");
   u00110 : constant Version_32 := 16#e91b7be9#;
   pragma Export (C, u00110, "system__os_constantsS");
   u00111 : constant Version_32 := 16#c1ef1512#;
   pragma Export (C, u00111, "ada__calendar__formattingB");
   u00112 : constant Version_32 := 16#5a9d5c4e#;
   pragma Export (C, u00112, "ada__calendar__formattingS");
   u00113 : constant Version_32 := 16#974d849e#;
   pragma Export (C, u00113, "ada__calendar__time_zonesB");
   u00114 : constant Version_32 := 16#55da5b9f#;
   pragma Export (C, u00114, "ada__calendar__time_zonesS");
   u00115 : constant Version_32 := 16#786fc8f2#;
   pragma Export (C, u00115, "system__val_fixed_64S");
   u00116 : constant Version_32 := 16#27732c71#;
   pragma Export (C, u00116, "system__arith_64B");
   u00117 : constant Version_32 := 16#134523ab#;
   pragma Export (C, u00117, "system__arith_64S");
   u00118 : constant Version_32 := 16#3bb0f018#;
   pragma Export (C, u00118, "system__val_intS");
   u00119 : constant Version_32 := 16#d73b0dd1#;
   pragma Export (C, u00119, "system__val_unsS");
   u00120 : constant Version_32 := 16#c3b32edd#;
   pragma Export (C, u00120, "ada__containers__helpersB");
   u00121 : constant Version_32 := 16#f29f054d#;
   pragma Export (C, u00121, "ada__containers__helpersS");
   u00122 : constant Version_32 := 16#7598b591#;
   pragma Export (C, u00122, "ada__finalizationS");
   u00123 : constant Version_32 := 16#6e6e3f5b#;
   pragma Export (C, u00123, "ada__streamsB");
   u00124 : constant Version_32 := 16#bd793559#;
   pragma Export (C, u00124, "ada__streamsS");
   u00125 : constant Version_32 := 16#a201b8c5#;
   pragma Export (C, u00125, "ada__strings__text_buffersB");
   u00126 : constant Version_32 := 16#a7cfd09b#;
   pragma Export (C, u00126, "ada__strings__text_buffersS");
   u00127 : constant Version_32 := 16#8b7604c4#;
   pragma Export (C, u00127, "ada__strings__utf_encodingB");
   u00128 : constant Version_32 := 16#c9e86997#;
   pragma Export (C, u00128, "ada__strings__utf_encodingS");
   u00129 : constant Version_32 := 16#bb780f45#;
   pragma Export (C, u00129, "ada__strings__utf_encoding__stringsB");
   u00130 : constant Version_32 := 16#b85ff4b6#;
   pragma Export (C, u00130, "ada__strings__utf_encoding__stringsS");
   u00131 : constant Version_32 := 16#d1d1ed0b#;
   pragma Export (C, u00131, "ada__strings__utf_encoding__wide_stringsB");
   u00132 : constant Version_32 := 16#5678478f#;
   pragma Export (C, u00132, "ada__strings__utf_encoding__wide_stringsS");
   u00133 : constant Version_32 := 16#c2b98963#;
   pragma Export (C, u00133, "ada__strings__utf_encoding__wide_wide_stringsB");
   u00134 : constant Version_32 := 16#d7af3358#;
   pragma Export (C, u00134, "ada__strings__utf_encoding__wide_wide_stringsS");
   u00135 : constant Version_32 := 16#df45aed8#;
   pragma Export (C, u00135, "ada__tagsB");
   u00136 : constant Version_32 := 16#99822aba#;
   pragma Export (C, u00136, "ada__tagsS");
   u00137 : constant Version_32 := 16#3548d972#;
   pragma Export (C, u00137, "system__htableB");
   u00138 : constant Version_32 := 16#636e9176#;
   pragma Export (C, u00138, "system__htableS");
   u00139 : constant Version_32 := 16#1f1abe38#;
   pragma Export (C, u00139, "system__string_hashB");
   u00140 : constant Version_32 := 16#c42b1109#;
   pragma Export (C, u00140, "system__string_hashS");
   u00141 : constant Version_32 := 16#44f765f3#;
   pragma Export (C, u00141, "system__put_imagesB");
   u00142 : constant Version_32 := 16#f2a8455f#;
   pragma Export (C, u00142, "system__put_imagesS");
   u00143 : constant Version_32 := 16#22b9eb9f#;
   pragma Export (C, u00143, "ada__strings__text_buffers__utilsB");
   u00144 : constant Version_32 := 16#89062ac3#;
   pragma Export (C, u00144, "ada__strings__text_buffers__utilsS");
   u00145 : constant Version_32 := 16#d00f339c#;
   pragma Export (C, u00145, "system__finalization_rootB");
   u00146 : constant Version_32 := 16#e8cbf749#;
   pragma Export (C, u00146, "system__finalization_rootS");
   u00147 : constant Version_32 := 16#52627794#;
   pragma Export (C, u00147, "system__atomic_countersB");
   u00148 : constant Version_32 := 16#3eaf265e#;
   pragma Export (C, u00148, "system__atomic_countersS");
   u00149 : constant Version_32 := 16#eb73338a#;
   pragma Export (C, u00149, "ada__directories__hierarchical_file_namesB");
   u00150 : constant Version_32 := 16#34d5eeb2#;
   pragma Export (C, u00150, "ada__directories__hierarchical_file_namesS");
   u00151 : constant Version_32 := 16#ab4ad33a#;
   pragma Export (C, u00151, "ada__directories__validityB");
   u00152 : constant Version_32 := 16#0877bcae#;
   pragma Export (C, u00152, "ada__directories__validityS");
   u00153 : constant Version_32 := 16#eab62ba6#;
   pragma Export (C, u00153, "ada__strings__fixedB");
   u00154 : constant Version_32 := 16#f9c1b568#;
   pragma Export (C, u00154, "ada__strings__fixedS");
   u00155 : constant Version_32 := 16#40393f6f#;
   pragma Export (C, u00155, "ada__strings__searchB");
   u00156 : constant Version_32 := 16#7f896bb3#;
   pragma Export (C, u00156, "ada__strings__searchS");
   u00157 : constant Version_32 := 16#7e321c90#;
   pragma Export (C, u00157, "ada__strings__unboundedB");
   u00158 : constant Version_32 := 16#d6cc3e91#;
   pragma Export (C, u00158, "ada__strings__unboundedS");
   u00159 : constant Version_32 := 16#8e328749#;
   pragma Export (C, u00159, "system__finalization_primitivesB");
   u00160 : constant Version_32 := 16#64e3a357#;
   pragma Export (C, u00160, "system__finalization_primitivesS");
   u00161 : constant Version_32 := 16#fae11091#;
   pragma Export (C, u00161, "system__os_locksS");
   u00162 : constant Version_32 := 16#21021bbe#;
   pragma Export (C, u00162, "system__return_stackS");
   u00163 : constant Version_32 := 16#72726776#;
   pragma Export (C, u00163, "system__stream_attributesB");
   u00164 : constant Version_32 := 16#5324c4c7#;
   pragma Export (C, u00164, "system__stream_attributesS");
   u00165 : constant Version_32 := 16#c027a94e#;
   pragma Export (C, u00165, "system__stream_attributes__xdrB");
   u00166 : constant Version_32 := 16#35ff530d#;
   pragma Export (C, u00166, "system__stream_attributes__xdrS");
   u00167 : constant Version_32 := 16#218516f1#;
   pragma Export (C, u00167, "system__fat_fltS");
   u00168 : constant Version_32 := 16#07b71ffc#;
   pragma Export (C, u00168, "system__fat_lfltS");
   u00169 : constant Version_32 := 16#7d67b116#;
   pragma Export (C, u00169, "system__fat_llfS");
   u00170 : constant Version_32 := 16#8a96b07d#;
   pragma Export (C, u00170, "system__file_attributesS");
   u00171 : constant Version_32 := 16#a94e7662#;
   pragma Export (C, u00171, "system__file_ioB");
   u00172 : constant Version_32 := 16#84f89cdb#;
   pragma Export (C, u00172, "system__file_ioS");
   u00173 : constant Version_32 := 16#1cacf006#;
   pragma Export (C, u00173, "interfaces__c_streamsB");
   u00174 : constant Version_32 := 16#ecfa876a#;
   pragma Export (C, u00174, "interfaces__c_streamsS");
   u00175 : constant Version_32 := 16#880c7e1a#;
   pragma Export (C, u00175, "system__file_control_blockS");
   u00176 : constant Version_32 := 16#fb0a37d7#;
   pragma Export (C, u00176, "system__regexpB");
   u00177 : constant Version_32 := 16#7756f8de#;
   pragma Export (C, u00177, "system__regexpS");
   u00178 : constant Version_32 := 16#9969561e#;
   pragma Export (C, u00178, "system__storage_poolsB");
   u00179 : constant Version_32 := 16#62b09fd7#;
   pragma Export (C, u00179, "system__storage_poolsS");
   u00180 : constant Version_32 := 16#c7620b41#;
   pragma Export (C, u00180, "ada__text_ioB");
   u00181 : constant Version_32 := 16#2e7275c8#;
   pragma Export (C, u00181, "ada__text_ioS");
   u00182 : constant Version_32 := 16#17707304#;
   pragma Export (C, u00182, "media_typesB");
   u00183 : constant Version_32 := 16#db6e6db4#;
   pragma Export (C, u00183, "media_typesS");
   u00184 : constant Version_32 := 16#e18a47a0#;
   pragma Export (C, u00184, "ada__float_text_ioB");
   u00185 : constant Version_32 := 16#a31d9ddf#;
   pragma Export (C, u00185, "ada__float_text_ioS");
   u00186 : constant Version_32 := 16#5e511f79#;
   pragma Export (C, u00186, "ada__text_io__generic_auxB");
   u00187 : constant Version_32 := 16#d2ac8a2d#;
   pragma Export (C, u00187, "ada__text_io__generic_auxS");
   u00188 : constant Version_32 := 16#1d9aab62#;
   pragma Export (C, u00188, "system__img_fltS");
   u00189 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00189, "system__float_controlB");
   u00190 : constant Version_32 := 16#024b8aa1#;
   pragma Export (C, u00190, "system__float_controlS");
   u00191 : constant Version_32 := 16#eeeda2c4#;
   pragma Export (C, u00191, "system__img_utilB");
   u00192 : constant Version_32 := 16#95ae6d24#;
   pragma Export (C, u00192, "system__img_utilS");
   u00193 : constant Version_32 := 16#47ad7025#;
   pragma Export (C, u00193, "system__powten_fltS");
   u00194 : constant Version_32 := 16#6136a288#;
   pragma Export (C, u00194, "system__img_lfltS");
   u00195 : constant Version_32 := 16#8967135e#;
   pragma Export (C, u00195, "system__img_lluS");
   u00196 : constant Version_32 := 16#4ebf9b55#;
   pragma Export (C, u00196, "system__powten_lfltS");
   u00197 : constant Version_32 := 16#2ae685e4#;
   pragma Export (C, u00197, "system__img_llfS");
   u00198 : constant Version_32 := 16#792e21de#;
   pragma Export (C, u00198, "system__powten_llfS");
   u00199 : constant Version_32 := 16#3522105a#;
   pragma Export (C, u00199, "system__val_fltS");
   u00200 : constant Version_32 := 16#47a7e664#;
   pragma Export (C, u00200, "system__exn_fltS");
   u00201 : constant Version_32 := 16#d08e5eab#;
   pragma Export (C, u00201, "system__val_lfltS");
   u00202 : constant Version_32 := 16#f9e607bd#;
   pragma Export (C, u00202, "system__exn_lfltS");
   u00203 : constant Version_32 := 16#7059ece6#;
   pragma Export (C, u00203, "system__val_llfS");
   u00204 : constant Version_32 := 16#d448c7cd#;
   pragma Export (C, u00204, "system__exn_llfS");
   u00205 : constant Version_32 := 16#02e43f40#;
   pragma Export (C, u00205, "system__pool_globalB");
   u00206 : constant Version_32 := 16#fa5c0412#;
   pragma Export (C, u00206, "system__pool_globalS");
   u00207 : constant Version_32 := 16#a56a70fa#;
   pragma Export (C, u00207, "system__memoryB");
   u00208 : constant Version_32 := 16#fa235587#;
   pragma Export (C, u00208, "system__memoryS");
   u00209 : constant Version_32 := 16#36601f03#;
   pragma Export (C, u00209, "system__storage_pools__subpoolsB");
   u00210 : constant Version_32 := 16#219014ff#;
   pragma Export (C, u00210, "system__storage_pools__subpoolsS");
   u00211 : constant Version_32 := 16#3676fd0b#;
   pragma Export (C, u00211, "system__storage_pools__subpools__finalizationB");
   u00212 : constant Version_32 := 16#4c972977#;
   pragma Export (C, u00212, "system__storage_pools__subpools__finalizationS");
   u00213 : constant Version_32 := 16#be6f5d2e#;
   pragma Export (C, u00213, "system__strings__stream_opsB");
   u00214 : constant Version_32 := 16#9a9c0b11#;
   pragma Export (C, u00214, "system__strings__stream_opsS");
   u00215 : constant Version_32 := 16#be2f8c66#;
   pragma Export (C, u00215, "probeB");
   u00216 : constant Version_32 := 16#bbae7f91#;
   pragma Export (C, u00216, "probeS");
   u00217 : constant Version_32 := 16#b5988c27#;
   pragma Export (C, u00217, "gnatS");
   u00218 : constant Version_32 := 16#ded01ba7#;
   pragma Export (C, u00218, "gnat__os_libS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.atomic_operations%s
   --  system.case_util_nss%s
   --  system.case_util_nss%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.crtl%b
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_flt%s
   --  system.powten_lflt%s
   --  system.powten_llf%s
   --  system.storage_elements%s
   --  system.img_address_32%s
   --  system.img_address_64%s
   --  system.return_stack%s
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.exn_flt%s
   --  system.exn_lflt%s
   --  system.exn_llf%s
   --  system.img_int%s
   --  system.img_llu%s
   --  system.img_uns%s
   --  system.img_util%s
   --  system.img_util%b
   --  system.traceback%s
   --  system.traceback%b
   --  ada.characters.handling%s
   --  system.atomic_operations.test_and_set%s
   --  system.case_util%s
   --  system.os_lib%s
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.bounded_strings%s
   --  system.bounded_strings%b
   --  system.case_util%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.atomic_primitives%s
   --  system.atomic_primitives%b
   --  system.exceptions%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  ada.characters.handling%b
   --  system.atomic_operations.test_and_set%b
   --  system.exception_traces%s
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.mmap%s
   --  system.mmap.os_interface%s
   --  system.mmap%b
   --  system.mmap.unix%s
   --  system.mmap.os_interface%b
   --  system.object_reader%s
   --  system.object_reader%b
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  system.os_lib%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.command_line%s
   --  ada.command_line%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%s
   --  ada.strings.fixed%b
   --  ada.strings.utf_encoding%s
   --  ada.strings.utf_encoding%b
   --  ada.strings.utf_encoding.strings%s
   --  ada.strings.utf_encoding.strings%b
   --  ada.strings.utf_encoding.wide_strings%s
   --  ada.strings.utf_encoding.wide_strings%b
   --  ada.strings.utf_encoding.wide_wide_strings%s
   --  ada.strings.utf_encoding.wide_wide_strings%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.strings.text_buffers%s
   --  ada.strings.text_buffers%b
   --  ada.strings.text_buffers.utils%s
   --  ada.strings.text_buffers.utils%b
   --  gnat%s
   --  gnat.os_lib%s
   --  system.arith_64%s
   --  system.arith_64%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.os_constants%s
   --  system.c_time%s
   --  system.c_time%b
   --  system.os_locks%s
   --  system.finalization_primitives%s
   --  system.finalization_primitives%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.put_images%s
   --  system.put_images%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.containers.helpers%s
   --  ada.containers.helpers%b
   --  system.file_io%s
   --  system.file_io%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.storage_pools.subpools%b
   --  system.stream_attributes%s
   --  system.stream_attributes.xdr%s
   --  system.stream_attributes.xdr%b
   --  system.stream_attributes%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.val_fixed_64%s
   --  system.val_flt%s
   --  system.val_lflt%s
   --  system.val_llf%s
   --  system.val_uns%s
   --  system.val_int%s
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.time_zones%s
   --  ada.calendar.time_zones%b
   --  ada.calendar.formatting%s
   --  ada.calendar.formatting%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  system.file_attributes%s
   --  system.img_flt%s
   --  system.img_lflt%s
   --  system.img_llf%s
   --  ada.float_text_io%s
   --  ada.float_text_io%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.regexp%s
   --  system.regexp%b
   --  ada.directories%s
   --  ada.directories.hierarchical_file_names%s
   --  ada.directories.validity%s
   --  ada.directories.validity%b
   --  ada.directories%b
   --  ada.directories.hierarchical_file_names%b
   --  system.strings.stream_ops%s
   --  system.strings.stream_ops%b
   --  media_types%s
   --  media_types%b
   --  probe%s
   --  probe%b
   --  media_lib%b
   --  END ELABORATION ORDER

end ada_main;
