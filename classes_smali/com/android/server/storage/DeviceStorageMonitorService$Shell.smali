.class Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
.super Landroid/os/ShellCommand;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onHelp()V
    .registers 2

    .line 344
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 345
    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 346
    return-void
.end method