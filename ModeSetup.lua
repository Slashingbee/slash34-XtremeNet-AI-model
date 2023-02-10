local mode = nil

print("Enter mode (Text or Image *if running original version of AI*):")
mode = io.read()

if mode == "Image" then
  -- get the model in correct mode *copy files*
  local sourcePath = "TrainData/images"
  local destPath = "UsedTrainData"
  for file in fs.list(sourcePath) do
    fs.move(sourcePath .. "/" .. file, destPath .. "/" .. file)
  end
elseif mode == "Text" then
  local sourcePath = "TrainData/Text"
  local destPath = "UsedTrainData"
  for file in fs.list(sourcePath) do
    fs.move(sourcePath .. "/" .. file, destPath .. "/" .. file)
  end
else
  print("Invalid mode entered. Only 'Text' or 'Image' are allowed by standard.")
end
