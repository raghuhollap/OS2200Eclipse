       IDENTIFICATION DIVISION.
       PROGRAM-ID. ALLOC.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. UNISYS-2200.
       OBJECT-COMPUTER. UNISYS-2200 MEMORY 3 MODULES.
       SPECIAL-NAMES.
           PRINTER IS PRINTER
           CONSOLE IS CONSOLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-WORD                          PIC 1(36).
       01  WS-WORD6 REDEFINES WS-WORD.
           03 WS-S1                         PIC 1(6).
           03 WS-S2                         PIC 1(6).
           03 WS-S3                         PIC 1(6).
           03 WS-S4                         PIC 1(6).
           03 WS-S5                         PIC 1(6).
           03 WS-S6                         PIC 1(6).
       01  WS-WORD4 REDEFINES WS-WORD.
           03 WS-Q1                         PIC 1(9).
           03 WS-Q2                         PIC 1(9).
           03 WS-Q3                         PIC 1(9).
           03 WS-Q4                         PIC 1(9).
       01  WS-TEST.
               05  TEST-COMP1           PIC  9(01)  COMP.
               05  TEST-COMP2           PIC  9(02)  COMP.
               05  TEST-COMP3           PIC  9(03)  COMP.
               05  TEST-COMP4           PIC  9(04)  COMP.
               05  TEST-COMP5           PIC  9(05)  COMP.
               05  TEST-COMP6           PIC  9(06)  COMP.
               05  TEST-COMP7           PIC  9(07)  COMP.
               05  TEST-COMP8           PIC  9(08)  COMP.
               05  TEST-COMP9           PIC  9(09)  COMP.
               05  TEST-COMP10          PIC  9(10)  COMP.
               05  TEST-COMP11          PIC  9(11)  COMP.
               05  TEST-COMP12          PIC  9(12)  COMP.
               05  TEST-COMP13          PIC  9(13)  COMP.
               05  TEST-COMP14          PIC  9(14)  COMP.
               05  TEST-COMP15          PIC  9(15)  COMP.
               05  TEST-COMP16          PIC  9(16)  COMP.
               05  TEST-COMP17          PIC  9(17)  COMP.
               05  TEST-COMP18          PIC  9(18)  COMP.
       01  WS-DISP-2.
           03  WS-FLD1J                 PIC X(1) USAGE DISP-2.
           03  WS-FLD2J                 PIC X(2) USAGE DISP-2.
           03  WS-FLD3J                 PIC X(5) USAGE DISP-2.
       01  WS-DISP.
           03  WS-FLD1                  PIC X(1).
           03  WS-FLD2                  PIC X(2).
           03  WS-FLD3                  PIC X(5).
           03  WS-GRP1.
             05  WS-FLD4                PIC 9(2).
             05  WS-FLD5                PIC X(10).

       PROCEDURE DIVISION.

       A000-CONTROL.
           display "start alloc" upon printer.
           move 1 to test-comp1.
           move 1 to test-comp2.
           move 1 to test-comp3.
           move 1 to test-comp4.
           move 1 to test-comp5.
           move 1 to test-comp6.
           move 1 to test-comp7.
           move 1 to test-comp8.
           move 1 to test-comp9.
           move 1 to test-comp10.
           move 1 to test-comp11.
           move 1 to test-comp12.
           move 1 to test-comp13.
           move 1 to test-comp14.
           move 1 to test-comp15.
           move 1 to test-comp16.
           move 1 to test-comp17.
           move 1 to test-comp18.
           MOVE "A" TO WS-FLD1.
           MOVE "A" TO WS-FLD2.
           MOVE "A" TO WS-FLD3.
           display "WS-FLD1: " WS-FLD1 upon printer.


       END-PARA.
                  STOP RUN.