.class final Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse$1;
.super Ljava/lang/Object;
.source "NetResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
    .registers 2

    .line 49
    new-instance p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
    .registers 2

    .line 54
    new-array p0, p1, [Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse$1;->newArray(I)[Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object p0

    return-object p0
.end method
