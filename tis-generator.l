# PicoLisp tis.config file generator
(de prn (F M)
   (prinl "{")
   (printsp "name" ': (pack F " - " M))
   (prinl ",")
   (printsp "files" ': "all")
   (prinl ",")
   (printsp "machdep" ': (text M))
   (prinl ",")
   (printsp "raw_options" ':)
   (prin "{ ")
   (printsp "-no-results" ': "true")
   (prinl "} ,")
   (printsp "compilation_cmd" ': "-Iinclude  -DBASH_PLATFORM=BASH_32")
   (prinl ",")
   (printsp "main" ': (text F))
   (prinl)
   (prinl "}") )
(setq
   *M
   (quote
      gcc_sparc_64 gcc_sparc_32
      # sparc_64 sparc_32
      # x86_32 x86_64
      # x86_16 x86_16_huge
      # x86_win32 x86_win64
      # armeb_eabi arm_eabi aarch64 aarch64eb
      # rv64ifdq rv32ifdq
      # mips_o32 mips_n32 mips_64 mipsel_64
      # mipsel_n32 apple_ppc_32
   )
   *F
   (quote
      main
   )
   *L
   (make
      (for F *F
         (for M *M
            (link (cons F M)) ) ) ) )
(out "tis.config"
   (prinl "// Auto genetated file")
   (prinl "[")
   (for (L *L L (cdr L))
      (let (F (caar L)  M (cdar L))
         (prn F M)
         (and (cdr L) (prinl ",")) ) )
   (prinl "]") )
(bye)
