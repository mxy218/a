.class public Lcom/meizu/settings/search/ResultPayloadUtils;
.super Ljava/lang/Object;
.source "ResultPayloadUtils.java"


# direct methods
.method public static marshall(Lcom/meizu/settings/search/ResultPayload;)[B
    .registers 3

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/meizu/settings/search/ResultPayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private static unmarshall([B)Landroid/os/Parcel;
    .registers 4

    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v0
.end method

.method public static unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/meizu/settings/search/ResultPayloadUtils;->unmarshall([B)Landroid/os/Parcel;

    move-result-object p0

    .line 41
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
