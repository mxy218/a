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
.field private static final DEBUG:Z = true

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field private final mAodScreenRunnable:Ljava/lang/Runnable;

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
    .param p1, "syncRoot"  # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "handler"  # Landroid/os/Handler;
    .param p4, "listener"  # Lcom/android/server/display/DisplayAdapter$Listener;

    .line 79
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 952
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/LocalDisplayAdapter$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mAodScreenRunnable:Ljava/lang/Runnable;

    .line 80
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/LocalDisplayAdapter;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/LocalDisplayAdapter;

    .line 61
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mAodScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/LocalDisplayAdapter;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/LocalDisplayAdapter;

    .line 61
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter;->isFingerprintAuthenticatingInAodMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"  # J

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"  # J

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/LocalDisplayAdapter;

    .line 61
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static getPowerModeForState(I)I
    .registers 4
    .param p0, "state"  # I

    .line 152
    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    if-eq p0, v2, :cond_e

    .line 162
    const/4 v0, 0x2

    return v0

    .line 158
    :cond_e
    return v1

    .line 156
    :cond_f
    return v0

    .line 160
    :cond_10
    return v2

    .line 154
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private isFingerprintAuthenticatingInAodMode()Z
    .registers 2

    .line 980
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 981
    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isFingerprintAuthenticatingInAodMode()Z

    move-result v0

    .line 980
    return v0
.end method

.method private tryConnectDisplayLocked(J)V
    .registers 26
    .param p1, "physicalDisplayId"  # J

    .line 94
    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    invoke-static/range {p1 .. p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v14

    .line 95
    .local v14, "displayToken":Landroid/os/IBinder;
    if-eqz v14, :cond_c5

    .line 96
    nop

    .line 97
    invoke-static {v14}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v15

    .line 98
    .local v15, "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const-string v0, "LocalDisplayAdapter"

    if-nez v15, :cond_28

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid configs found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 103
    :cond_28
    invoke-static {v14}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v16

    .line 104
    .local v16, "activeConfig":I
    if-gez v16, :cond_43

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No active config found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 110
    :cond_43
    invoke-static {v14}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v1

    .line 111
    .local v1, "activeColorMode":I
    if-gez v1, :cond_61

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get active color mode for display device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, -0x1

    move/from16 v17, v0

    .end local v1  # "activeColorMode":I
    .local v0, "activeColorMode":I
    goto :goto_63

    .line 111
    .end local v0  # "activeColorMode":I
    .restart local v1  # "activeColorMode":I
    :cond_61
    move/from16 v17, v1

    .line 119
    .end local v1  # "activeColorMode":I
    .local v17, "activeColorMode":I
    :goto_63
    invoke-static {v14}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v18

    .line 120
    .local v18, "colorModes":[I
    invoke-static {v14}, Landroid/view/SurfaceControl;->getAllowedDisplayConfigs(Landroid/os/IBinder;)[I

    move-result-object v19

    .line 121
    .local v19, "allowedConfigs":[I
    iget-object v0, v11, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 122
    .local v9, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v9, :cond_a6

    .line 124
    iget-object v0, v11, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_81

    move v10, v8

    goto :goto_83

    :cond_81
    const/4 v0, 0x0

    move v10, v0

    .line 125
    .local v10, "isInternal":Z
    :goto_83
    new-instance v20, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, p1

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v19

    move-object/from16 v21, v14

    move v14, v8

    .end local v14  # "displayToken":Landroid/os/IBinder;
    .local v21, "displayToken":Landroid/os/IBinder;
    move-object/from16 v8, v18

    move-object/from16 v22, v9

    .end local v9  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v22, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move/from16 v9, v17

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;J[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[IIZ)V

    .line 128
    .end local v22  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v1, v11, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v12, v13, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 129
    invoke-virtual {v11, v0, v14}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 130
    .end local v10  # "isInternal":Z
    goto :goto_c7

    .end local v0  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v21  # "displayToken":Landroid/os/IBinder;
    .restart local v9  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v14  # "displayToken":Landroid/os/IBinder;
    :cond_a6
    move-object/from16 v22, v9

    move-object/from16 v21, v14

    .end local v9  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v14  # "displayToken":Landroid/os/IBinder;
    .restart local v21  # "displayToken":Landroid/os/IBinder;
    .restart local v22  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move-object/from16 v0, v22

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[II)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 133
    const/4 v0, 0x2

    move-object/from16 v1, v22

    .end local v22  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v1, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    invoke-virtual {v11, v1, v0}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_c7

    .line 130
    .end local v1  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v22  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_c2
    move-object/from16 v1, v22

    .end local v22  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v1  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    goto :goto_c7

    .line 95
    .end local v1  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v15  # "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v16  # "activeConfig":I
    .end local v17  # "activeColorMode":I
    .end local v18  # "colorModes":[I
    .end local v19  # "allowedConfigs":[I
    .end local v21  # "displayToken":Landroid/os/IBinder;
    .restart local v14  # "displayToken":Landroid/os/IBinder;
    :cond_c5
    move-object/from16 v21, v14

    .line 140
    .end local v14  # "displayToken":Landroid/os/IBinder;
    .restart local v21  # "displayToken":Landroid/os/IBinder;
    :goto_c7
    return-void
.end method

.method private tryDisconnectDisplayLocked(J)V
    .registers 5
    .param p1, "physicalDisplayId"  # J

    .line 143
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 144
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_13

    .line 146
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 147
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 149
    :cond_13
    return-void
.end method


# virtual methods
.method getOverlayContext()Landroid/content/Context;
    .registers 2

    .line 880
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public registerLocked()V
    .registers 6

    .line 84
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 86
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    .line 88
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-wide v3, v0, v2

    .line 89
    .local v3, "physicalDisplayId":J
    invoke-direct {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    .line 88
    .end local v3  # "physicalDisplayId":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 91
    :cond_22
    return-void
.end method
