local sourcePath = "TrainData/images"

print("TEMP ERASING STARTED...")

for file in fs.list(sourcePath) do
  if string.sub(file, -5) == ".TEMP" then
    fs.remove(sourcePath .. "/" .. file)
  end
end

local sourcePath = "TrainData/Text"
for file in fs.list(sourcePath) do
  if string.sub(file, -5) == ".TEMP" then
    fs.remove(sourcePath .. "/" .. file)
  end
end

local sourcePath = "UsedTrainData"
for file in fs.list(sourcePath) do
  if string.sub(file, -5) == ".TEMP" then
    fs.remove(sourcePath .. "/" .. file)
  end
end

print("FINISHED ERASING")
os.sleep(5)
