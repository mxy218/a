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
    .registers 6

    .line 124
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 128
    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 129
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/high16 v3, 0x3a50000

    sget-object v4, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/16 v3, 0x10

    sget-object v4, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_32

    .line 132
    :cond_24
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v3, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v3, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 136
    :goto_32
    return v2
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
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
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
    .registers 8

    .line 140
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 141
    nop

    .line 142
    nop

    .line 144
    new-instance v1, Landroid/app/StatusBarManager$DisableInfo;

    invoke-direct {v1}, Landroid/app/StatusBarManager$DisableInfo;-><init>()V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 147
    :goto_11
    const/4 v3, 0x0

    if-eqz v2, :cond_9e

    .line 148
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_c2

    :cond_1d
    goto :goto_73

    :sswitch_1e
    const-string/jumbo v3, "notification-icons"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x7

    goto :goto_74

    :sswitch_29
    const-string/jumbo v3, "recents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x2

    goto :goto_74

    :sswitch_34
    const-string/jumbo v3, "statusbar-expansion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x4

    goto :goto_74

    :sswitch_3f
    const-string v3, "clock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x6

    goto :goto_74

    :sswitch_49
    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v3, v6

    goto :goto_74

    :sswitch_53
    const-string/jumbo v3, "notification-alerts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x3

    goto :goto_74

    :sswitch_5e
    const-string/jumbo v5, "search"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_74

    :sswitch_68
    const-string/jumbo v3, "system-icons"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x5

    goto :goto_74

    :goto_73
    move v3, v4

    :goto_74
    packed-switch v3, :pswitch_data_e4

    goto :goto_98

    .line 171
    :pswitch_78  #0x7
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationIconsDisabled(Z)V

    .line 172
    goto :goto_98

    .line 168
    :pswitch_7c  #0x6
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setClockDisabled(Z)V

    .line 169
    goto :goto_98

    .line 165
    :pswitch_80  #0x5
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setSystemIconsDisabled(Z)V

    .line 166
    goto :goto_98

    .line 162
    :pswitch_84  #0x4
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setStatusBarExpansionDisabled(Z)V

    .line 163
    goto :goto_98

    .line 159
    :pswitch_88  #0x3
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationPeekingDisabled(Z)V

    .line 160
    goto :goto_98

    .line 156
    :pswitch_8c  #0x2
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setRecentsDisabled(Z)V

    .line 157
    goto :goto_98

    .line 153
    :pswitch_90  #0x1
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setNagivationHomeDisabled(Z)V

    .line 154
    goto :goto_98

    .line 150
    :pswitch_94  #0x0
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setSearchDisabled(Z)V

    .line 151
    nop

    .line 177
    :goto_98
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_11

    .line 180
    :cond_9e
    invoke-virtual {v1}, Landroid/app/StatusBarManager$DisableInfo;->toFlags()Landroid/util/Pair;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v2, v1, v4, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 185
    return v3

    nop

    :sswitch_data_c2
    .sparse-switch
        -0x6a7bc604 -> :sswitch_68
        -0x36059a58 -> :sswitch_5e
        -0x2d0f4a47 -> :sswitch_53
        0x30f4df -> :sswitch_49
        0x5a5dc0e -> :sswitch_3f
        0x3c4c98d3 -> :sswitch_34
        0x40828578 -> :sswitch_29
        0x518d53b8 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_94  #00000000
        :pswitch_90  #00000001
        :pswitch_8c  #00000002
        :pswitch_88  #00000003
        :pswitch_84  #00000004
        :pswitch_80  #00000005
        :pswitch_7c  #00000006
        :pswitch_78  #00000007
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    .line 48
    if-nez p1, :cond_7

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

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

    move-result p1

    goto :goto_c0

    .line 74
    :pswitch_83  #0x9
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runSendDisableFlag()I

    move-result p1

    return p1

    .line 72
    :pswitch_88  #0x8
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runDisableForSetup()I

    move-result p1

    return p1

    .line 70
    :pswitch_8d  #0x7
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runGetStatusIcons()I

    move-result p1

    return p1

    .line 66
    :pswitch_92  #0x6
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 67
    invoke-static {}, Landroid/service/quicksettings/TileService;->isQuickSettingsSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    return v2

    .line 64
    :pswitch_a2  #0x5
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runClickTile()I

    move-result p1

    return p1

    .line 62
    :pswitch_a7  #0x4
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runRemoveTile()I

    move-result p1

    return p1

    .line 60
    :pswitch_ac  #0x3
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runAddTile()I

    move-result p1

    return p1

    .line 58
    :pswitch_b1  #0x2
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runCollapse()I

    move-result p1

    return p1

    .line 56
    :pswitch_b6  #0x1
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandSettings()I

    move-result p1

    return p1

    .line 54
    :pswitch_bb  #0x0
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandNotifications()I

    move-result p1
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_bf} :catch_c1

    return p1

    .line 76
    :goto_c0
    return p1

    .line 78
    :catch_c1
    move-exception p1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
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

    .line 190
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 191
    const-string v1, "Status bar commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string v2, "  expand-notifications"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    const-string v2, "    Open the notifications panel."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    const-string v2, "  expand-settings"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    const-string v2, "    Open the notifications panel and expand quick settings if present."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    const-string v2, "  collapse"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    const-string v2, "    Collapse the notifications and settings panel."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    const-string v2, "  add-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const-string v2, "    Add a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    const-string v2, "  remove-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    const-string v2, "    Remove a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    const-string v2, "  click-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const-string v2, "    Click on a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    const-string v2, "  check-support"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    const-string v2, "    Check if this device supports QS + APIs"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v2, "  get-status-icons"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const-string v2, "    Print the list of status bar icons and the order they appear in"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string v2, "  disable-for-setup DISABLE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    const-string v2, "    If true, disable status bar components unsuitable for device setup"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string v2, "  send-disable-flag FLAG..."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    const-string v2, "    Send zero or more disable flags (parsed individually) to StatusBarManager"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    const-string v2, "    Valid options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const-string v2, "        <blank>             - equivalent to \"none\""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    const-string v2, "        none                - re-enables all components"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    const-string v2, "        search              - disable search"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    const-string v2, "        home                - disable naviagation home"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string v2, "        recents             - disable recents/overview"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string v2, "        notification-peek   - disable notification peeking"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string v2, "        statusbar-expansion - disable status bar expansion"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string v2, "        system-icons        - disable system icons appearing in status bar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string v2, "        clock               - disable clock appearing in status bar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const-string v2, "        notification-icons  - disable notification icons from status bar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    return-void
.end method
