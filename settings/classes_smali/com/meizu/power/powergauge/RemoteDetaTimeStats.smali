.class public Lcom/meizu/power/powergauge/RemoteDetaTimeStats;
.super Ljava/lang/Object;
.source "RemoteDetaTimeStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/power/powergauge/RemoteDetaTimeStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDetaTypeBatRealSecs:I

.field public mDetaTypeBatUpSecs:I

.field public mDetaTypeCellSecs:I

.field public mDetaTypePhoneSecs:I

.field public mDetaTypeScreenOnSecs:I

.field public mDetaTypeWeakSecs:I

.field public mDetaTypeWifiSecs:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats$1;

    invoke-direct {v0}, Lcom/meizu/power/powergauge/RemoteDetaTimeStats$1;-><init>()V

    sput-object v0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatRealSecs:I

    .line 8
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatUpSecs:I

    .line 9
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeScreenOnSecs:I

    .line 11
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWifiSecs:I

    .line 12
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeCellSecs:I

    .line 14
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypePhoneSecs:I

    .line 15
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWeakSecs:I

    .line 18
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatRealSecs:I

    .line 19
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatUpSecs:I

    .line 20
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeScreenOnSecs:I

    .line 22
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWifiSecs:I

    .line 23
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeCellSecs:I

    .line 25
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypePhoneSecs:I

    .line 26
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWeakSecs:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatRealSecs:I

    .line 8
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatUpSecs:I

    .line 9
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeScreenOnSecs:I

    .line 11
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWifiSecs:I

    .line 12
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeCellSecs:I

    .line 14
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypePhoneSecs:I

    .line 15
    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWeakSecs:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatRealSecs:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatUpSecs:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeScreenOnSecs:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWifiSecs:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeCellSecs:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypePhoneSecs:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWeakSecs:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/power/powergauge/RemoteDetaTimeStats$1;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1}, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 50
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatRealSecs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeBatUpSecs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeScreenOnSecs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWifiSecs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeCellSecs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget p2, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypePhoneSecs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget p0, p0, Lcom/meizu/power/powergauge/RemoteDetaTimeStats;->mDetaTypeWeakSecs:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
