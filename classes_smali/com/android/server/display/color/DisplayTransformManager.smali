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

.field static final PERSISTENT_PROPERTY_COMPOSITION_COLOR_MODE:Ljava/lang/String; = "persist.sys.sf.color_mode"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 104
    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 115
    return-void
.end method

.method private static applyColorMatrix([F)V
    .registers 6

    .line 198
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_41

    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 201
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 202
    const/4 v2, 0x0

    if-eqz p0, :cond_25

    .line 203
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    move v3, v2

    :goto_19
    const/16 v4, 0x10

    if-ge v3, v4, :cond_28

    .line 205
    aget v4, p0, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 208
    :cond_25
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    :cond_28
    const/16 p0, 0x3f7

    const/4 v3, 0x0

    :try_start_2b
    invoke-interface {v0, p0, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_34
    .catchall {:try_start_2b .. :try_end_2e} :catchall_32

    .line 215
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    goto :goto_41

    .line 215
    :catchall_32
    move-exception p0

    goto :goto_3d

    .line 212
    :catch_34
    move-exception p0

    .line 213
    :try_start_35
    const-string v0, "DisplayTransformManager"

    const-string v2, "Failed to set color transform"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    goto :goto_2e

    .line 215
    :goto_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    .line 218
    :cond_41
    :goto_41
    return-void
.end method

.method private static applyDaltonizerMode(I)V
    .registers 5

    .line 224
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_2e

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 227
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/16 p0, 0x3f6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_18
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_21
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    .line 234
    :goto_1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    goto :goto_2e

    .line 234
    :catchall_1f
    move-exception p0

    goto :goto_2a

    .line 231
    :catch_21
    move-exception p0

    .line 232
    :try_start_22
    const-string v0, "DisplayTransformManager"

    const-string v2, "Failed to set Daltonizer mode"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    goto :goto_1b

    .line 234
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    .line 237
    :cond_2e
    :goto_2e
    return-void
.end method

.method private applySaturation(F)V
    .registers 6

    .line 311
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.sf.color_saturation"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_38

    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 315
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 318
    const/16 p1, 0x3fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_22
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2b
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 322
    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    goto :goto_38

    .line 322
    :catchall_29
    move-exception p1

    goto :goto_34

    .line 319
    :catch_2b
    move-exception p1

    .line 320
    :try_start_2c
    const-string v0, "DisplayTransformManager"

    const-string v2, "Failed to set saturation"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    goto :goto_25

    .line 322
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1

    .line 325
    :cond_38
    :goto_38
    return-void
.end method

.method private computeColorMatrixLocked()[F
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 181
    if-nez v0, :cond_a

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 186
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 187
    nop

    :goto_13
    if-ge v2, v0, :cond_30

    .line 188
    iget-object v3, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [F

    .line 189
    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v4, v3, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x0

    rem-int/lit8 v2, v2, 0x2

    aget-object v6, v1, v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 187
    move v2, v3

    goto :goto_13

    .line 191
    :cond_30
    rem-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static needsLinearColorMatrix()Z
    .registers 2

    .line 243
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

    .line 251
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private setDisplayColor(II)V
    .registers 7

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v0, -0x1

    if-eq p2, v0, :cond_18

    .line 333
    nop

    .line 334
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    const-string/jumbo v2, "persist.sys.sf.color_mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_18
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_4b

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 340
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    if-eq p2, v0, :cond_31

    .line 343
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    :cond_31
    const/16 p1, 0x3ff

    const/4 p2, 0x0

    const/4 v0, 0x0

    :try_start_35
    invoke-interface {v1, p1, v2, p2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_3e
    .catchall {:try_start_35 .. :try_end_38} :catchall_3c

    .line 350
    :goto_38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 351
    goto :goto_4b

    .line 350
    :catchall_3c
    move-exception p1

    goto :goto_47

    .line 347
    :catch_3e
    move-exception p1

    .line 348
    :try_start_3f
    const-string p2, "DisplayTransformManager"

    const-string v0, "Failed to set display color"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_3c

    goto :goto_38

    .line 350
    :goto_47
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p1

    .line 353
    :cond_4b
    :goto_4b
    return-void
.end method

.method private updateConfiguration()V
    .registers 4

    .line 357
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 360
    goto :goto_11

    .line 358
    :catch_9
    move-exception v0

    .line 359
    const-string v1, "DisplayTransformManager"

    const-string v2, "Could not update configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    :goto_11
    return-void
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 123
    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_14

    :cond_f
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    :goto_14
    monitor-exit v0

    return-object p1

    .line 124
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public isDeviceColorManaged()Z
    .registers 7

    .line 289
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 290
    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 293
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 295
    const/16 v4, 0x406

    :try_start_18
    invoke-interface {v0, v4, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 296
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_28
    .catchall {:try_start_18 .. :try_end_1f} :catchall_26

    .line 300
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 296
    return v0

    .line 300
    :catchall_26
    move-exception v0

    goto :goto_37

    .line 297
    :catch_28
    move-exception v0

    .line 298
    :try_start_29
    const-string v4, "DisplayTransformManager"

    const-string v5, "Failed to query wide color support"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    .line 300
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 302
    goto :goto_3e

    .line 300
    :goto_37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 304
    :cond_3e
    :goto_3e
    return v1
.end method

.method public setColorMatrix(I[F)V
    .registers 6

    .line 138
    if-eqz p2, :cond_20

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    goto :goto_20

    .line 139
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 144
    :try_start_23
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 145
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_52

    .line 146
    if-nez p2, :cond_39

    .line 147
    iget-object p2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4b

    .line 148
    :cond_39
    if-nez v1, :cond_46

    .line 149
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b

    .line 151
    :cond_46
    array-length p1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :goto_4b
    invoke-direct {p0}, Lcom/android/server/display/color/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->applyColorMatrix([F)V

    .line 157
    :cond_52
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public setColorMode(I[FI)Z
    .registers 8

    .line 259
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez p1, :cond_d

    .line 260
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 261
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    .line 262
    :cond_d
    if-ne p1, v1, :cond_19

    .line 263
    const p1, 0x3f8ccccd  # 1.1f

    invoke-direct {p0, p1}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 264
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    .line 265
    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 266
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 267
    invoke-direct {p0, v1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    .line 268
    :cond_23
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2d

    .line 269
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 270
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    .line 271
    :cond_2d
    const/16 v0, 0x100

    if-lt p1, v0, :cond_3b

    const/16 v0, 0x1ff

    if-gt p1, v0, :cond_3b

    .line 273
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 274
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    .line 277
    :cond_3b
    :goto_3b
    const/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 279
    invoke-direct {p0}, Lcom/android/server/display/color/DisplayTransformManager;->updateConfiguration()V

    .line 281
    return v1
.end method

.method public setDaltonizerMode(I)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v1, p1, :cond_c

    .line 169
    iput p1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 170
    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->applyDaltonizerMode(I)V

    .line 172
    :cond_c
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method
