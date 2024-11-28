       IDENTIFICATION DIVISION. 
        PROGRAM-ID.               MAIN.
 
       ENVIRONMENT DIVISION. 
        CONFIGURATION SECTION. 
        
         SOURCE-COMPUTER.         RS02. 
         OBJECT-COMPUTER.         RS02. 
         SPECIAL-NAMES.           PRINTER IS PRINTER. 
        INPUT-OUTPUT SECTION. 
      *> I-O-CONTROL. 

       DATA DIVISION.
      *>FILE SECTION. 
        WORKING-STORAGE SECTION. 
        01  WS-A. 
           05 WS-A-X1             PIC X(02). 
           05 WS-A-X2             PIC X(02). 
           05 WS-A-X3. 
               10 FILLER          PIC X. 
               10 WS-A-X3-1       PIC X. 
        01  WS-B                  PIC X(01). 
        01  WS-C                  PIC X(02). 
        01  WS-D                  PIC X(02). 
        01  WS-RESULT             PIC X(21).
        01  WS-1                  PIC X(11).
        01  WS-2                  PIC X(11).
      *>LINKAGE SECTION. 
       PROCEDURE DIVISION.
      *>  USING Data-Name 
      *>  RETURNING Data-Name 
        S0001-CONTROLLER          SECTION. 
         P0001-CONTROLLER. 
           MOVE Spaces            TO WS-A. 
           Move "MA"              to WS-B. 
           Move "HE"              to WS-C. 
           Move "SH"              to WS-D. 
           Move WS-B              to WS-A-X1. 
           Move WS-C              to WS-A-X2. 
           Move WS-D              to WS-A-X3. 
           Copy P1RUN.
           Display "Who is irst?"            Upon Printer. 
      *     CALL 'SUB1'            USING WS-A, WS-RESULT. 
           DISPLAY WS-RESULT UPON PRINTER. 
           STOP RUN. 
 
         P0001-EXIT. EXIT.
