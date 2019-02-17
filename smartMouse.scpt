use framework "Foundation"
use scripting additions

on idle
    try
        tell application "System Events"

            -- This script only works for my partiuclar setup (the placement of my multiple screens). Haven't been able to find a universal solution.


            -- Get the position of the current window of the current app.
            set cur_app to (first application process whose visible is true and frontmost is true)

            -- If no window for current app, skip
            if (count window of cur_app) < 1 then return 1
            set cur_win to (first window of cur_app)

            -- The coordinate system:
            -- ----> x
            -- |
            -- v
            -- y
            set win_pos to position of cur_win
            set win_y to (second item of win_pos)
            log win_pos

            -- Get the position of mouse cursor.
            set mouse_pos to current application's NSEvent's mouseLocation()
            set mouse_y to (y of mouse_pos) as integer
            log mouse_pos

            -- mouseLocation is in another coordinate
            -- y' = 1440 - y, in my case
            if (win_y > 1440 and mouse_y ≥ 0) or (win_y ≤ 1440 and mouse_y < 0) then
                -- move to the center of current window
                set win_size to size of cur_win
                log win_size
                set xc to ((first item of win_pos) + (first item of win_size) / 2)
                set yc to (win_y + (second item of win_size) / 2)
                log yc

                -- cliclick uses the same coordinates as the windows
                set cmd to "/usr/local/bin/cliclick m:" & (xc as integer) & "," & (yc as integer)
                log cmd
                do shell script cmd
            end if

        end tell
    end try
    return 1
end idle
