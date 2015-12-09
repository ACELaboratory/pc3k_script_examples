sub DoFolder(AFolderId,AUtlName)
   set Folder = Kernel.Database.FolderByFolderId(AFolderId)
   
   if Folder is Nothing then
      Screen.ShowMessage AUtlName+" utility folder not found"
   else 
      set Root   = Kernel.Database.RootFolder
      if Folder.Parent.Id <> Root.Id then
         Folder.Parent = Root
         Folder.Save
         Screen.ShowMessage AUtlName+" folder parent has fixed"
      end if
   end if
end sub

function main(a)
   DoFolder "{AC6062C3-87C3-11D8-A2F2-008048196724}","Seagate U5, Baracuda XX"
   DoFolder "{7A507288-16D4-11D8-A2F0-008048196724}","Fujitsu 2.5 / 3.5 HDD Utility"
   DoFolder "{CBC07585-411D-4F21-894B-043027FFF568}","Hitachi (IBM) Utility"
   DoFolder "{F9D67683-791B-11D9-8D83-000461511E18}","Samsung Utility"
   DoFolder "{46A9B8EA-5D5A-4702-8750-82F4930F1311}","WDC Marvell family utility"
   DoFolder "{AB026A83-FF39-11D7-A2F0-008048196724}","Western Digital Caviar Utility"
   DoFolder "{6919819A-D756-4DF6-8AEF-F4CA230C13DA}","Hitachi - native 2.5 inch Utility"
   DoFolder "{39C76999-8F05-481B-B856-20E7CCE8FA48}","Hitachi-IBM-ARM Utility"
   DoFolder "{AD44179C-BA8E-4F29-9A5B-8CA13CE9FBA2}","Maxtor - DSP / Poker / Ardent / Beagle"
   DoFolder "{DCFCCEE7-D29A-43F7-B773-4BD9C6C84C18}","Toshiba - 2.5 inch Utility"
   DoFolder "{5907CD8D-2367-493D-B814-42D8300CDD13}","WD Caviar Old Models Utility"
   DoFolder "{04BAFE6A-2462-4265-BDF5-431AE462D456}","Quantum (Quantum-Maxtor) Utility"
   DoFolder "{29B533B0-1A25-459E-A970-8E489433317A}","Western Digital Caviar Utility (SATA)"
   DoFolder "{C983C32B-DCBE-429F-819D-AE6EFE001C0C}","Samsung SSD Utility"
   DoFolder "{ED069821-79AB-4EA9-ABA2-778135A8349A}","Seagate F3 Architecture"
end function