Plugin.define do
  name "save-all-on-lose-focus"
  version "0.0"
  file "lib", "save_all_on_lose_focus"
  object "Redcar::SaveAllOnLoseFocus"
	dependencies "project", ">0"

end