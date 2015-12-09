function Main(A)
   set S = CreateObject("TreeStorage.TreeStorageData")
   S.LoadFromFile "C:\Users\Novikov\Desktop\FastHDD\Express.csd"
   v = S.GetValue("Data","Values",NULL)
   set L = Screen.NewStringList
   for Index = 0 to UBound(v)
      i = v(Index)
      L.Add CStr(i(0))+";"+CStr(i(1))
   next 
   L.SaveToFile "C:\Users\Novikov\Desktop\FastHDD\Express.csv"
end function