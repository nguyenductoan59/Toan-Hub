spawn(
    function()
        while wait() do
            pcall(
                function()
                    setfpscap(100)
                    setfpscap(150)
                    setfpscap(200)
                    setfpscap(250)
                    setfpscap(300)
                end
            )
        end
    end)
-- Tạo một đối tượng ScreenGui để chứa nút và hiển thị trên màn hình của người chơi
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui

-- Tạo một đối tượng TextButton (nút văn bản) để đại diện cho nút
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 80, 0, 30) -- Kích thước của nút (80x30 pixels)
button.Position = UDim2.new(0, 10, 0, 10) -- Vị trí của nút (10 pixels từ góc trái và trên)
button.BackgroundColor3 = Color3.fromRGB(168, 19, 19) -- Màu xanh nước biển

-- Văn bản trên nút
button.Text = "Stop Tween"
button.Parent = screenGui -- Đặt nút là con của ScreenGui

-- Gán sự kiện khi nút được nhấn
button.MouseButton1Click:Connect(function()
    -- Điều khiển hành động khi nút được nhấn ở đây
    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end)