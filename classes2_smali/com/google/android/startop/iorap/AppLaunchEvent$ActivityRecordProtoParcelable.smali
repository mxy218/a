.class public Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;
.super Ljava/lang/Object;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityRecordProtoParcelable"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Parcel;)[B
    .registers 1

    .line 360
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    .line 362
    return-object p0
.end method

.method public static write(Landroid/os/Parcel;[BI)V
    .registers 3

    .line 356
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 357
    return-void
.end method
