-- Project 2
-- Chloe Chun

-- parameters
-- width/height
rectW = 80
rectH = 30
-- base amount of blocks for each column
colH1 = 6
colH2 = 4
colH3 = 5
colH4 = 3
colH5 = 1
colH6 = 4
colH7 = 5
colH8 = 4
colH9 = 6
-- colors
col1AP = 200
col1AB = 100
upDown = {-1,1}

require("L5")

function setup()
size(820, 400)
windowTitle("Project 2 Chloe Chun")
describe('Audio Visualizer')
background(0)
end

-- what controls the random amount of blocks & colors
-- copy/paste drawBar
function draw()
background(0)
-- bubble background
for i = 1, 2 do
    x = random(width)
    y = random(height)
    size = random(100, 250)
    fill(random(col1AP), random(col1AB), random(col1AP), 50)
    circle(x, y, size)
  end

-- main bars
drawBar(10,400, colH1, col1AP, col1AB) -- 1
drawBar(100, 400, colH2, col2AP, col2AB) -- 2
drawBar(190, 400, colH3, col1AP, col1AB) -- 3
drawBar(280, 400, colH4, col2AP, col2AB) -- 4
drawBar(370, 400, colH5, col1AP, col1AB) -- 5
drawBar(460, 400, colH6, col2AP, col2AB) -- 6
drawBar(550, 400, colH7, col1AP, col1AB) -- 7
drawBar(640, 400, colH8, col2AP, col2AB) -- 8
drawBar(730, 400, colH9, col1AP, col1AB) -- 9

-- column 1
if frameCount%10 == 0 then
if colH1 > 6 then
colH1 = colH1 - 1
elseif colH1 == 1 then
colH1 = colH1 + 1
else
colH1 = colH1 + random(upDown)
end

-- column 2
if colH2 > 6 then
colH2 = colH2 - 1
elseif colH2 == 1 then
colH2 = colH2 + 1
else
colH2 = colH2 + random(upDown)
end

-- column 3
if colH3 > 6 then
colH3 = colH3 - 1
elseif colH3 == 1 then
colH3 = colH3 + 1
else
colH3 = colH3 + random(upDown)
end

-- column 4
if colH4 > 4 then
colH4 = colH4 - 1
elseif colH4 == 1 then
colH4 = colH4 + 1
else
colH4 = colH4 + random(upDown)
end

-- column 5
if colH5 > 6 then
colH5 = colH5 - 1
elseif colH5 == 1 then
colH5 = colH5 + 1
else
colH5 = colH5 + random(upDown)
end

-- column 6
if colH6 > 4 then
colH6 = colH6 - 1
elseif colH6 == 1 then
colH6 = colH6 + 1
else
colH6 = colH6 + random(upDown)
end

-- column 7
if colH7 > 6 then
colH7 = colH7 - 1
elseif colH7 == 1 then
colH7 = colH7 + 1
else
colH7 = colH7 + random(upDown)
end

-- column 8
if colH8 > 6 then
colH8 = colH8 - 1
elseif colH8 == 1 then
colH8 = colH8 + 1
else
colH8 = colH8 + random(upDown)
end

-- column 9
if colH9 > 6 then
colH9 = colH9 - 1
elseif colH9 == 1 then
colH9 = colH9 + 1
else
colH9 = colH9 + random(upDown)
end

-- color controls v.1
col1AP = random(200)
col1AB = random(100)

-- color controls v.2
col2AP = random(100)
col2AB = random(200)
end
end

-- initial function/block builder
function drawBar(x,y,h,a1,a2)
for i = 1, h, 1 do
fill(255)
rect(x,y-i*40, rectW, rectH)
fill(255,72, 176, a1)
rect(x,y-i*40, rectW, rectH)
fill(0,120, 191, a2)
rect(x,y-i*40, rectW, rectH)
end

save('Project2_ChloeChun_Screenshot1.png')
end