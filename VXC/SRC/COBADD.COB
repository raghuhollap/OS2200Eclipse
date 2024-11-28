       IDENTIFICATION DIVISION. 
       PROGRAM-ID.    COBADD. 
       AUTHOR.        SREELATHA. 
      ****************************************************************** 
      *                                                                * 
      * 'Modular Arithmetic'                                           * 
      *                                                                * 
      *  Accept two Integers,                                          * 
      *  Divide the first by the second giving a remainder and         * 
      *  Display the two results                                       * 
      *                                                                * 
      ****************************************************************** 
       ENVIRONMENT DIVISION. 
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
      * 
       01  WS-ACCEPT-1                 PIC 9(10) BINARY. 
       01  WS-ACCEPT-2                 COMP-2. 
       01  WS-RESULT                   COMP-2. 
       01  WS-REMAINDER                COMP-2. 
      * 
       PROCEDURE DIVISION. 
       S0000-PROGRAM                  SECTION.
       P0000-PROGRAM. 
      *TRPBLOCK.
           DISPLAY "COBOL Program for adding 2 numbers". 
           DISPLAY " ". 
 
            DISPLAY "Enter an integer 1 between Zero and 999999". 
            ACCEPT  WS-ACCEPT-1. 
 
            DISPLAY "Enter another integer 2 between Zero and 999999". 
            ACCEPT  WS-ACCEPT-2. 
 
           IF WS-ACCEPT-2 = ZERO 
           DISPLAY "Cannot divide by ZERO!" 
           STOP RUN. 
 
           DIVIDE WS-ACCEPT-1 BY WS-ACCEPT-2 
                 GIVING    WS-RESULT 
                 REMAINDER WS-REMAINDER. 
           
           DISPLAY " Dividing "              WS-ACCEPT-1 
                   " by "                    WS-ACCEPT-2 
                   " gives you a result of " WS-RESULT 
                   " with a remainder of "   WS-REMAINDER. 
           
           STOP RUN. 
       P0000-EXIT.  
           EXIT. 
