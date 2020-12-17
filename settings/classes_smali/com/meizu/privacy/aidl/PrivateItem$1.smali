.class Lcom/meizu/privacy/aidl/PrivateItem$1;
.super Ljava/lang/Object;
.source "PrivateItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/privacy/aidl/PrivateItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/privacy/aidl/PrivateItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/privacy/aidl/PrivateItem;
    .registers 5

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 43
    new-instance v2, Lcom/meizu/privacy/aidl/PrivateItem;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/meizu/privacy/aidl/PrivateItem;-><init>(JLjava/lang/String;I)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/meizu/privacy/aidl/PrivateItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/privacy/aidl/PrivateItem;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/privacy/aidl/PrivateItem;
    .registers 2

    .line 35
    new-array p0, p1, [Lcom/meizu/privacy/aidl/PrivateItem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/meizu/privacy/aidl/PrivateItem$1;->newArray(I)[Lcom/meizu/privacy/aidl/PrivateItem;

    move-result-object p0

    return-object p0
.end method
