.class Lcom/meizu/settings/search/ResultPayload$1;
.super Ljava/lang/Object;
.source "ResultPayload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/ResultPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/settings/search/ResultPayload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/settings/search/ResultPayload;
    .registers 3

    .line 153
    new-instance p0, Lcom/meizu/settings/search/ResultPayload;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/search/ResultPayload;-><init>(Landroid/os/Parcel;Lcom/meizu/settings/search/ResultPayload$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 150
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/ResultPayload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/settings/search/ResultPayload;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/settings/search/ResultPayload;
    .registers 2

    .line 158
    new-array p0, p1, [Lcom/meizu/settings/search/ResultPayload;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 150
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/ResultPayload$1;->newArray(I)[Lcom/meizu/settings/search/ResultPayload;

    move-result-object p0

    return-object p0
.end method
