.class public Lcom/meizu/common/pps/event/DoInitArgs$P;
.super Ljava/lang/Object;
.source "DoInitArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/pps/event/DoInitArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P"
.end annotation


# instance fields
.field public adj:I

.field public createTime:J

.field public flags:I

.field public id:I

.field public lastActiveTime:J

.field public name:Ljava/lang/String;

.field public oomPid:I

.field public oomString:Ljava/lang/String;

.field public packageFlags:I

.field public pid:I

.field public pkg:Ljava/lang/String;

.field public pss:I

.field public reason:Ljava/lang/String;

.field public rss:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "data"  # Landroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->pkg:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->uid:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->id:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->packageFlags:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->reason:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->name:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->pid:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->adj:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->oomPid:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->oomString:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->flags:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->pss:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->rss:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->createTime:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->lastActiveTime:J

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 57
    iget-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->packageFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->adj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->oomPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->oomString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->pss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->rss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-wide v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-wide v0, p0, Lcom/meizu/common/pps/event/DoInitArgs$P;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    return-void
.end method
