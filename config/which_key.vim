lua << EOF

local wk = require("which-key")
wk.register({
	f = {name = "Telescope"},
}, { prefix = "<leader>" })

EOF
