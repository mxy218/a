.class Lcom/android/server/power/PowerManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PowerManagerShellCommand.java"


# static fields
.field private static final LOW_POWER_MODE_ON:I = 0x1


# instance fields
.field final mInterface:Landroid/os/IPowerManager;


# direct methods
.method constructor <init>(Landroid/os/IPowerManager;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    .line 33
    return-void
.end method

.method private runSetAdaptiveEnabled()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setAdaptivePowerSaveEnabled(Z)Z

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method private runSetMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 64
    nop

    .line 66
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_d} :catch_1a

    .line 70
    nop

    .line 71
    iget-object v1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_15

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-interface {v1, v3}, Landroid/os/IPowerManager;->setPowerSaveModeEnabled(Z)Z

    .line 72
    return v2

    .line 67
    :catch_1a
    move-exception v1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    .line 37
    if-nez p1, :cond_7

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 41
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 43
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x1fb0eb0b

    const/4 v4, 0x1

    if-eq v2, v3, :cond_27

    const v3, 0x519c0c2e

    if-eq v2, v3, :cond_1c

    :cond_1b
    goto :goto_32

    :cond_1c
    const-string/jumbo v2, "set-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v4

    goto :goto_33

    :cond_27
    const-string/jumbo v2, "set-adaptive-power-saver-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_33

    :goto_32
    move v2, v1

    :goto_33
    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3c

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 47
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetMode()I

    move-result p1

    return p1

    .line 45
    :cond_41
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetAdaptiveEnabled()I

    move-result p1
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_45} :catch_46

    return p1

    .line 51
    :catch_46
    move-exception p1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    return v1
.end method

.method public onHelp()V
    .registers 4

    .line 77
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 78
    const-string v1, "Power manager (power) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v2, "  set-adaptive-power-saver-enabled [true|false]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v2, "    enables or disables adaptive power saver."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v2, "  set-mode MODE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v2, "    sets the power mode of the device to MODE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v2, "    1 turns low power mode on and 0 turns low power mode off."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 88
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 89
    return-void
.end method
