.class Lcom/meizu/settings/search/SavedQueryPayload$1;
.super Ljava/lang/Object;
.source "SavedQueryPayload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/SavedQueryPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/settings/search/SavedQueryPayload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/settings/search/SavedQueryPayload;
    .registers 2

    .line 58
    new-instance p0, Lcom/meizu/settings/search/SavedQueryPayload;

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SavedQueryPayload;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SavedQueryPayload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/settings/search/SavedQueryPayload;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/settings/search/SavedQueryPayload;
    .registers 2

    .line 63
    new-array p0, p1, [Lcom/meizu/settings/search/SavedQueryPayload;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SavedQueryPayload$1;->newArray(I)[Lcom/meizu/settings/search/SavedQueryPayload;

    move-result-object p0

    return-object p0
.end method
