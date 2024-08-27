       IDENTIFICATION DIVISION.
       PROGRAM-ID. 10_COPYBOOK.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
          
           01  struct-headers.
               02  filler          PIC x(2) VALUE "lp".
               02  filler          PIC x VALUE "|".
               02  filler          PIC x(10) VALUE "    number".
               02  filler          PIC x VALUE "|".
               02  filler          PIC x(10) VALUE "   decimal".
               02  filler          PIC x VALUE "|".
               02  filler          PIC x(10) VALUE "  currency".
              
              
           01  var-line                PIC x(80) VALUE ALL "-".
            
           COPY SampleDataRow.
        
       PROCEDURE DIVISION.
           DISPLAY struct-headers.
           DISPLAY var-line.
            
           MOVE 01               TO var-lp.
           MOVE 3721             TO var-number.
            
           DISPLAY struct-row.
       STOP RUN.
            