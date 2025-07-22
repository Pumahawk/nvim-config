-- Custom command names
commands = {
	config_reload = "LspConfigReload",
	organize_import = "LspOrganizeImports"
}
-- Mason configuration

require("mason").setup()
require("mason-lspconfig").setup{
	automatic_installation = true,
} 

if os.getenv("NVIM_LSP_JAVA") == "true" then
-- START LSP Configuration
--
-- Java setup
require('lspconfig').jdtls.setup({
	on_attach=function ()
		vim.api.nvim_create_user_command(commands.organize_import, function()
		    require'jdtls'.organize_imports()
		end, {})
		vim.api.nvim_create_user_command(commands.config_reload, function()
		    require'jdtls'.update_project_config()
		end, {})
	end,
	settings = {
		java = {
			settings = {
				-- Aggiungi le System Properties
				vmArgs = "-Dspotless.check.skip=true"
			},
			completion = {
				favoriteStaticMembers = {
					"io.restassured.module.mockmvc.RestAssuredMockMvc.*",
					"io.restassured.module.jsv.JsonSchemaValidator.*",
					"io.restassured.RestAssured.*",
					"io.restassured.matcher.RestAssuredMatchers.*",
					"org.hamcrest.Matchers.*",
					"org.mockito.Mockito.*",
					"org.mockito.BDDMockito.*",
					"org.mockito.ArgumentMatchers.*",
					"org.assertj.core.api.Assertions.*",
					"com.aruba.simpl.common.test.TestUtil.*",
					"org.junit.jupiter.api.Assertions.*",
				},
			},
			contentProvider = { preferred = 'fernflower' },
			eclipse = {
				downloadSources = true
			},
		},
	},
})
end

-- require'lspconfig'.java_language_server.setup{}

if os.getenv("NVIM_LSP_WEB") == "true" then
-- Web setup
require'lspconfig'.html.setup{}
require'lspconfig'.ts_ls.setup{
	on_attach=function()
		-- Organize import with Typescript LSP
		vim.api.nvim_create_user_command(commands.organize_import, function()
		    vim.lsp.buf.execute_command({command = "_typescript.organizeImports", arguments = {vim.fn.expand("%:p")}})
		end, {})
	end
}
require'lspconfig'.eslint.setup{}
require'lspconfig'.angularls.setup{}
end

if os.getenv("NVIM_LSP_DOCKER") == "true" then
-- Docker
require'lspconfig'.dockerls.setup{}
require'lspconfig'.docker_compose_language_service.setup{}
end

if os.getenv("NVIM_LSP_GO") == "true" then
-- Go
require'lspconfig'.gopls.setup{}
end

if os.getenv("NVIM_LSP_LUA") == "true" then
-- Lua
require'lspconfig'.lua_ls.setup{}
end

if os.getenv("NVIM_LSP_JSON") == "true" then
-- JSON
require'lspconfig'.jsonls.setup{}
end

if os.getenv("NVIM_LSP_YAML") == "true" then
-- YAML
require'lspconfig'.yamlls.setup{}
end

if os.getenv("NVIM_LSP_HEALM") == "true" then
-- Helm
require'lspconfig'.helm_ls.setup{}
end

if os.getenv("NVIM_LSP_ZIG") == "true" then
	-- Zig
	require'lspconfig'.zls.setup{}
end

if os.getenv("NVIM_LSP_CUCUMBER") == "true" then
	-- Zig
	require'lspconfig'.cucumber_language_server.setup{}
end

if os.getenv("NVIM_LSP_BASH") == "true" then
	-- Zig
	require'lspconfig'.bashls.setup{}
end

