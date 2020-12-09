.class public Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.super Ljava/lang/Object;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_TETHER_OFFLOAD_DISABLED:I = 0x0

.field private static final NO_INTERFACE_NAME:Ljava/lang/String; = ""

.field private static final NO_IPV4_ADDRESS:Ljava/lang/String; = ""

.field private static final NO_IPV4_GATEWAY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;

.field private static final YIELDS:Ljava/lang/String; = " -> "


# instance fields
.field private mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

.field private mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/util/SharedLog;)V
    .registers 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    .line 91
    sget-object p1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    .line 92
    return-void
.end method

.method static synthetic access$100(I)I
    .registers 1

    .line 39
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->networkProtocolToOsConstant(I)I

    move-result p0

    return p0
.end method

.method private static native configOffload()Z
.end method

.method static synthetic lambda$addDownstreamPrefix$6(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    .line 252
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 253
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 254
    return-void
.end method

.method static synthetic lambda$getForwardedStats$2(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;JJ)V
    .registers 8

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_7

    goto :goto_8

    :cond_7
    move-wide p1, v0

    :goto_8
    iput-wide p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    .line 166
    cmp-long p1, p3, v0

    if-lez p1, :cond_f

    goto :goto_10

    :cond_f
    move-wide p3, v0

    :goto_10
    iput-wide p3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    .line 167
    return-void
.end method

.method static synthetic lambda$initOffloadControl$0(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    .line 128
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 129
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 130
    return-void
.end method

.method static synthetic lambda$removeDownstreamPrefix$7(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    .line 271
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 272
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 273
    return-void
.end method

.method static synthetic lambda$setDataLimit$4(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    .line 206
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 207
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 208
    return-void
.end method

.method static synthetic lambda$setLocalPrefixes$3(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    .line 185
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 186
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 187
    return-void
.end method

.method static synthetic lambda$setUpstreamParameters$5(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    .line 233
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 234
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 235
    return-void
.end method

.method private static networkProtocolToOsConstant(I)I
    .registers 2

    .line 344
    const/4 v0, 0x6

    if-eq p0, v0, :cond_10

    const/16 v0, 0x11

    if-eq p0, v0, :cond_d

    .line 350
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    neg-int p0, p0

    return p0

    .line 346
    :cond_d
    sget p0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    return p0

    .line 345
    :cond_10
    sget p0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    return p0
.end method

.method private record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V
    .registers 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    iget-boolean p2, p2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    if-nez p2, :cond_1e

    .line 290
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_23

    .line 292
    :cond_1e
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 294
    :goto_23
    return-void
.end method

.method private record(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "exception: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 285
    return-void
.end method


# virtual methods
.method public addDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 246
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v2, "addDownstreamPrefix(%s, %s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 250
    :try_start_15
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$GhKYJ09_bq-n9xoRpQeCc3ZpQPU;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$GhKYJ09_bq-n9xoRpQeCc3ZpQPU;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1f} :catch_26

    .line 258
    nop

    .line 260
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 261
    iget-boolean p1, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return p1

    .line 255
    :catch_26
    move-exception p1

    .line 256
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    return v1
.end method

.method public getDefaultTetherOffloadDisabled()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getForwardedStats(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    .registers 6

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "getForwardedStats(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-direct {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;-><init>()V

    .line 162
    :try_start_11
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v3, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$nu77bP4WbZU9UPvjulauQE3Dm30;

    invoke-direct {v3, v1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$nu77bP4WbZU9UPvjulauQE3Dm30;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;)V

    invoke-interface {v2, p1, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_36

    .line 171
    nop

    .line 173
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 174
    return-object v1

    .line 168
    :catch_36
    move-exception p1

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return-object v1
.end method

.method public initOffloadConfig()Z
    .registers 2

    .line 99
    invoke-static {}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->configOffload()Z

    move-result v0

    return v0
.end method

.method public initOffloadControl(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;)Z
    .registers 7

    .line 103
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 105
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    const/4 v1, 0x0

    if-nez v0, :cond_34

    .line 107
    :try_start_7
    invoke-static {}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getService()Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_1b

    .line 111
    nop

    .line 112
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-nez v0, :cond_34

    .line 113
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v0, "tethering IOffloadControl.getService() returned null"

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 114
    return v1

    .line 108
    :catch_1b
    move-exception p1

    .line 109
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tethering offload control not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 110
    return v1

    .line 118
    :cond_34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    if-nez p1, :cond_3d

    const-string/jumbo p1, "null"

    goto :goto_56

    .line 120
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_56
    aput-object p1, v0, v1

    .line 118
    const-string p1, "initOffloadControl(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;Landroid/net/util/SharedLog;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    .line 123
    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 125
    :try_start_71
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$324leYOM3BvGJiK4Wade-B0d5jE;

    invoke-direct {v4, v0}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$324leYOM3BvGJiK4Wade-B0d5jE;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v2, v3, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_7d} :catch_84

    .line 134
    nop

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 137
    iget-boolean p1, v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return p1

    .line 131
    :catch_84
    move-exception v0

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    return v1
.end method

.method public synthetic lambda$stopOffloadControl$1$OffloadHardwareInterface(ZLjava/lang/String;)V
    .registers 5

    .line 145
    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopOffload failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 146
    :cond_19
    return-void
.end method

.method public removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 265
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string/jumbo v2, "removeDownstreamPrefix(%s, %s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 269
    :try_start_16
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$w6w__dI5-bH4oSI_P9WIdOzlG28;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$w6w__dI5-bH4oSI_P9WIdOzlG28;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_27

    .line 277
    nop

    .line 279
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 280
    iget-boolean p1, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return p1

    .line 274
    :catch_27
    move-exception p1

    .line 275
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    return v1
.end method

.method public setDataLimit(Ljava/lang/String;J)Z
    .registers 9

    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string/jumbo v2, "setDataLimit(%s, %d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 203
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$4gz9PGx-iHz6VaJglXvPXV_YCTo;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$4gz9PGx-iHz6VaJglXvPXV_YCTo;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, p2, p3, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_2b

    .line 212
    nop

    .line 214
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 215
    iget-boolean p1, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return p1

    .line 209
    :catch_2b
    move-exception p1

    .line 210
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return v1
.end method

.method public setLocalPrefixes(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 179
    const-string v1, ","

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "setLocalPrefixes([%s])"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 183
    :try_start_19
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$IpWViosH4sGe7yz1VTujaEKIDNQ;

    invoke-direct {v4, v1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$IpWViosH4sGe7yz1VTujaEKIDNQ;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_2a

    .line 191
    nop

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 194
    iget-boolean p1, v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return p1

    .line 188
    :catch_2a
    move-exception p1

    .line 189
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return v2
.end method

.method public setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 220
    const-string v0, ""

    if-eqz p1, :cond_6

    move-object v2, p1

    goto :goto_7

    :cond_6
    move-object v2, v0

    .line 221
    :goto_7
    if-eqz p2, :cond_b

    move-object v3, p2

    goto :goto_c

    :cond_b
    move-object v3, v0

    .line 222
    :goto_c
    if-eqz p3, :cond_10

    move-object v4, p3

    goto :goto_11

    :cond_10
    move-object v4, v0

    .line 223
    :goto_11
    if-eqz p4, :cond_14

    goto :goto_19

    :cond_14
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :goto_19
    move-object v5, p4

    .line 225
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v2, p1, p2

    const/4 p3, 0x1

    aput-object v3, p1, p3

    const/4 p3, 0x2

    aput-object v4, p1, p3

    const/4 p3, 0x3

    .line 226
    const-string p4, ","

    invoke-static {p4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p3

    .line 225
    const-string/jumbo p3, "setUpstreamParameters(%s, %s, %s, [%s])"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 228
    new-instance p3, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 230
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v6, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$2RWDK-fyqU5SThZDqBkZ1L_XSJA;

    invoke-direct {v6, p3}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$2RWDK-fyqU5SThZDqBkZ1L_XSJA;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface/range {v1 .. v6}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_46} :catch_4d

    .line 239
    nop

    .line 241
    invoke-direct {p0, p1, p3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 242
    iget-boolean p1, p3, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return p1

    .line 236
    :catch_4d
    move-exception p3

    .line 237
    invoke-direct {p0, p1, p3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    return p2
.end method

.method public stopOffloadControl()V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-eqz v0, :cond_24

    .line 143
    :try_start_4
    new-instance v1, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$AOzzTRw82KskEfgGFRGSy26wGv8;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$AOzzTRw82KskEfgGFRGSy26wGv8;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;)V

    invoke-interface {v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 149
    goto :goto_24

    .line 147
    :catch_d
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to stopOffload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 151
    :cond_24
    :goto_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 152
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    .line 153
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 154
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "stopOffloadControl()"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 155
    return-void
.end method
