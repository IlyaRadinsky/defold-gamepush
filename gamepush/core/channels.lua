local M = {}
local core = require("gamepush.core.core")
local helpers = require("gamepush.core.helpers")
local callbacks = require("gamepush.core.callbacks")

---Создание канала
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(channel)
function M.create_channel(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.createChannel", { parameters }, callback)
end

---Обновление канала
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(channel)
function M.update_channel(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.updateChannel", { parameters }, callback)
end

---Удаление канала
---@param parameters table параметры
---@param callback function функция обратного вызова: callback()
function M.delete_channel(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.deleteChannel", { parameters }, callback)
end

---Получить информацию о канале по ID
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(channel)
function M.fetch_channel(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchChannel", { parameters }, callback)
end

---Получить список каналов
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_channels(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchChannels", { parameters }, callback)
end

---Подгрузить список каналов
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_channels(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMoreChannels", { parameters }, callback)
end

---Вызов окна чата
---@param parameters table параметры
function M.open_chat(parameters)
    helpers.check_table(parameters)
    core.call_api("gp.channels.openChat", { parameters })
end

---Проверка возможности показать главный чат
---@return boolean результат
function M.is_main_chat_enabled()
    return core.call_api("gp.channels.isMainChatEnabled") == true
end

---Получить ID главного чата
---@return number результат
function M.main_chat_id()
    return core.call_api("gp.channels.mainChatId")
end

---Запрос на вступление в публичный канал
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.join(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.join", { parameters }, callback)
end

---Отмена запроса на вступление
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.cancel_join(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.cancelJoin", { parameters }, callback)
end

---Выход из канала
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.leave(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.leave", { parameters }, callback)
end

---Исключение участника из канала
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.kick(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.kick", { parameters }, callback)
end

---Получить участников
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_members(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMembers", { parameters }, callback)
end

---Подгрузить участников
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_members(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMoreMembers", { parameters }, callback)
end

---Мьют игрока в канале
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.mute(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.mute", { parameters }, callback)
end

---Отменить мьют игрока
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.unmute(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.unmute", { parameters }, callback)
end

---Отправка приглашения
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.send_invite(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.sendInvite", { parameters }, callback)
end

---Отмена приглашения
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.cancel_invite(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.cancelInvite", { parameters }, callback)
end

---Принять приглашение
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.accept_invite(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.acceptInvite", { parameters }, callback)
end

---Отклонить приглашение
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.reject_invite(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.rejectInvite", { parameters }, callback)
end

---Получить список приглашений игрока в каналы
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_invites(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchInvites", { parameters }, callback)
end

---Подгрузить список приглашений игрока в каналы
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_invites(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMoreInvites", { parameters }, callback)
end

---Получить список отправленных приглашений из канала
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_channel_invites(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchChannelInvites", { parameters }, callback)
end

---Подгрузить список отправленных приглашений из канала
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_channel_invites(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMoreChannelInvites", { parameters }, callback)
end

---Получить список разосланных приглашений игрокам в каналы
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_sent_invites(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchSentInvites", { parameters }, callback)
end

---Подгрузить список разосланных приглашений игрокам в каналы
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_sent_invites(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMoreSentInvites", { parameters }, callback)
end

---Принять запрос на вступление
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.accept_join_request(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.acceptJoinRequest", { parameters }, callback)
end

---Отклонить запрос на вступление
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.reject_join_request(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.rejectJoinRequest", { parameters }, callback)
end

---Получить список входящих запросов на вступление в выбранном канале
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_join_requests(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchJoinRequests", { parameters }, callback)
end

---Подгрузить список входящих запросов на вступление в выбранном канале
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_join_requests(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMoreJoinRequests", { parameters }, callback)
end

---Получить список разосланных запросов игроком на вступление
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_sent_join_requests(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchSentJoinRequests", { parameters }, callback)
end

---Подгрузить список разосланных запросов игроком на вступление
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_sent_join_requests(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMoreSentJoinRequests", { parameters }, callback)
end

---Отправка сообщения
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.send_message(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.sendMessage", { parameters }, callback)
end

---Отправка личного сообщения
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.send_personal_message(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.sendPersonalMessage", { parameters }, callback)
end

---Отправка сообщения в фид
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.send_feed_message(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.sendFeedMessage", { parameters }, callback)
end

---Изменение сообщения
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.edit_message(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.editMessage", { parameters }, callback)
end

---Удаление сообщения
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.delete_message(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.deleteMessage", { parameters }, callback)
end

---Получить список сообщений в выбранном канале
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_messages(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMessages", { parameters }, callback)
end

---Получить список личных сообщений с другим игроком
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_personal_messages(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchPersonalMessages", { parameters }, callback)
end

---Получить список сообщений в фиде игрока
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_feed_messages(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchFeedMessages", { parameters }, callback)
end

---Подгрузить список сообщений в выбранном канале
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_messages(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMoreMessages", { parameters }, callback)
end

---Подгрузить список личных сообщений с другим игроком
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_personal_messages(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMorePersonalMessages", { parameters }, callback)
end

---Подгрузить список сообщений в фиде игрока
---@param parameters table параметры
---@param callback function функция обратного вызова: callback(result)
function M.fetch_more_feed_messages(parameters, callback)
    helpers.check_table_required(parameters)
    helpers.check_callback(callback)
    core.call_api("gp.channels.fetchMoreFeedMessages", { parameters }, callback)
end

M.callbacks = callbacks.channels

return M