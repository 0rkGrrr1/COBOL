      ***************************************************************
      * Author: Anastasija Litvinionok nlitvinionok@gmail.com
      * Date: 2018.09.16
      * Purpose: Learning COBOL
      * Tectonics: cobc
      ****************************************************************
000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. CALCULATOR.

000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006     01 WS-A PIC 9(3)V9(5) COMP.
000007     01 WS-B PIC 9(3)V9(5) COMP.
000008     01 WS-RESULT PIC Z(3)BZ(3)BZ(3).Z(10).
000009     01 WS-REMAINDER PIC Z(3).Z(10).
           01 WS-C PIC 9(1).
           01 WS-SIGN PIC X(2).
000011
000012 PROCEDURE DIVISION.
           DISPLAY "Greetings! This is a simple calculator.".
000014 MAIN-PROCEDURE.
000015     DISPLAY " ".
           DISPLAY "------------ Starting work ------------".
           DISPLAY " ".
000018     DISPLAY "Please Enter first number from 0 to 999,".
           DISPLAY "no more than 5 decimal places allowed.".
000020     ACCEPT WS-A.
           DISPLAY " ".
000022     DISPLAY "Please Enter second number from 0 to 999,".
           DISPLAY "no more than 5 decimal places allowed.".
000024     ACCEPT WS-B.
           DISPLAY " ".
000026     DISPLAY "-----------------------------------".
000027     DISPLAY " ".
000028     DISPLAY "Your results are:".
000029     ADD WS-A TO WS-B GIVING WS-RESULT.
000030     DISPLAY "Summ: " WS-RESULT.
000031
000032     SUBTRACT WS-B FROM WS-A GIVING WS-RESULT.
           IF WS-A < WS-B THEN
               MOVE " -" TO WS-SIGN
           END-IF.
000033     DISPLAY "Subtraction: " WS-SIGN WS-RESULT.
000034
000035     MULTIPLY WS-A BY WS-B GIVING WS-RESULT.
000036     DISPLAY "Multiplication: " WS-RESULT.

000038     DIVIDE WS-A BY WS-B GIVING WS-RESULT ROUNDED
000039     REMAINDER WS-REMAINDER.
000040     DISPLAY "Division: " WS-RESULT.
000041     DISPLAY "Division remainder: " WS-REMAINDER.
000042     DISPLAY " ".
           DISPLAY "------------ Work ended ------------".
           DISPLAY " ".
000045     DISPLAY "Calculate another pair(1) or exit(2)?".

000047     ACCEPT WS-C.

000049     IF WS-C = 1 THEN
             GO TO MAIN-PROCEDURE
           ELSE IF WS-C = 2
             GO TO Exit-Program
           END-IF.

000055 Exit-Program.
000056       STOP RUN.

           END PROGRAM CALCULATOR.
