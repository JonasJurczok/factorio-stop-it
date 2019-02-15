data:extend({
	{
		name = "stopit-show-log",
		setting_type = "runtime-per-user",
		type = "bool-setting",
		default_value = false,
		per_user = true,
	},
	{
		name = "stopit-translation-mode",
		setting_type = "runtime-per-user",
		type = "string-setting",
		allowed_values = {"default", "quest"},
		default_value = "default",
		per_user = true,
	}
})
