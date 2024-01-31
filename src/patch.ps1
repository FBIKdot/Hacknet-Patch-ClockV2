# 提示用户输入 Hacknet.exe 文件或目录的位置
$hacknetLocation = Read-Host "Please type the location of Hacknet.exe"

# 检查是否存在 Hacknet.exe
if (Test-Path $hacknetLocation) {
    # 如果输入的是文件路径，则提取目录部分
    $hacknetPath = (Get-Item $hacknetLocation).DirectoryName
} else {
    Write-Host "Hacknet.exe does not exist. Please check the input and try again."
    exit
}

Write-Host "find path: $hacknetPath"
Set-Location -Path $hacknetPath

# 文件路径数组
$filePaths = @(
    ".\Content\Locales\de-de\DLC\Missions\Injections\MemoryDumps\GibsonLink.xml",
    ".\Content\Locales\es-ar\DLC\Missions\Injections\MemoryDumps\GibsonLink.xml",
    ".\Content\Locales\fr-be\DLC\Missions\Injections\MemoryDumps\GibsonLink.xml",
    ".\Content\Locales\ja-jp\DLC\Missions\Injections\MemoryDumps\GibsonLink.xml",
    ".\Content\Locales\ko-kr\DLC\Missions\Injections\MemoryDumps\GibsonLink.xml",
    ".\Content\Locales\ru-ru\DLC\Missions\Injections\MemoryDumps\GibsonLink.xml",
    ".\Content\Locales\tr-tr\DLC\Missions\Injections\MemoryDumps\GibsonLink.xml",
    ".\Content\Locales\zh-cn\DLC\Missions\Injections\MemoryDumps\GibsonLink.xml",
    ".\Content\Locales\de-de\DLC\Missions\Injections\TheGibson.xml"
)

# 遍历并操作文件
foreach ($filePath in $filePaths) {
    # 检查文件是否存在
    if (Test-Path $filePath) {
        # 生成备份文件路径
        $backupFilePath = "$filePath.backup"

        # 备份文件
        Copy-Item $filePath $backupFilePath

        # 读取文件内容并替换 IP 地址
        $fileContent = Get-Content $filePath
        $fileContent = $fileContent -replace '54\.235\.88\.143', '#GIBSON_IP#'

        # 写文件
        $fileContent | Set-Content $filePath

        Write-Host "$filePath backuped & patched!"
    } else {
        Write-Host "$filePath does not exist."
    }
}

Write-Host "Done!"
