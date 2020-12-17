.class public Lcom/android/server/display/color/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field private static final COLOR_SATURATION_BOOSTED:F = 1.1f

.field private static final COLOR_SATURATION_NATURAL:F = 1.0f

.field private static final DISPLAY_COLOR_ENHANCED:I = 0x2

.field private static final DISPLAY_COLOR_MANAGED:I = 0x0

.field private static final DISPLAY_COLOR_UNMANAGED:I = 0x1

.field public static final LEVEL_COLOR_MATRIX_DISPLAY_WHITE_BALANCE:I = 0x7d

.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_NIGHT_DISPLAY:I = 0x64

.field public static final LEVEL_COLOR_MATRIX_SATURATION:I = 0x96

.field static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_COLOR_MATRIX:I = 0x3f7

.field private static final SURFACE_FLINGER_TRANSACTION_DALTONIZER:I = 0x3f6

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field private static final SURFACE_FLINGER_TRANSACTION_QUERY_COLOR_MANAGED:I = 0x406

.field private static final SURFACE_FLINGER_TRANSACTION_SATURATION:I = 0x3fe

.field private static final TAG:Ljava/lang/String; = "DisplayTransformManager"


# instance fields
.field private final mColorMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field private mDaltonizerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDaltonizerModeLock"
        }
    .end annotation
.end field

.field private final mDaltonizerModeLock:Ljava/lang/Object;

.field private final mTempColorMatrix:[[F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 101
    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 112
    return-void
.end method

.method private static applyColorMatrix([F)V
    .registers 6
    .param p0, "m"  # [F

    .line 195
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 196
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_44

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 198
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    const/4 v2, 0x0

    if-eqz p0, :cond_26

    .line 200
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    const/16 v4, 0x10

    if-ge v3, v4, :cond_25

    .line 202
    aget v4, p0, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .end local v3  # "i":I
    :cond_25
    goto :goto_29

    .line 205
    :cond_26
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    :goto_29
    const/16 v3, 0x3f7

    const/4 v4, 0x0

    :try_start_2c
    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_36
    .catchall {:try_start_2c .. :try_end_2f} :catchall_34

    .line 212
    nop

    :goto_30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    goto :goto_44

    .line 212
    :catchall_34
    move-exception v2

    goto :goto_40

    .line 209
    :catch_36
    move-exception v2

    .line 210
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_37
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set color transform"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_34

    .line 212
    nop

    .end local v2  # "ex":Landroid/os/RemoteException;
    goto :goto_30

    :goto_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 215
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_44
    :goto_44
    return-void
.end method

.method private static applyDaltonizerMode(I)V
    .registers 6
    .param p0, "mode"  # I

    .line 221
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 222
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_30

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 224
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/16 v2, 0x3f6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_18
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_22
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    .line 231
    nop

    :goto_1c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    goto :goto_30

    .line 231
    :catchall_20
    move-exception v2

    goto :goto_2c

    .line 228
    :catch_22
    move-exception v2

    .line 229
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_23
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 231
    nop

    .end local v2  # "ex":Landroid/os/RemoteException;
    goto :goto_1c

    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 234
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_30
    :goto_30
    return-void
.end method

.method private applySaturation(F)V
    .registers 7
    .param p1, "saturation"  # F

    .line 307
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.sf.color_saturation"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 309
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_3a

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 311
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 314
    const/16 v2, 0x3fe

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_22
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2c
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 318
    nop

    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    goto :goto_3a

    .line 318
    :catchall_2a
    move-exception v2

    goto :goto_36

    .line 315
    :catch_2c
    move-exception v2

    .line 316
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2d
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set saturation"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_2a

    .line 318
    nop

    .end local v2  # "ex":Landroid/os/RemoteException;
    goto :goto_26

    :goto_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 321
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private computeColorMatrixLocked()[F
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 178
    .local v0, "count":I
    if-nez v0, :cond_a

    .line 179
    const/4 v1, 0x0

    return-object v1

    .line 182
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 183
    .local v1, "result":[[F
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 184
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_31

    .line 185
    iget-object v3, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 186
    .local v3, "rhs":[F
    add-int/lit8 v4, v2, 0x1

    rem-int/lit8 v4, v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x0

    rem-int/lit8 v6, v2, 0x2

    aget-object v6, v1, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 184
    .end local v3  # "rhs":[F
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 188
    .end local v2  # "i":I
    :cond_31
    rem-int/lit8 v2, v0, 0x2

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static needsLinearColorMatrix()Z
    .registers 2

    .line 240
    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static needsLinearColorMatrix(I)Z
    .registers 2
    .param p0, "colorMode"  # I

    .line 248
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private setDisplayColor(I)V
    .registers 7
    .param p1, "color"  # I

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 329
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_3a

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/16 v2, 0x3ff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_22
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2c
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 338
    nop

    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    goto :goto_3a

    .line 338
    :catchall_2a
    move-exception v2

    goto :goto_36

    .line 335
    :catch_2c
    move-exception v2

    .line 336
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2d
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set display color"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_2a

    .line 338
    nop

    .end local v2  # "ex":Landroid/os/RemoteException;
    goto :goto_26

    :goto_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 341
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private updateConfiguration()V
    .registers 4

    .line 345
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 348
    goto :goto_11

    .line 346
    :catch_9
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplayTransformManager"

    const-string v2, "Could not update configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .registers 5
    .param p1, "key"  # I

    .line 118
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 120
    .local v1, "value":[F
    if-nez v1, :cond_f

    const/4 v2, 0x0

    goto :goto_14

    :cond_f
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    :goto_14
    monitor-exit v0

    return-object v2

    .line 121
    .end local v1  # "value":[F
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public isDeviceColorManaged()Z
    .registers 8

    .line 285
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 286
    .local v0, "flinger":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 288
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 289
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    const/16 v4, 0x406

    :try_start_18
    invoke-interface {v0, v4, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 292
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_28
    .catchall {:try_start_18 .. :try_end_1f} :catchall_26

    .line 296
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 292
    return v1

    .line 296
    :catchall_26
    move-exception v1

    goto :goto_38

    .line 293
    :catch_28
    move-exception v4

    .line 294
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_29
    const-string v5, "DisplayTransformManager"

    const-string v6, "Failed to query wide color support"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    .line 296
    nop

    .end local v4  # "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 298
    goto :goto_3f

    .line 296
    :goto_38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 300
    .end local v2  # "data":Landroid/os/Parcel;
    .end local v3  # "reply":Landroid/os/Parcel;
    :cond_3f
    :goto_3f
    return v1
.end method

.method public setColorMatrix(I[F)V
    .registers 7
    .param p1, "level"  # I
    .param p2, "value"  # [F

    .line 135
    if-eqz p2, :cond_20

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    goto :goto_20

    .line 136
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 141
    :try_start_23
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 142
    .local v1, "oldValue":[F
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_52

    .line 143
    if-nez p2, :cond_39

    .line 144
    iget-object v2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4b

    .line 145
    :cond_39
    if-nez v1, :cond_46

    .line 146
    iget-object v2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b

    .line 148
    :cond_46
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :goto_4b
    invoke-direct {p0}, Lcom/android/server/display/color/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/color/DisplayTransformManager;->applyColorMatrix([F)V

    .line 154
    .end local v1  # "oldValue":[F
    :cond_52
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public setColorMode(I[F)Z
    .registers 7
    .param p1, "colorMode"  # I
    .param p2, "nightDisplayMatrix"  # [F

    .line 255
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez p1, :cond_d

    .line 256
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 257
    invoke-direct {p0, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_3b

    .line 258
    :cond_d
    if-ne p1, v1, :cond_19

    .line 259
    const v2, 0x3f8ccccd  # 1.1f

    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 260
    invoke-direct {p0, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_3b

    .line 261
    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 262
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 263
    invoke-direct {p0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_3b

    .line 264
    :cond_23
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2d

    .line 265
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 266
    invoke-direct {p0, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_3b

    .line 267
    :cond_2d
    const/16 v0, 0x100

    if-lt p1, v0, :cond_3b

    const/16 v0, 0x1ff

    if-gt p1, v0, :cond_3b

    .line 269
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    .line 273
    :cond_3b
    :goto_3b
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 275
    invoke-direct {p0}, Lcom/android/server/display/color/DisplayTransformManager;->updateConfiguration()V

    .line 277
    return v1
.end method

.method public setDaltonizerMode(I)V
    .registers 4
    .param p1, "mode"  # I

    .line 164
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    iget v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v1, p1, :cond_c

    .line 166
    iput p1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 167
    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->applyDaltonizerMode(I)V

    .line 169
    :cond_c
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
