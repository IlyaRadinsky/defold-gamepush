local M = {}
local core = require("gamepush.core.core")

---Тост с информацией
---@param ... any информация для вывода
function M.info(...)
    core.call_api("gp.logger.info", { ... })
end

---Тост с предупреждением
---@param ... any информация для вывода
function M.warn(...)
    core.call_api("gp.logger.warn", { ... })
end

---Тост с ошибкой
---@param ... any информация для вывода
function M.error(...)
    core.call_api("gp.logger.error", { ... })
end

---Лог в консоль
---@param ... any информация для вывода
function M.log(...)
    core.call_api("gp.logger.log", { ... })
end

return M