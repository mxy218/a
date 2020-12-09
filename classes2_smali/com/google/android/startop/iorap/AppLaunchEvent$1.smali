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
    .registers 7

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    invoke-static {v0}, Lcom/google/android/startop/iorap/AppLaunchEvent;->access$000(I)Ljava/lang/Class;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_3d

    .line 301
    const/4 v0, 0x1

    :try_start_b
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/os/Parcel;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/startop/iorap/AppLaunchEvent;
    :try_end_20
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_20} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_20} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_20} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_20} :catch_21

    return-object p1

    .line 308
    :catch_21
    move-exception p1

    .line 309
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 306
    :catch_28
    move-exception p1

    .line 307
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 304
    :catch_2f
    move-exception p1

    .line 305
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 302
    :catch_36
    move-exception p1

    .line 303
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 297
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/startop/iorap/AppLaunchEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/startop/iorap/AppLaunchEvent;
    .registers 2

    .line 315
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/startop/iorap/AppLaunchEvent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$1;->newArray(I)[Lcom/google/android/startop/iorap/AppLaunchEvent;

    move-result-object p1

    return-object p1
.end method
