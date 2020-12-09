.class final Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttentionManagerServiceShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;
    }
.end annotation


# instance fields
.field final mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 701
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V
    .registers 3

    .line 678
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method

.method private cmdCallCancelAttention()I
    .registers 4

    .line 765
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 767
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    const/4 v0, 0x0

    return v0
.end method

.method private cmdCallCheckAttention()I
    .registers 6

    .line 758
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/attention/AttentionManagerService;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result v1

    .line 760
    if-eqz v1, :cond_14

    const-string/jumbo v1, "true"

    goto :goto_16

    :cond_14
    const-string v1, "false"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method private cmdClearTestableAttentionService()I
    .registers 2

    .line 751
    const-string v0, ""

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->reset()V

    .line 753
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method private cmdGetLastTestCallbackCode()I
    .registers 3

    .line 779
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 780
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->getLastCallbackCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method private cmdResolveAttentionServiceComponent()I
    .registers 3

    .line 772
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->access$2300(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->access$2400(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 774
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_15
    const-string v1, ""

    :goto_17
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method private cmdSetTestableAttentionService(Ljava/lang/String;)I
    .registers 5

    .line 739
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "false"

    if-eqz v1, :cond_10

    .line 741
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 743
    :cond_10
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    .line 744
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 745
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p1, p1, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_1f

    const-string/jumbo v2, "true"

    :cond_1f
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    :goto_22
    const/4 p1, 0x0

    return p1
.end method

.method private resetStates()V
    .registers 3

    .line 785
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$2300(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->access$2400(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 786
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$1800(Lcom/android/server/attention/AttentionManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 787
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 10

    .line 706
    if-nez p1, :cond_7

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 709
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 711
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_cc

    :cond_18
    goto :goto_4c

    :sswitch_19
    const-string v2, "clearTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v5

    goto :goto_4d

    :sswitch_23
    const-string v2, "call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v7

    goto :goto_4d

    :sswitch_2d
    const-string/jumbo v2, "setTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v6

    goto :goto_4d

    :sswitch_38
    const-string v2, "getAttentionServiceComponent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v3

    goto :goto_4d

    :sswitch_42
    const-string v2, "getLastTestCallbackCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v4

    goto :goto_4d

    :goto_4c
    move v2, v1

    :goto_4d
    if-eqz v2, :cond_ac

    if-eq v2, v7, :cond_6f

    if-eq v2, v6, :cond_66

    if-eq v2, v5, :cond_61

    if-eq v2, v4, :cond_5c

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 728
    :cond_5c
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdGetLastTestCallbackCode()I

    move-result p1

    return p1

    .line 726
    :cond_61
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdClearTestableAttentionService()I

    move-result p1

    return p1

    .line 724
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdSetTestableAttentionService(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 715
    :cond_6f
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x2d7ba210

    if-eq v2, v4, :cond_8b

    const v4, 0x589284f6

    if-eq v2, v4, :cond_82

    :cond_81
    goto :goto_95

    :cond_82
    const-string v2, "checkAttention"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_96

    :cond_8b
    const-string v2, "cancelCheckAttention"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    move v3, v7

    goto :goto_96

    :goto_95
    move v3, v1

    :goto_96
    if-eqz v3, :cond_a7

    if-ne v3, v7, :cond_9f

    .line 719
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCancelAttention()I

    move-result p1

    return p1

    .line 721
    :cond_9f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid argument"

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 717
    :cond_a7
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCheckAttention()I

    move-result p1

    return p1

    .line 713
    :cond_ac
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdResolveAttentionServiceComponent()I

    move-result p1
    :try_end_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_b0} :catch_b1

    return p1

    .line 732
    :catch_b1
    move-exception p1

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    return v1

    nop

    :sswitch_data_cc
    .sparse-switch
        -0x480b7350 -> :sswitch_42
        -0x3bbfc7b0 -> :sswitch_38
        -0x18bd18bb -> :sswitch_2d
        0x2e7a5e -> :sswitch_23
        0x47229030 -> :sswitch_19
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 4

    .line 791
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 792
    const-string v1, "Attention commands: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    const-string v1, "  setTestableAttentionService <service_package>: Bind to a custom implementation of attention service"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    const-string v1, "  ---<service_package>:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    const-string v1, "       := Package containing the Attention Service implementation to bind to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    const-string v1, "  ---returns:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    const-string v2, "       := true, if was bound successfully"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    const-string v2, "       := false, if was not bound successfully"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    const-string v2, "  clearTestableAttentionService: Undo custom bindings. Revert to previous behavior"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    const-string v2, "  getAttentionServiceComponent: Get the current service component string"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    const-string v2, "       := If valid, the component string (in shorten form) for the currently bound service."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    const-string v2, "       := else, empty string"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    const-string v2, "  call checkAttention: Calls check attention"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const-string v2, "       := true, if the call was successfully dispatched to the service implementation. (to see the result, call getLastTestCallbackCode)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const-string v2, "       := false, otherwise"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    const-string v2, "  call cancelCheckAttention: Cancels check attention"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const-string v2, "  getLastTestCallbackCode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const-string v1, "       := An integer, representing the last callback code received from the bounded implementation. If none, it will return -1"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    return-void
.end method
