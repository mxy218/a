.class public Lcom/android/server/statusbar/StatusBarShellCommand;
.super Landroid/os/ShellCommand;
.source "StatusBarShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;
    }
.end annotation


# static fields
.field private static final sToken:Landroid/os/IBinder;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInterface:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;-><init>(Lcom/android/server/statusbar/StatusBarShellCommand$1;)V

    sput-object v0, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V
    .registers 3
    .param p1, "service"  # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "context"  # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 43
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private runAddTile()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->addTile(Landroid/content/ComponentName;)V

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method private runClickTile()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->clickTile(Landroid/content/ComponentName;)V

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method private runCollapse()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->collapsePanels()V

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method private runDisableForSetup()I
    .registers 8

    .line 124
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "arg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 128
    .local v2, "disable":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 129
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/high16 v5, 0x3a50000

    sget-object v6, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/16 v5, 0x10

    sget-object v6, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_32

    .line 132
    :cond_24
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v5, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v5, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 136
    :goto_32
    return v3
.end method

.method private runExpandNotifications()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->expandNotificationsPanel()V

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method private runExpandSettings()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->expandSettingsPanel(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method private runGetStatusIcons()I
    .registers 7

    .line 116
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 117
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->getStatusBarIcons()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_17

    aget-object v5, v1, v4

    .line 118
    .local v5, "icon":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .end local v5  # "icon":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 120
    :cond_17
    return v3
.end method

.method private runRemoveTile()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->remTile(Landroid/content/ComponentName;)V

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method private runSendDisableFlag()I
    .registers 13

    .line 140
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 142
    .local v1, "disable1":I
    const/4 v2, 0x0

    .line 144
    .local v2, "disable2":I
    new-instance v3, Landroid/app/StatusBarManager$DisableInfo;

    invoke-direct {v3}, Landroid/app/StatusBarManager$DisableInfo;-><init>()V

    .line 146
    .local v3, "info":Landroid/app/StatusBarManager$DisableInfo;
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "arg":Ljava/lang/String;
    :goto_11
    const/4 v5, 0x0

    if-eqz v4, :cond_7b

    .line 148
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v7, :sswitch_data_9e

    :cond_20
    goto :goto_56

    :sswitch_21
    const-string/jumbo v5, "recents"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v5, v10

    goto :goto_57

    :sswitch_2c
    const-string/jumbo v5, "statusbar-expansion"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v5, v8

    goto :goto_57

    :sswitch_37
    const-string v5, "home"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v5, v11

    goto :goto_57

    :sswitch_41
    const-string/jumbo v5, "notification-alerts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v5, v9

    goto :goto_57

    :sswitch_4c
    const-string/jumbo v7, "search"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_57

    :goto_56
    move v5, v6

    :goto_57
    if-eqz v5, :cond_72

    if-eq v5, v11, :cond_6e

    if-eq v5, v10, :cond_6a

    if-eq v5, v9, :cond_66

    if-eq v5, v8, :cond_62

    goto :goto_76

    .line 162
    :cond_62
    invoke-virtual {v3, v11}, Landroid/app/StatusBarManager$DisableInfo;->setStatusBarExpansionDisabled(Z)V

    .line 163
    goto :goto_76

    .line 159
    :cond_66
    invoke-virtual {v3, v11}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationPeekingDisabled(Z)V

    .line 160
    goto :goto_76

    .line 156
    :cond_6a
    invoke-virtual {v3, v11}, Landroid/app/StatusBarManager$DisableInfo;->setRecentsDisabled(Z)V

    .line 157
    goto :goto_76

    .line 153
    :cond_6e
    invoke-virtual {v3, v11}, Landroid/app/StatusBarManager$DisableInfo;->setNagivationHomeDisabled(Z)V

    .line 154
    goto :goto_76

    .line 150
    :cond_72
    invoke-virtual {v3, v11}, Landroid/app/StatusBarManager$DisableInfo;->setSearchDisabled(Z)V

    .line 151
    nop

    .line 169
    :goto_76
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 172
    :cond_7b
    invoke-virtual {v3}, Landroid/app/StatusBarManager$DisableInfo;->toFlags()Landroid/util/Pair;

    move-result-object v6

    .line 174
    .local v6, "flagPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 175
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 177
    return v5

    :sswitch_data_9e
    .sparse-switch
        -0x36059a58 -> :sswitch_4c
        -0x2d0f4a47 -> :sswitch_41
        0x30f4df -> :sswitch_37
        0x3c4c98d3 -> :sswitch_2c
        0x40828578 -> :sswitch_21
    .end sparse-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"  # Ljava/lang/String;

    .line 48
    if-nez p1, :cond_7

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 52
    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_dc

    :cond_10
    goto/16 :goto_7a

    :sswitch_12
    const-string v1, "expand-settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_7b

    :sswitch_1c
    const-string v1, "expand-notifications"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_7b

    :sswitch_26
    const-string v1, "check-support"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x6

    goto :goto_7b

    :sswitch_30
    const-string v1, "disable-for-setup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_7b

    :sswitch_3b
    const-string/jumbo v1, "remove-tile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x4

    goto :goto_7b

    :sswitch_46
    const-string v1, "collapse"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    goto :goto_7b

    :sswitch_50
    const-string v1, "click-tile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x5

    goto :goto_7b

    :sswitch_5a
    const-string/jumbo v1, "send-disable-flag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x9

    goto :goto_7b

    :sswitch_66
    const-string v1, "get-status-icons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x7

    goto :goto_7b

    :sswitch_70
    const-string v1, "add-tile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x3

    goto :goto_7b

    :goto_7a
    move v1, v0

    :goto_7b
    packed-switch v1, :pswitch_data_106

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_c0

    .line 74
    :pswitch_83  #0x9
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runSendDisableFlag()I

    move-result v0

    return v0

    .line 72
    :pswitch_88  #0x8
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runDisableForSetup()I

    move-result v0

    return v0

    .line 70
    :pswitch_8d  #0x7
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runGetStatusIcons()I

    move-result v0

    return v0

    .line 66
    :pswitch_92  #0x6
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 67
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Landroid/service/quicksettings/TileService;->isQuickSettingsSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    return v2

    .line 64
    .end local v1  # "pw":Ljava/io/PrintWriter;
    :pswitch_a2  #0x5
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runClickTile()I

    move-result v0

    return v0

    .line 62
    :pswitch_a7  #0x4
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runRemoveTile()I

    move-result v0

    return v0

    .line 60
    :pswitch_ac  #0x3
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runAddTile()I

    move-result v0

    return v0

    .line 58
    :pswitch_b1  #0x2
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runCollapse()I

    move-result v0

    return v0

    .line 56
    :pswitch_b6  #0x1
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandSettings()I

    move-result v0

    return v0

    .line 54
    :pswitch_bb  #0x0
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandNotifications()I

    move-result v0
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_bf} :catch_c1

    return v0

    .line 76
    :goto_c0
    return v0

    .line 78
    :catch_c1
    move-exception v1

    .line 79
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 80
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .end local v1  # "e":Landroid/os/RemoteException;
    .end local v2  # "pw":Ljava/io/PrintWriter;
    return v0

    nop

    :sswitch_data_dc
    .sparse-switch
        -0x4c69c7a6 -> :sswitch_70
        -0x49dc556a -> :sswitch_66
        -0x3ebc9eaa -> :sswitch_5a
        -0x310f1c2d -> :sswitch_50
        -0x25acdc53 -> :sswitch_46
        -0x143fd1a9 -> :sswitch_3b
        0x35c1e3d4 -> :sswitch_30
        0x6019c00a -> :sswitch_26
        0x611d4ef5 -> :sswitch_1c
        0x63a92df6 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_bb  #00000000
        :pswitch_b6  #00000001
        :pswitch_b1  #00000002
        :pswitch_ac  #00000003
        :pswitch_a7  #00000004
        :pswitch_a2  #00000005
        :pswitch_92  #00000006
        :pswitch_8d  #00000007
        :pswitch_88  #00000008
        :pswitch_83  #00000009
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 182
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 183
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Status bar commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string v2, "  expand-notifications"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    const-string v2, "    Open the notifications panel."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string v2, "  expand-settings"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    const-string v2, "    Open the notifications panel and expand quick settings if present."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const-string v2, "  collapse"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const-string v2, "    Collapse the notifications and settings panel."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    const-string v2, "  add-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    const-string v2, "    Add a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    const-string v2, "  remove-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    const-string v2, "    Remove a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    const-string v2, "  click-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    const-string v2, "    Click on a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const-string v2, "  check-support"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    const-string v2, "    Check if this device supports QS + APIs"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    const-string v2, "  get-status-icons"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    const-string v2, "    Print the list of status bar icons and the order they appear in"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const-string v2, "  disable-for-setup DISABLE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    const-string v2, "    If true, disable status bar components unsuitable for device setup"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    const-string v2, "  send-disable-flag FLAG..."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    const-string v2, "    Send zero or more disable flags (parsed individually) to StatusBarManager"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v2, "    Valid options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const-string v2, "        <blank>             - equivalent to \"none\""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    const-string v2, "        none                - re-enables all components"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string v2, "        search              - disable search"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    const-string v2, "        home                - disable naviagation home"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    const-string v2, "        recents             - disable recents/overview"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string v2, "        notification-peek   - disable notification peeking"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    const-string v2, "        statusbar-expansion - disable status bar expansion"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    return-void
.end method
