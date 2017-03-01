import FFI_OCaml

printStr : String -> OCaml_IO ()
printStr = foreign FFI_OCaml "Pervasives.print_string" (String -> OCaml_IO ())

printEndline : String -> OCaml_IO ()
printEndline = foreign FFI_OCaml "Pervasives.print_endline" (String -> OCaml_IO ())

printInt : Int -> OCaml_IO ()
printInt = foreign FFI_OCaml "Pervasives.print_int" (Int -> OCaml_IO ())

intOfString : String -> OCaml_IO Int
intOfString = foreign FFI_OCaml "Pervasives.int_of_string" (String -> OCaml_IO Int)

readLine : OCaml_IO String
readLine = foreign FFI_OCaml "Pervasives.read_line" (OCaml_IO String)

printChar : Char -> OCaml_IO ()
printChar = foreign FFI_OCaml "Pervasives.print_char" (Char -> OCaml_IO ())

chr : Int -> OCaml_IO Char
chr = foreign FFI_OCaml "Char.chr" (Int -> OCaml_IO Char)

main : OCaml_IO ()
main = do -- strings
          readLine >>= printEndline
          printEndline "hallelujah"

          -- ints
          printInt 12345
          printEndline ""
          intOfString "67890" >>= printInt
          printEndline ""

          -- big ints
          -- who knows?

          -- chars
          printChar 'i'
          printEndline ""
          chr 65 >>= printChar
          printEndline ""

