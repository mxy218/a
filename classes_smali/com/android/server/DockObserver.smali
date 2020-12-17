.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 65
    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 66
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 225
    new-instance v0, Lcom/android/server/DockObserver$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    .line 75
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "DockObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 80
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 82
    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/DockObserver;

    .line 48
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DockObserver;

    .line 48
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DockObserver;

    .line 48
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DockObserver;
    .param p1, "x1"  # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DockObserver;

    .line 48
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/DockObserver;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DockObserver;
    .param p1, "x1"  # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DockObserver;

    .line 48
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DockObserver;

    .line 48
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DockObserver;

    .line 48
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DockObserver;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DockObserver;
    .param p1, "x1"  # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method private handleDockStateChange()V
    .registers 14

    .line 153
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    const-string v1, "DockObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 157
    .local v1, "previousDockState":I
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 160
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 161
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_45

    .line 163
    const-string v3, "DockObserver"

    const-string v4, "Device not provisioned, skipping dock broadcast"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v0

    return-void

    .line 168
    :cond_45
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    const-string v5, "android.intent.extra.DOCK_STATE"

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v5, "dock_sounds_enabled"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_63

    move v5, v6

    goto :goto_64

    :cond_63
    move v5, v4

    .line 174
    .local v5, "dockSoundsEnabled":Z
    :goto_64
    const-string v7, "dock_sounds_enabled_when_accessbility"

    invoke-static {v2, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_6e

    move v7, v6

    goto :goto_6f

    :cond_6e
    move v7, v4

    .line 176
    .local v7, "dockSoundsEnabledWhenAccessibility":Z
    :goto_6f
    const-string v8, "accessibility_enabled"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_78

    move v4, v6

    .line 181
    .local v4, "accessibilityEnabled":Z
    :cond_78
    if-nez v5, :cond_7e

    if-eqz v4, :cond_df

    if-eqz v7, :cond_df

    .line 183
    :cond_7e
    const/4 v8, 0x0

    .line 184
    .local v8, "whichSound":Ljava/lang/String;
    iget v9, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-nez v9, :cond_97

    .line 185
    if-eq v1, v6, :cond_93

    if-eq v1, v12, :cond_93

    if-ne v1, v11, :cond_8d

    goto :goto_93

    .line 189
    :cond_8d
    if-ne v1, v10, :cond_af

    .line 190
    const-string v9, "car_undock_sound"

    move-object v8, v9

    goto :goto_af

    .line 188
    :cond_93
    :goto_93
    const-string v9, "desk_undock_sound"

    move-object v8, v9

    goto :goto_af

    .line 193
    :cond_97
    iget v9, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v9, v6, :cond_ac

    iget v9, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v9, v12, :cond_ac

    iget v9, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v9, v11, :cond_a4

    goto :goto_ac

    .line 197
    :cond_a4
    iget v9, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v9, v10, :cond_af

    .line 198
    const-string v9, "car_dock_sound"

    move-object v8, v9

    goto :goto_af

    .line 196
    :cond_ac
    :goto_ac
    const-string v9, "desk_dock_sound"

    move-object v8, v9

    .line 202
    :cond_af
    :goto_af
    if-eqz v8, :cond_df

    .line 203
    invoke-static {v2, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "soundPath":Ljava/lang/String;
    if-eqz v9, :cond_df

    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 206
    .local v10, "soundUri":Landroid/net/Uri;
    if-eqz v10, :cond_df

    .line 207
    nop

    .line 208
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 207
    invoke-static {v11, v10}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v11

    .line 209
    .local v11, "sfx":Landroid/media/Ringtone;
    if-eqz v11, :cond_df

    .line 210
    invoke-virtual {v11, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 211
    invoke-virtual {v11}, Landroid/media/Ringtone;->play()V

    .line 221
    .end local v8  # "whichSound":Ljava/lang/String;
    .end local v9  # "soundPath":Ljava/lang/String;
    .end local v10  # "soundUri":Landroid/net/Uri;
    .end local v11  # "sfx":Landroid/media/Ringtone;
    :cond_df
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 222
    .end local v1  # "previousDockState":I
    .end local v2  # "cr":Landroid/content/ContentResolver;
    .end local v3  # "intent":Landroid/content/Intent;
    .end local v4  # "accessibilityEnabled":Z
    .end local v5  # "dockSoundsEnabled":Z
    .end local v7  # "dockSoundsEnabledWhenAccessibility":Z
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_ea
    move-exception v1

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_3 .. :try_end_ec} :catchall_ea

    throw v1
.end method

.method private init()V
    .registers 7

    .line 105
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    const/16 v1, 0x400

    :try_start_5
    new-array v2, v1, [C

    .line 108
    .local v2, "buffer":[C
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_33
    .catchall {:try_start_5 .. :try_end_e} :catchall_31

    .line 110
    .local v3, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    .line 111
    .local v1, "len":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 112
    iget v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2c

    .line 114
    .end local v1  # "len":I
    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 115
    nop

    .line 120
    .end local v2  # "buffer":[C
    .end local v3  # "file":Ljava/io/FileReader;
    goto :goto_45

    .line 114
    .restart local v2  # "buffer":[C
    .restart local v3  # "file":Ljava/io/FileReader;
    :catchall_2c
    move-exception v1

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .end local p0  # "this":Lcom/android/server/DockObserver;
    throw v1
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_31} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_33
    .catchall {:try_start_27 .. :try_end_31} :catchall_31

    .line 121
    .end local v2  # "buffer":[C
    .end local v3  # "file":Ljava/io/FileReader;
    .restart local p0  # "this":Lcom/android/server/DockObserver;
    :catchall_31
    move-exception v1

    goto :goto_47

    .line 118
    :catch_33
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v2, "DockObserver"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 116
    .end local v1  # "e":Ljava/lang/Exception;
    :catch_3c
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "DockObserver"

    const-string v3, "This kernel does not have dock station support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    nop

    .line 121
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    :goto_45
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_31

    throw v1
.end method

.method private setActualDockStateLocked(I)V
    .registers 3
    .param p1, "newState"  # I

    .line 125
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 126
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_9

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 129
    :cond_9
    return-void
.end method

.method private setDockStateLocked(I)V
    .registers 6
    .param p1, "newState"  # I

    .line 132
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2e

    .line 133
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 134
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_2e

    .line 136
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_20

    .line 137
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2b

    .line 139
    :cond_20
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "android.server:DOCK"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 142
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 145
    :cond_2e
    return-void
.end method

.method private updateLocked()V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 149
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"  # I

    .line 92
    const/16 v0, 0x226

    if-ne p1, v0, :cond_16

    .line 93
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 97
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v1, :cond_11

    .line 98
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 100
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1

    .line 102
    :cond_16
    :goto_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 87
    new-instance v0, Lcom/android/server/DockObserver$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    const-string v1, "DockObserver"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 88
    return-void
.end method
