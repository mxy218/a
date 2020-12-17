.class final Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload$1;
.super Ljava/lang/Object;
.source "TrackerPayload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;
    .registers 2

    .line 104
    new-instance p0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;
    .registers 2

    .line 109
    new-array p0, p1, [Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload$1;->newArray(I)[Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object p0

    return-object p0
.end method
