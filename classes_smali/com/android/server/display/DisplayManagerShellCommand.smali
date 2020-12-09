.class Lcom/android/server/display/DisplayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DisplayManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/display/DisplayManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$BinderService;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 31
    return-void
.end method

.method private resetBrightnessConfiguration()I
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$BinderService;->resetBrightnessConfiguration()V

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method private setAmbientColorTemperatureOverride()I
    .registers 4

    .line 119
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 120
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 121
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: no cct specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    return v1

    .line 126
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_1d

    .line 130
    nop

    .line 131
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$BinderService;->setAmbientColorTemperatureOverride(F)V

    .line 132
    const/4 v0, 0x0

    return v0

    .line 127
    :catch_1d
    move-exception v0

    .line 128
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: cct should be a number"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    return v1
.end method

.method private setAutoBrightnessLoggingEnabled(Z)I
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->setAutoBrightnessLoggingEnabled(Z)V

    .line 110
    const/4 p1, 0x0

    return p1
.end method

.method private setBrightness()I
    .registers 4

    .line 85
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 87
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: no brightness specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    return v1

    .line 90
    :cond_11
    const/high16 v2, -0x40800000  # -1.0f

    .line 92
    :try_start_13
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_18

    .line 94
    goto :goto_19

    .line 93
    :catch_18
    move-exception v0

    .line 95
    :goto_19
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_30

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_25

    goto :goto_30

    .line 99
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->setBrightness(I)V

    .line 100
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: brightness should be a number between 0 and 1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    return v1
.end method

.method private setDisplayWhiteBalanceLoggingEnabled(Z)I
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 115
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    .line 35
    if-nez p1, :cond_7

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 38
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 39
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_88

    :cond_14
    goto :goto_5c

    :sswitch_15
    const-string v1, "dwb-logging-disable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x5

    goto :goto_5c

    :sswitch_1f
    const-string/jumbo v1, "set-brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v0, v2

    goto :goto_5c

    :sswitch_2a
    const-string v1, "ab-logging-disable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x3

    goto :goto_5c

    :sswitch_34
    const-string v1, "dwb-set-cct"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x6

    goto :goto_5c

    :sswitch_3e
    const-string v1, "ab-logging-enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x2

    goto :goto_5c

    :sswitch_48
    const-string v1, "dwb-logging-enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x4

    goto :goto_5c

    :sswitch_52
    const-string/jumbo v1, "reset-brightness-configuration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v0, v3

    :goto_5c
    packed-switch v0, :pswitch_data_a6

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 53
    :pswitch_64  #0x6
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setAmbientColorTemperatureOverride()I

    move-result p1

    return p1

    .line 51
    :pswitch_69  #0x5
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result p1

    return p1

    .line 49
    :pswitch_6e  #0x4
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result p1

    return p1

    .line 47
    :pswitch_73  #0x3
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result p1

    return p1

    .line 45
    :pswitch_78  #0x2
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result p1

    return p1

    .line 43
    :pswitch_7d  #0x1
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->resetBrightnessConfiguration()I

    move-result p1

    return p1

    .line 41
    :pswitch_82  #0x0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setBrightness()I

    move-result p1

    return p1

    nop

    :sswitch_data_88
    .sparse-switch
        -0x59bb9cc8 -> :sswitch_52
        -0x2b98d0f1 -> :sswitch_48
        0x1cd1c6dd -> :sswitch_3e
        0x327f7a8b -> :sswitch_34
        0x40f5acce -> :sswitch_2a
        0x5fa7aa9c -> :sswitch_1f
        0x7c0d4adc -> :sswitch_15
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_82  #00000000
        :pswitch_7d  #00000001
        :pswitch_78  #00000002
        :pswitch_73  #00000003
        :pswitch_6e  #00000004
        :pswitch_69  #00000005
        :pswitch_64  #00000006
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 62
    const-string v1, "Display manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 66
    const-string v1, "  set-brightness BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v1, "    Sets the current brightness to BRIGHTNESS (a number between 0 and 1)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v1, "  reset-brightness-configuration"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string v1, "    Reset the brightness to its default configuration."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v1, "  ab-logging-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v1, "    Enable auto-brightness logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v1, "  ab-logging-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v1, "    Disable auto-brightness logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v1, "  dwb-logging-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v1, "    Enable display white-balance logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v1, "  dwb-logging-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v1, "    Disable display white-balance logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "  dwb-set-cct CCT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "    Sets the ambient color temperature override to CCT (use -1 to disable)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 81
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 82
    return-void
.end method
