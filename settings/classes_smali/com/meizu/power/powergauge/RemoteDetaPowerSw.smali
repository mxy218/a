.class public Lcom/meizu/power/powergauge/RemoteDetaPowerSw;
.super Ljava/lang/Object;
.source "RemoteDetaPowerSw.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/power/powergauge/RemoteDetaPowerSw;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "PowerGauge"


# instance fields
.field public alarmTimes:I

.field public fullWakeTime:I

.field public gpsTime:I

.field public mobilePackets:J

.field public power:I

.field public uid:I

.field public wakelockTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw$1;

    invoke-direct {v0}, Lcom/meizu/power/powergauge/RemoteDetaPowerSw$1;-><init>()V

    sput-object v0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->uid:I

    .line 12
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->power:I

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->mobilePackets:J

    .line 17
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->wakelockTime:I

    .line 18
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->alarmTimes:I

    .line 19
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->fullWakeTime:I

    .line 20
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->gpsTime:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->uid:I

    .line 12
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->power:I

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->mobilePackets:J

    .line 17
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->wakelockTime:I

    .line 18
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->alarmTimes:I

    .line 19
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->fullWakeTime:I

    .line 20
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->gpsTime:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->uid:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->power:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->mobilePackets:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->wakelockTime:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->alarmTimes:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->fullWakeTime:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->gpsTime:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 75
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    move-exception p0

    .line 77
    sget-object v0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 62
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->power:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-wide v0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->mobilePackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->wakelockTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->alarmTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->fullWakeTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget p0, p0, Lcom/meizu/power/powergauge/RemoteDetaPowerSw;->gpsTime:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
