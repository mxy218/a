.class Lcom/android/server/location/GnssGeofenceProvider;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;,
        Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssGeofenceProvider"


# instance fields
.field private final mGeofenceEntries:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    const-string v0, "GnssGeofenceProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;-><init>(Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 43
    iput-object p1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    .line 44
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 13
    invoke-static {}, Lcom/android/server/location/GnssGeofenceProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(IDDDIIII)Z
    .registers 11

    .line 13
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GnssGeofenceProvider;->native_add_geofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(I)Z
    .registers 1

    .line 13
    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_remove_geofence(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(II)Z
    .registers 2

    .line 13
    invoke-static {p0, p1}, Lcom/android/server/location/GnssGeofenceProvider;->native_resume_geofence(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(I)Z
    .registers 1

    .line 13
    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_pause_geofence(I)Z

    move-result p0

    return p0
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .registers 27

    .line 76
    move-object v0, p0

    move/from16 v13, p1

    iget-object v14, v0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 77
    :try_start_6
    iget-object v1, v0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v1

    .line 80
    if-eqz v1, :cond_47

    .line 81
    new-instance v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;-><init>(Lcom/android/server/location/GnssGeofenceProvider$1;)V

    .line 82
    iput v13, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    .line 83
    move-wide/from16 v3, p2

    iput-wide v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    .line 84
    move-wide/from16 v3, p4

    iput-wide v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    .line 85
    move-wide/from16 v3, p6

    iput-wide v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D

    .line 86
    move/from16 v3, p8

    iput v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    .line 87
    move/from16 v3, p9

    iput v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    .line 88
    move/from16 v3, p10

    iput v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    .line 89
    move/from16 v3, p11

    iput v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    .line 90
    iget-object v0, v0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_47
    monitor-exit v14

    return v1

    .line 93
    :catchall_49
    move-exception v0

    monitor-exit v14
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public isHardwareGeofenceSupported()Z
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->isGeofenceSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 69
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public pauseHardwareGeofence(I)Z
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    move-result v1

    .line 111
    if-eqz v1, :cond_18

    .line 112
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 113
    if-eqz p1, :cond_18

    .line 114
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 117
    :cond_18
    monitor-exit v0

    return v1

    .line 118
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public removeHardwareGeofence(I)Z
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->removeGeofence(I)Z

    move-result v1

    .line 100
    if-eqz v1, :cond_10

    .line 101
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 103
    :cond_10
    monitor-exit v0

    return v1

    .line 104
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public resumeHardwareGeofence(II)Z
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->resumeGeofence(II)Z

    move-result v1

    .line 125
    if-eqz v1, :cond_1a

    .line 126
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 127
    if-eqz p1, :cond_1a

    .line 128
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 129
    iput p2, p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    .line 132
    :cond_1a
    monitor-exit v0

    return v1

    .line 133
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method resumeIfStarted()V
    .registers 16

    .line 47
    sget-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 48
    const-string v0, "GnssGeofenceProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    const/4 v1, 0x0

    :goto_10
    :try_start_10
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 52
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 53
    iget-object v3, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v4, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    iget-wide v5, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    iget-wide v7, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    iget-wide v9, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D

    iget v11, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    iget v12, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    iget v13, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    iget v14, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v3

    .line 58
    if-eqz v3, :cond_43

    iget-boolean v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    if-eqz v3, :cond_43

    .line 59
    iget-object v3, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v2, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    invoke-virtual {v3, v2}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    .line 51
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 62
    :cond_46
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_48

    throw v1
.end method
