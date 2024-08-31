local logo = [[

            ▄▄▄▄▄▄▄▄▄▄██▄▄▄▄▄▄▄▄▄   ▄   
▄███████████████████████▀▀▀▀▀▀▀██████▀  
██████▀▀▀ ▄██▀  ▀███                    
▀▀▀▀      ██     ▀██▄                   
                  ▀███▄                 
                    ▀▀                  

]]

logo = string.rep("\n", 8) .. logo .. "\n\n"

require("dashboard").setup({

	config = {
		header = vim.split(logo, "\n"),
	},
})
