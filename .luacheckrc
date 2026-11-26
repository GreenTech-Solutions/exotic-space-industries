-- Runs on top of the base config of factorio-mod-tools (lua/luacheckrc.lua), which sets std, the Factorio globals and
-- allow_defined_top: add to its tables here.
-- Data-stage helpers from Factorio's pipe-cover prototype library.
read_globals[#read_globals + 1] = "pipecoverspictures"

-- Existing ESI 3.2.1 diagnostics retained in the release copy.
for _, code in ipairs({
  "111", -- non-standard global
  "113", -- undefined variable
  "122", -- read-only field assignment
  "211", -- unused variable
  "212", -- unused argument
  "213", -- unused loop variable
  "311", -- assigned value is unused
  "314", -- overwritten field assignment
  "412", -- redefined variable
  "421", -- shadowed variable
  "422", -- shadowed argument
  "431", -- shadowed upvalue
  "542", -- empty branch
  "581", -- simplifiable expression
  "611", -- whitespace-only line
  "612", -- trailing whitespace
  "614", -- trailing whitespace in comment
  "621", -- inconsistent indentation
}) do
  ignore[#ignore + 1] = code
end
