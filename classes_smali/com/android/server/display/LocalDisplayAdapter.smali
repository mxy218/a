.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field private final mDevices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11

    .line 74
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 64
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 75
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static getPowerModeForState(I)I
    .registers 4

    .line 147
    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    if-eq p0, v2, :cond_e

    .line 157
    const/4 p0, 0x2

    return p0

    .line 153
    :cond_e
    return v1

    .line 151
    :cond_f
    return v0

    .line 155
    :cond_10
    return v2

    .line 149
    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private tryConnectDisplayLocked(J)V
    .registers 16

    .line 89
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_9e

    .line 91
    nop

    .line 92
    invoke-static {v2}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v5

    .line 93
    const-string v0, "LocalDisplayAdapter"

    if-nez v5, :cond_24

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid configs found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 98
    :cond_24
    invoke-static {v2}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v6

    .line 99
    if-gez v6, :cond_3f

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No active config found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 105
    :cond_3f
    invoke-static {v2}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v1

    .line 106
    if-gez v1, :cond_5c

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get active color mode for display device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, -0x1

    move v9, v0

    goto :goto_5d

    .line 106
    :cond_5c
    move v9, v1

    .line 114
    :goto_5d
    invoke-static {v2}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v8

    .line 115
    invoke-static {v2}, Landroid/view/SurfaceControl;->getAllowedDisplayConfigs(Landroid/os/IBinder;)[I

    move-result-object v7

    .line 116
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 117
    if-nez v0, :cond_8d

    .line 119
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_7a

    move v10, v11

    goto :goto_7c

    :cond_7a
    const/4 v0, 0x0

    move v10, v0

    .line 120
    :goto_7c
    new-instance v12, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object v0, v12

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;J[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[IIZ)V

    .line 123
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, v12}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 124
    invoke-virtual {p0, v12, v11}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_9e

    .line 125
    :cond_8d
    move-object v3, v0

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[II)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 128
    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    nop

    .line 135
    :cond_9e
    :goto_9e
    return-void
.end method

.method private tryDisconnectDisplayLocked(J)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 139
    if-eqz v0, :cond_13

    .line 141
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 142
    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 144
    :cond_13
    return-void
.end method


# virtual methods
.method getOverlayContext()Landroid/content/Context;
    .registers 2

    .line 824
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public registerLocked()V
    .registers 6

    .line 79
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 81
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    .line 83
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-wide v3, v0, v2

    .line 84
    invoke-direct {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 86
    :cond_22
    return-void
.end method
