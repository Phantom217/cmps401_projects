C Program-ID:   ConvertUnits.f
C Author:       Tyler Oalman
C OS:           Arch Linux
C Compiler:     GNU Fortran

      program ConvertUnits
            ! Unit Converting Program
            implicit none

            integer:: opt, ReadStatus
            real:: input, output
            real:: pounds_kilograms, kilograms_pounds, feet_meters
            real:: meters_feet, fahrenheit_celsius, celsius_fahrenheit
            real:: check_func_input

            menu_loop: do
              write(*,*) '--------------------------------------------'
              write(*,*) 'Enter a conversion option (1-6 or 0 to exit):'
              write(*,*) '(1) Pounds to Kilograms'
              write(*,*) '(2) Kilograms to Pounds'
              write(*,*) '(3) Feet to Meters'
              write(*,*) '(4) Meters to Feet'
              write(*,*) '(5) Fahrenheit to Celsius'
              write(*,*) '(6) Celsius to Fahrenheit'
              write(*,*) '(0) Exit program'
              write(*,*) '--------------------------------------------'

              ! get user input and make sure it's an integer
              ReadInt: do
                  read(*, *, iostat=ReadStatus) opt

                  ! if opt is an integer ReadStatus will be 0
                  if ( ReadStatus == 0 ) then
                     ! reduced indentation since fixed form fortran
                     ! ignores characters after 72 characters per line
                     !
                     ! this loop checks that the user input is within
                     ! the range the programs prompts the user to
                     ! enter. If it fails, ask them to enter again
                     if (( opt .ge. 0 ) .and. ( opt .le. 6 )) then
                        exit ReadInt
                     else
                        write(*, '( / "Error: not an option" )')
                        write(*, '( / "please re-input:" )')
                     end if
                  ! otherwise, get user to enter an option agian
                  else
                     write(*, '( / "READ ERROR: please re-input:" )')
                  end if
              end do ReadInt

              if ( opt == 1 ) then
                  ! TODO: clear screen before the prompt
                  write(*,*) 'Enter value to convert in pounds:'
                  input = check_func_input()
                  output = pounds_kilograms(input)
                  write(*,*) input, 'pounds =', output, 'kilograms'
              end if

              if ( opt == 2 ) then
                    write(*,*) 'Enter value to convert in kilograms:'
                    input = check_func_input()
                    output = kilograms_pounds(input)
                    write(*,*) input, 'kilograms =', output, 'pounds'
              end if

              if ( opt == 3 ) then
                    write(*,*) 'Enter value to convert in feet:'
                    input = check_func_input()
                    output = feet_meters(input)
                    write(*,*) input, 'feet =', output, 'meters'
              end if

              if ( opt == 4 ) then
                    write(*,*) 'Enter value to convert in meters:'
                    input = check_func_input()
                    output = meters_feet(input)
                    write(*,*) input, 'meters =', output, 'feet'
              end if

              if ( opt == 5 ) then
                    write(*,*) 'Enter value to convert in Fahrenheit:'
                    input = check_func_input()
                    output = fahrenheit_celsius(input)
                    write(*,*) input, 'Fahrenheit =', output, 'Celsius'
              end if

              if ( opt == 6 ) then
                    write(*,*) 'Enter value to convert in Celsius:'
                    input = check_func_input()
                    output = celsius_fahrenheit(input)
                    write(*,*) input, 'Celsius =', output, 'Fahrenheit'
              end if

              if ( opt == 0 ) then
                    exit
              end if

            end do menu_loop

      end program ConvertUnits

      function pounds_kilograms(pounds) result (r)
            ! Convert pounds to kilograms

            real:: pounds, r
            real, parameter:: const = 0.45359237

            r = pounds * const
      end function

      function kilograms_pounds(kilograms) result (r)
            ! Convert kilograms to pounds

            real:: kilograms, r
            real, parameter:: const = 0.45359237

            r = kilograms / const
      end function

      function feet_meters(feet) result (r)
            ! Convert feet to meters

            real:: feet, r
            real, parameter:: const = 3.2808

            r = feet / const
      end function

      function meters_feet(meters) result (r)
            ! Convert meters to feet

            real:: meters, r
            real, parameter:: const = 3.2808

            r = meters * const
      end function

      function fahrenheit_celsius(fahrenheit) result (r)
            ! Convert fahrenheit to celsius

            real:: fahrenheit, r
            real, parameter:: const = 5.0 / 9.0

            r = (fahrenheit - 32) * const
      end function

      function celsius_fahrenheit(celsius) result (r)
            ! Convert celsius to fahrenheit

            real:: celsius, r
            real, parameter:: const = 9.0 / 5.0

            r = (celsius * const) + 32
      end function

      function check_func_input() result (input)
            ! checks user input for the conversion functions to make
            ! sure they are real numbers

            integer:: ReadStatus
            real:: input

            ReadReal: do
                read(*, *, iostat=ReadStatus) input

                if ( ReadStatus == 0 ) then
                      exit ReadReal
                else
                      write(*, '( / "READ ERROR: please re-input:" )')
                end if
            end do ReadReal
      end function check_func_input




