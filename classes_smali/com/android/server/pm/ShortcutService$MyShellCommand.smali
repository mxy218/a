.class Lcom/android/server/pm/ShortcutService$MyShellCommand;
.super Landroid/os/ShellCommand;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyShellCommand"
.end annotation


# instance fields
.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 4055
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4057
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V
    .registers 3

    .line 4055
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method private clearLauncher()V
    .registers 4

    .line 4195
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4196
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->forceClearLauncher()V

    .line 4197
    monitor-exit v0

    .line 4198
    return-void

    .line 4197
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private handleClearDefaultLauncher()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4211
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4212
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4214
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V

    .line 4215
    monitor-exit v0

    .line 4216
    return-void

    .line 4215
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private handleClearShortcuts()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4238
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4239
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4240
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 4242
    const-string v3, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd: handleClearShortcuts: user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-static {v3, v2, v4, v1}, Lcom/android/server/pm/ShortcutService;->access$1500(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    .line 4246
    monitor-exit v0

    .line 4247
    return-void

    .line 4246
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private handleGetDefaultLauncher()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4219
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4220
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4222
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V

    .line 4223
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->showLauncher()V

    .line 4224
    monitor-exit v0

    .line 4225
    return-void

    .line 4224
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private handleOverrideConfig()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4175
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 4177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd: handleOverrideConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4180
    :try_start_21
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4183
    monitor-exit v1

    .line 4184
    return-void

    .line 4181
    :cond_2b
    new-instance v0, Lcom/android/server/pm/ShortcutService$CommandException;

    const-string/jumbo v2, "override-config failed.  See logcat for details."

    invoke-direct {v0, v2}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4183
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private handleResetAllThrottling()V
    .registers 3

    .line 4169
    const-string v0, "ShortcutService"

    const-string v1, "cmd: handleResetAllThrottling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->resetAllThrottlingInner()V

    .line 4172
    return-void
.end method

.method private handleResetConfig()V
    .registers 3

    .line 4187
    const-string v0, "ShortcutService"

    const-string v1, "cmd: handleResetConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4190
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$1400(Lcom/android/server/pm/ShortcutService;)V

    .line 4191
    monitor-exit v0

    .line 4192
    return-void

    .line 4191
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method private handleResetThrottling()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4159
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4160
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4162
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd: handleResetThrottling: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 4165
    monitor-exit v0

    .line 4166
    return-void

    .line 4165
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private handleUnloadUser()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4228
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4229
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 4231
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd: handleUnloadUser: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4233
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->handleStopUser(I)V

    .line 4234
    monitor-exit v0

    .line 4235
    return-void

    .line 4234
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private handleVerifyStates()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4251
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$1600(Lcom/android/server/pm/ShortcutService;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 4254
    nop

    .line 4255
    return-void

    .line 4252
    :catchall_7
    move-exception v0

    .line 4253
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseOptionsLocked(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 4062
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 4063
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x4f7b216b

    if-eq v2, v3, :cond_11

    :cond_10
    goto :goto_1a

    :cond_11
    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_51

    .line 4065
    if-eqz p1, :cond_51

    .line 4066
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 4067
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4075
    goto :goto_0

    .line 4068
    :cond_33
    new-instance p1, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not running or locked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4075
    :cond_51
    new-instance p1, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4078
    :cond_68
    return-void
.end method

.method private showLauncher()V
    .registers 6

    .line 4201
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4203
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v2, "-"

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    .line 4205
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 4206
    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4205
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4207
    monitor-exit v0

    .line 4208
    return-void

    .line 4207
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    .line 4082
    if-nez p1, :cond_7

    .line 4083
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4085
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4087
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_c4

    :cond_15
    goto :goto_76

    :sswitch_16
    const-string/jumbo v3, "reset-config"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x3

    goto :goto_76

    :sswitch_21
    const-string/jumbo v3, "unload-user"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x6

    goto :goto_76

    :sswitch_2c
    const-string v3, "get-default-launcher"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x5

    goto :goto_76

    :sswitch_36
    const-string v3, "clear-default-launcher"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x4

    goto :goto_76

    :sswitch_40
    const-string/jumbo v3, "reset-throttling"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v1, v4

    goto :goto_76

    :sswitch_4b
    const-string/jumbo v3, "override-config"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x2

    goto :goto_76

    :sswitch_56
    const-string/jumbo v3, "reset-all-throttling"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v1, v2

    goto :goto_76

    :sswitch_61
    const-string v3, "clear-shortcuts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x7

    goto :goto_76

    :sswitch_6b
    const-string/jumbo v3, "verify-states"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v1, 0x8

    :goto_76
    packed-switch v1, :pswitch_data_ea

    .line 4116
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    goto :goto_a9

    .line 4113
    :pswitch_7e  #0x8
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleVerifyStates()V

    .line 4114
    goto :goto_a2

    .line 4110
    :pswitch_82  #0x7
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearShortcuts()V

    .line 4111
    goto :goto_a2

    .line 4107
    :pswitch_86  #0x6
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleUnloadUser()V

    .line 4108
    goto :goto_a2

    .line 4104
    :pswitch_8a  #0x5
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleGetDefaultLauncher()V

    .line 4105
    goto :goto_a2

    .line 4101
    :pswitch_8e  #0x4
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearDefaultLauncher()V

    .line 4102
    goto :goto_a2

    .line 4098
    :pswitch_92  #0x3
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetConfig()V

    .line 4099
    goto :goto_a2

    .line 4095
    :pswitch_96  #0x2
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleOverrideConfig()V

    .line 4096
    goto :goto_a2

    .line 4092
    :pswitch_9a  #0x1
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetAllThrottling()V

    .line 4093
    goto :goto_a2

    .line 4089
    :pswitch_9e  #0x0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetThrottling()V
    :try_end_a1
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_d .. :try_end_a1} :catch_aa

    .line 4090
    nop

    .line 4121
    :goto_a2
    nop

    .line 4122
    const-string p1, "Success"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4123
    return v4

    .line 4116
    :goto_a9
    return p1

    .line 4118
    :catch_aa
    move-exception p1

    .line 4119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$CommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4120
    return v2

    :sswitch_data_c4
    .sparse-switch
        -0x42951a2a -> :sswitch_6b
        -0x2cad7693 -> :sswitch_61
        -0x853beaf -> :sswitch_56
        -0x493cb9d -> :sswitch_4b
        0xb40bca5 -> :sswitch_40
        0xe23492c -> :sswitch_36
        0x46f58343 -> :sswitch_2c
        0x5427b5d9 -> :sswitch_21
        0x75140980 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_9e  #00000000
        :pswitch_9a  #00000001
        :pswitch_96  #00000002
        :pswitch_92  #00000003
        :pswitch_8e  #00000004
        :pswitch_8a  #00000005
        :pswitch_86  #00000006
        :pswitch_82  #00000007
        :pswitch_7e  #00000008
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 4128
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4129
    const-string v1, "Usage: cmd shortcut COMMAND [options ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4130
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4131
    const-string v1, "cmd shortcut reset-throttling [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4132
    const-string v1, "    Reset throttling for all packages and users"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4133
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4134
    const-string v1, "cmd shortcut reset-all-throttling"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4135
    const-string v1, "    Reset the throttling state for all users"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4137
    const-string v1, "cmd shortcut override-config CONFIG"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    const-string v1, "    Override the configuration for testing (will last until reboot)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4140
    const-string v1, "cmd shortcut reset-config"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    const-string v1, "    Reset the configuration set with \"update-config\""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4142
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4143
    const-string v1, "cmd shortcut clear-default-launcher [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4144
    const-string v1, "    Clear the cached default launcher"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4145
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4146
    const-string v1, "cmd shortcut get-default-launcher [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4147
    const-string v1, "    Show the default launcher"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4149
    const-string v1, "cmd shortcut unload-user [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4150
    const-string v1, "    Unload a user from the memory"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4151
    const-string v1, "    (This should not affect any observable behavior)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4152
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4153
    const-string v1, "cmd shortcut clear-shortcuts [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    const-string v1, "    Remove all shortcuts from a package, including pinned shortcuts"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4155
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4156
    return-void
.end method
