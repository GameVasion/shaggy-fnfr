--[[----------------------------------------------------------------------------
This file is part of Friday Night Funkin' Rewritten

Copyright (C) 2021  HTV04

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
------------------------------------------------------------------------------]]
if love.system.getOS() == "NX" then
	return baton.new {
		controls = {
			left = {"axis:leftx-", "button:dpleft", "key:left"},
			down = {"axis:lefty+", "button:dpdown", "key:down"},
			up = {"axis:lefty-", "button:dpup", "key:up"},
			right = {"axis:leftx+", "button:dpright", "key:right"},
			confirm = {"button:b", "key:return"},
			back = {"button:a", "key:escape"},

			-- 4K binds
			gameLeft4k = {"key:" .. customBindLeft, "key:left", "axis:triggerleft+", "axis:leftx-", "axis:rightx-", "button:dpleft", "button:x"},
			gameDown4k = {"key:" .. customBindDown, "key:down", "axis:lefty+", "axis:righty+", "button:leftshoulder", "button:dpdown", "button:a"},
			gameUp4k = {"key:" .. customBindUp, "key:up", "axis:lefty-", "axis:righty-", "button:rightshoulder", "button:dpup", "button:y"},
			gameRight4k = {"key:" .. customBindRight, "key:right", "axis:triggerright+", "axis:leftx+", "axis:rightx+", "button:dpright", "button:b"},

			-- 6K binds
			gameLeft6k = {"key:s", "button:dpleft"},
			gameDown6k = {"key:d", "button:dpdown", "axis:triggerleft+"},
			gameRight6k = {"key:f", "button:dpright", "button:leftshoulder"},
			gameLeft26k = {"key:j", "button:x", "axis:triggerright+"},
			gameUp6k = {"key:k", "button:y", "button:rightshoulder"},
			gameRight26k = {"key:l", "button:b"},

			-- 7K binds
			gameLeft7k = {"key:s", "button:dpleft"},
			gameDown7k = {"key:d", "button:dpdown"},
			gameRight7k = {"key:f", "button:dpright"},
			gameMiddle7k = {"key:space", "button:rightshoulder", "axis:triggerright+", "button:leftshoulder", "axis:triggerleft+"},
			gameLeft27k = {"key:j", "button:x"},
			gameUp7k = {"key:k", "button:y"},
			gameRight27k = {"key:l", "button:b"},

			-- 9K binds
			gameLeft9k = {"key:a", "button:dpleft"},
			gameDown9k = {"key:s", "button:dpdown"},
			gameUp9k = {"key:d", "button:dpup"},
			gameRight9k = {"key:f", "button:dpright"},
			gameMiddle9k = {"key:space", "button:rightshoulder", "axis:triggerright+", "button:leftshoulder", "axis:triggerleft+"},
			gameLeft29k = {"key:j", "button:x"},
			gameDown29k = {"key:k", "button:a"},
			gameUp29k = {"key:l", "button:y"},
			gameRight29k = {"key:;", "button:b"},

			gameBack = {"button:start", "key:escape"},
		},
		joystick = love.joystick.getJoysticks()[1]
	}
else
	return baton.new {
		controls = {
			left = {"key:left", "axis:leftx-", "button:dpleft"},
			down = {"key:down", "axis:lefty+", "button:dpdown"},
			up = {"key:up", "axis:lefty-", "button:dpup"},
			right = {"key:right", "axis:leftx+", "button:dpright"},
			confirm = {"key:return", "button:a"},
			back = {"key:escape", "button:b"},

			-- 4K binds
			gameLeft4k = {"key:" .. customBindLeft, "key:left", "axis:triggerleft+", "axis:leftx-", "axis:rightx-", "button:dpleft", "button:x"},
			gameDown4k = {"key:" .. customBindDown, "key:down", "axis:lefty+", "axis:righty+", "button:leftshoulder", "button:dpdown", "button:a"},
			gameUp4k = {"key:" .. customBindUp, "key:up", "axis:lefty-", "axis:righty-", "button:rightshoulder", "button:dpup", "button:y"},
			gameRight4k = {"key:" .. customBindRight, "key:right", "axis:triggerright+", "axis:leftx+", "axis:rightx+", "button:dpright", "button:b"},

			-- 4K binds
			gameLeft4k = {"key:" .. customBindLeft, "key:left", "axis:triggerleft+", "axis:leftx-", "axis:rightx-", "button:dpleft", "button:x"},
			gameDown4k = {"key:" .. customBindDown, "key:down", "axis:lefty+", "axis:righty+", "button:leftshoulder", "button:dpdown", "button:a"},
			gameUp4k = {"key:" .. customBindUp, "key:up", "axis:lefty-", "axis:righty-", "button:rightshoulder", "button:dpup", "button:y"},
			gameRight4k = {"key:" .. customBindRight, "key:right", "axis:triggerright+", "axis:leftx+", "axis:rightx+", "button:dpright", "button:b"},

			-- 6K binds
			gameLeft6k = {"key:s", "button:dpleft"},
			gameDown6k = {"key:d", "button:dpdown", "axis:triggerleft+"},
			gameRight6k = {"key:f", "button:dpright", "button:leftshoulder"},
			gameLeft26k = {"key:j", "button:x", "axis:triggerright+"},
			gameUp6k = {"key:k", "button:y", "button:rightshoulder"},
			gameRight26k = {"key:l", "button:b"},

			-- 7K binds
			gameLeft7k = {"key:s", "button:dpleft"},
			gameDown7k = {"key:d", "button:dpdown"},
			gameRight7k = {"key:f", "button:dpright"},
			gameMiddle7k = {"key:space", "button:rightshoulder", "axis:triggerright+", "button:leftshoulder", "axis:triggerleft+"},
			gameLeft27k = {"key:j", "button:x"},
			gameUp7k = {"key:k", "button:y"},
			gameRight27k = {"key:l", "button:b"},

			-- 9K binds
			gameLeft9k = {"key:a", "button:dpleft"},
			gameDown9k = {"key:s", "button:dpdown"},
			gameUp9k = {"key:d", "button:dpup"},
			gameRight9k = {"key:f", "button:dpright"},
			gameMiddle9k = {"key:space", "button:rightshoulder", "axis:triggerright+", "button:leftshoulder", "axis:triggerleft+"},
			gameLeft29k = {"key:j", "button:x"},
			gameDown29k = {"key:k", "button:a"},
			gameUp29k = {"key:l", "button:y"},
			gameRight29k = {"key:;", "button:b"},

			gameBack = {"key:escape", "button:start"},
		},
		joystick = love.joystick.getJoysticks()[1]
	}
end
