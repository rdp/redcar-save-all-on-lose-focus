module Redcar
  
  class SaveAllOnLoseFocus
    Thread.new {
      sleep(5)  # boo...
      Redcar.app.add_listener(:lost_focus) do
        tabs = Redcar.app.windows.map{|w| w.notebooks.map{|n| n.tabs}}.flatten
	      modified_edit_tabs = tabs.select {|t| t.edit_view.document.modified? }
        modified_edit_tabs.each do |t|
          t.focus
          Project::FileSaveCommand.new(t).run
        end
      end
    
    }
   end
end
    