.class Lcom/meizu/power/powergauge/RemoteDetaTimeStats$1;
.super Ljava/lang/Object;
.source "RemoteDetaTimeStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/power/powergauge/RemoteDetaTimeStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/power/powergauge/RemoteDetaTimeStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/power/powergauge/RemoteDetaTimeStats;
    .registers 3

    .line 65
    new-instance p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;-><init>(Landroid/os/Parcel;Lcom/meizu/power/powergauge/RemoteDetaTimeStats$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Lcom/meizu/power/powergauge/RemoteDetaTimeStats$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/power/powergauge/RemoteDetaTimeStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/power/powergauge/RemoteDetaTimeStats;
    .registers 2

    .line 70
    new-array p0, p1, [Lcom/meizu/power/powergauge/RemoteDetaTimeStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Lcom/meizu/power/powergauge/RemoteDetaTimeStats$1;->newArray(I)[Lcom/meizu/power/powergauge/RemoteDetaTimeStats;

    move-result-object p0

    return-object p0
.end method
