.class Lcom/meizu/privacy/aidl/UpdatePrivateResult$1;
.super Ljava/lang/Object;
.source "UpdatePrivateResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/privacy/aidl/UpdatePrivateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/privacy/aidl/UpdatePrivateResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/privacy/aidl/UpdatePrivateResult;
    .registers 3

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 39
    :goto_d
    new-instance p1, Lcom/meizu/privacy/aidl/UpdatePrivateResult;

    invoke-direct {p1, p0, v0}, Lcom/meizu/privacy/aidl/UpdatePrivateResult;-><init>(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/meizu/privacy/aidl/UpdatePrivateResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/privacy/aidl/UpdatePrivateResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/privacy/aidl/UpdatePrivateResult;
    .registers 2

    .line 32
    new-array p0, p1, [Lcom/meizu/privacy/aidl/UpdatePrivateResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/meizu/privacy/aidl/UpdatePrivateResult$1;->newArray(I)[Lcom/meizu/privacy/aidl/UpdatePrivateResult;

    move-result-object p0

    return-object p0
.end method
