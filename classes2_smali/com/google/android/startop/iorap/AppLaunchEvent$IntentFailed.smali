.class public final Lcom/google/android/startop/iorap/AppLaunchEvent$IntentFailed;
.super Lcom/google/android/startop/iorap/AppLaunchEvent;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentFailed"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(J)V

    .line 127
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 138
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(Landroid/os/Parcel;)V

    .line 139
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 131
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentFailed;

    if-eqz v0, :cond_9

    .line 132
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 134
    :cond_9
    const/4 p1, 0x0

    return p1
.end method
