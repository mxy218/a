.class Lcom/qti/snapdragon/sdk/display/ModeInfo$1;
.super Ljava/lang/Object;
.source "ModeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ModeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/snapdragon/sdk/display/ModeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/snapdragon/sdk/display/ModeInfo;
    .registers 4

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 89
    new-instance v1, Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-direct {v1, p0, v0, p1}, Lcom/qti/snapdragon/sdk/display/ModeInfo;-><init>(ILjava/lang/String;I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/qti/snapdragon/sdk/display/ModeInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    .registers 2

    .line 94
    new-array p0, p1, [Lcom/qti/snapdragon/sdk/display/ModeInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/qti/snapdragon/sdk/display/ModeInfo$1;->newArray(I)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object p0

    return-object p0
.end method
