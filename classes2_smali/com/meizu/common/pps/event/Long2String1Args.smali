.class public Lcom/meizu/common/pps/event/Long2String1Args;
.super Lcom/meizu/common/pps/event/Args;
.source "Long2String1Args.java"


# instance fields
.field public mLong0:J

.field public mLong1:J

.field public mString0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/meizu/common/pps/event/Args;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "data"  # Landroid/os/Parcel;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Long2String1Args;->mString0:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/pps/event/Long2String1Args;->mLong0:J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/pps/event/Long2String1Args;->mLong1:J

    .line 25
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Long2String1Args;->mString0:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 15
    iget-object v0, p0, Lcom/meizu/common/pps/event/Long2String1Args;->mString0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-wide v0, p0, Lcom/meizu/common/pps/event/Long2String1Args;->mLong0:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    iget-wide v0, p0, Lcom/meizu/common/pps/event/Long2String1Args;->mLong1:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    return-void
.end method
