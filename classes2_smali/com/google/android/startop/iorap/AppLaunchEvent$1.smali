.class Lcom/google/android/startop/iorap/AppLaunchEvent$1;
.super Ljava/lang/Object;
.source "AppLaunchEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/startop/iorap/AppLaunchEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/startop/iorap/AppLaunchEvent;
    .registers 8
    .param p1, "source"  # Landroid/os/Parcel;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .local v0, "typeIndex":I
    invoke-static {v0}, Lcom/google/android/startop/iorap/AppLaunchEvent;->access$000(I)Ljava/lang/Class;

    move-result-object v1

    .line 296
    .local v1, "kls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_3d

    .line 301
    const/4 v2, 0x1

    :try_start_b
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Parcel;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/AppLaunchEvent;
    :try_end_20
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_20} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_20} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_20} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_20} :catch_21

    return-object v2

    .line 308
    :catch_21
    move-exception v2

    .line 309
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 306
    .end local v2  # "e":Ljava/lang/NoSuchMethodException;
    :catch_28
    move-exception v2

    .line 307
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 304
    .end local v2  # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2f
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 302
    .end local v2  # "e":Ljava/lang/IllegalAccessException;
    :catch_36
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 297
    .end local v2  # "e":Ljava/lang/InstantiationException;
    :cond_3d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/startop/iorap/AppLaunchEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/startop/iorap/AppLaunchEvent;
    .registers 3
    .param p1, "size"  # I

    .line 315
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/startop/iorap/AppLaunchEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$1;->newArray(I)[Lcom/google/android/startop/iorap/AppLaunchEvent;

    move-result-object p1

    return-object p1
.end method
