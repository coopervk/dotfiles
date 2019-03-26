function fish_prompt

	set -l exit_status $status



	set_color cyan
	printf (prompt_pwd)

	return

	set_color "#44475A"
	printf (prompt_hostname)
	printf " "
	printf (prompt_pwd)
	printf "\n"

	if [ $exit_status -ne 0 ]
		set_color red
		printf "%d " $exit_status
	else
		set_color green
	end


	set_color "#44475A"
	printf " ⌘ "

end

