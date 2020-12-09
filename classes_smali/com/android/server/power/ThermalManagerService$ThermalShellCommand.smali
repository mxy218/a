.class Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
.super Landroid/os/ShellCommand;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThermalShellCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method private runOverrideStatus()I
    .registers 8

    .line 551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 553
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6a

    .line 556
    const/4 v3, -0x1

    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_11} :catch_4c
    .catchall {:try_start_9 .. :try_end_11} :catchall_6a

    .line 560
    nop

    .line 561
    :try_start_12
    invoke-static {v4}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_6a

    .line 563
    nop

    .line 571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    return v3

    .line 565
    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_6a

    .line 566
    :try_start_38
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/server/power/ThermalManagerService;->access$902(Lcom/android/server/power/ThermalManagerService;Z)Z

    .line 567
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3, v4}, Lcom/android/server/power/ThermalManagerService;->access$1200(Lcom/android/server/power/ThermalManagerService;I)V

    .line 568
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_49

    .line 569
    const/4 v2, 0x0

    .line 571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    return v2

    .line 568
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v3

    .line 557
    :catch_4c
    move-exception v4

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_6a

    .line 559
    nop

    .line 571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    return v3

    .line 571
    :catchall_6a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private runReset()I
    .registers 6

    .line 538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 540
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1e

    .line 541
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/power/ThermalManagerService;->access$902(Lcom/android/server/power/ThermalManagerService;Z)Z

    .line 542
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$1100(Lcom/android/server/power/ThermalManagerService;)V

    .line 543
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 546
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    return v4

    .line 544
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 546
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    .line 527
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    const-string v0, ""

    :goto_6
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x6761d4f

    const/4 v4, 0x1

    if-eq v2, v3, :cond_22

    const v3, 0x16fa8113

    if-eq v2, v3, :cond_17

    :cond_16
    goto :goto_2c

    :cond_17
    const-string/jumbo v2, "override-status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    goto :goto_2c

    :cond_22
    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v1, v4

    :goto_2c
    if-eqz v1, :cond_3a

    if-eq v1, v4, :cond_35

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 531
    :cond_35
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->runReset()I

    move-result p1

    return p1

    .line 529
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->runOverrideStatus()I

    move-result p1

    return p1
.end method

.method public onHelp()V
    .registers 3

    .line 577
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 578
    const-string v1, "Thermal service (thermalservice) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const-string v1, "  override-status STATUS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string v1, "    sets and locks the thermal status of the device to STATUS."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    const-string v1, "    status code is defined in android.os.Temperature."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    const-string v1, "  reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    const-string v1, "    unlocks the thermal status of the device."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 588
    return-void
.end method
