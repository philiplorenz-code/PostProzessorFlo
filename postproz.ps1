$Content = Get-Content PostProz\Vorgaben\01_vorher\vorher.xcs



if ($Filename -like "*MA_1*"){
  $Content = $Content.replace('CreateMacro("PYTHA_INIT_1", "PYTHA_INIT");','CreateMacro("PYTHA_MA_1", "PYTHA_MA");')
  $Content = $Content.replace('CreateRawWorkpiece("SeiteL_19.0",0.0000,0.0000,0.0000,0.0000,0.0000,0.0000);','CreateRawWorkpiece("SeiteL_19.0",10.0000,10.0000,3.0000,3.0000,0.0000,0.0000);')
  $Content = $Content.replace('SetWorkpieceSetupPosition(0, 0.0000, 0.0, 0.0);','SetWorkpieceSetupPosition(10, 3.0000, 0.0, 0.0);')
}
elseif ($Filename -like "*MA_2*"){
}
elseif ($Filename -like "*FUF_1*"){
  $Content = $Content.replace('CreateMacro("PYTHA_INIT_1", "PYTHA_INIT");','CreateMacro("PYTHA_FUF_1", "PYTHA_FUF");')
  $Content = $Content.replace('CreateRawWorkpiece("SeiteL_19.0",0.0000,0.0000,0.0000,0.0000,0.0000,0.0000);','CreateMacro("CreateRawWorkpiece("SeiteL_19.0",3.0000,3.0000,3.0000,3.0000,0.0000,0.0000);')
  $Content = $Content.replace('SetWorkpieceSetupPosition(0, 0.0000, 0.0, 0.0);','SetWorkpieceSetupPosition(3, 3.0000, 0.0, 0.0);')

}
elseif ($Filename -like "*FUF_2*"){
}
elseif ($Filename -like "*FUS_1*"){
  $Content = $Content.replace('CreateMacro("PYTHA_INIT_1", "PYTHA_INIT");','CreateMacro("PYTHA_FUS_1", "PYTHA_FUS");')
  $Content = $Content.replace('CreateRawWorkpiece("SeiteL_19.0",0.0000,0.0000,0.0000,0.0000,0.0000,0.0000);','CreateRawWorkpiece("SeiteL_19.0",1.5000, 1.5000, 1.5000, 1.5000,0.0000,0.0000);')
  $Content = $Content.replace('SetWorkpieceSetupPosition(0, 0.0000, 0.0, 0.0);','SetWorkpieceSetupPosition(1.5, 1.5000, 0.0, 0.0);')
}
elseif ($Filename -like "*FUS_2*"){
}

elseif ($Filename -like "*KUB_1*"){
  $Content = $Content.replace('CreateMacro("PYTHA_INIT_1", "PYTHA_INIT");','CreateMacro("PYTHA_KUB_1", "PYTHA_KUB");')
  $Content = $Content.replace('CreateRawWorkpiece("SeiteL_19.0",0.0000,0.0000,0.0000,0.0000,0.0000,0.0000);','CreateRawWorkpiece("SeiteL_19.0",3.0000,3.0000,3.0000,3.0000,0.0000,0.0000);')
  $Content = $Content.replace('SetWorkpieceSetupPosition(0, 0.0000, 0.0, 0.0);','SetWorkpieceSetupPosition(3, 3.0000, 0.0, 0.0);')
}

elseif ($Filename -like "*KUB_2*"){
  $Content = $Content.replace('CreateMacro("PYTHA_INIT_1", "PYTHA_INIT");','CreateMacro("PYTHA_KUB_1", "PYTHA_KUB");')
  $Content = $Content.replace('CreateRawWorkpiece("SeiteL_19.0",0.0000,0.0000,0.0000,0.0000,0.0000,0.0000);','CreateRawWorkpiece("SeiteL_19.0",3.0000,3.0000,3.0000,3.0000,0.0000,0.0000);')
  $Content = $Content.replace('SetWorkpieceSetupPosition(0, 0.0000, 0.0, 0.0);','SetWorkpieceSetupPosition(3, 3.0000, 0.0, 0.0);')
}

elseif ($Filename -like "*VW_1*"){
  $Content = $Content.replace('CreateMacro("PYTHA_INIT_1", "PYTHA_INIT");','CreateMacro("PYTHA_VW_1", "PYTHA_VW");')
  $Content = $Content.replace('CreateRawWorkpiece("SeiteL_19.0",0.0000,0.0000,0.0000,0.0000,0.0000,0.0000);','CreateRawWorkpiece("SeiteL_19.0",5.0000,5.0000,5.0000,5.0000,0.0000,0.0000);')
  $Content = $Content.replace('SetWorkpieceSetupPosition(0, 0.0000, 0.0, 0.0);','SetWorkpieceSetupPosition(5, 5.0000, 0.0, 0.0);')
}

elseif ($Filename -like "*VW_2*"){
}

else {
  Write-Output "Für diesen Dateinamen ist keine Aktion definiert!"
}


<#
CreateBladeCut("SlantedBladeCut1", "", TypeOfProcess.GeneralRouting, "E041", "-1", 78.1113, 2);
-->
CreateBladeCut("SlantedBladeCut1", "", TypeOfProcess.GeneralRouting, "E041", "-1", 78.1113, 2, -1, -1, -1, 0, true, true, 0, 10);



CreateSlot("", 6.5000, "", TypeOfProcess.GeneralRouting, "E096", "-1", 0);
CreateSlot("", 6.5000, "", TypeOfProcess.GeneralRouting, "E096", "-1", 0);
-->
CreateSlot("", 6.5000, "", TypeOfProcess.GeneralRouting, "E096", "6", 0);
CreateSlot("", 6.5000, "", TypeOfProcess.GeneralRouting, "E096", "6", 0);


CreateContourPocket("", 12.0000, "", TypeOfProcess.ConcentricalPocket, "E010");
->
CreateContourPocket("", 12.0000, "", TypeOfProcess.ConcentricalPocket, "E010");



CreateRoughFinish("",22.0000,"",TypeOfProcess.GeneralRouting, "E010", "-1", 2);
CreateRoughFinish("",1.5000,"",TypeOfProcess.GeneralRouting, "E031", "-1", 0);
->
CreateRoughFinish("",22.0000,"",TypeOfProcess.GeneralRouting, "E010", "-1", 2);
CreateRoughFinish("",1.5000,"",TypeOfProcess.GeneralRouting, "E031", "-1", 0);

#>