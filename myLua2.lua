--1.闭合函数:一个函数加上该函数所需访问的所有非局部变量
function count()
	local x = 0
	return function()
		x = x + 1
		return x
	end
end

local func = count()
print(func())
print(func())

--2.非全局函数:存储在局部变量中的函数称为非全局函数
local eat;
local drink;
eat = function ()
	print("eat")
	return drink();
end
drink = function()
	print("drink")
end
print(eat())

