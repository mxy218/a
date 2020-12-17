.class public Lcom/meizu/common/pps/event/DoInitArgs;
.super Lcom/meizu/common/pps/event/Args;
.source "DoInitArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/pps/event/DoInitArgs$P;
    }
.end annotation


# instance fields
.field public mExtra:Landroid/os/Bundle;

.field public mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/meizu/common/pps/event/Args;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "data"  # Landroid/os/Parcel;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/meizu/common/pps/event/DoInitArgs$P;

    iput-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 25
    new-instance v2, Lcom/meizu/common/pps/event/DoInitArgs$P;

    invoke-direct {v2}, Lcom/meizu/common/pps/event/DoInitArgs$P;-><init>()V

    aput-object v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 27
    .end local v0  # "i":I
    :cond_18
    array-length v0, v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_24

    aget-object v3, v1, v2

    .line 28
    .local v3, "p":Lcom/meizu/common/pps/event/DoInitArgs$P;
    invoke-virtual {v3, p1}, Lcom/meizu/common/pps/event/DoInitArgs$P;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    .end local v3  # "p":Lcom/meizu/common/pps/event/DoInitArgs$P;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 30
    :cond_24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs;->mExtra:Landroid/os/Bundle;

    .line 31
    iget-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    .line 37
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 14
    iget-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_15

    aget-object v4, v0, v3

    .line 16
    .local v4, "p":Lcom/meizu/common/pps/event/DoInitArgs$P;
    invoke-virtual {v4, p1}, Lcom/meizu/common/pps/event/DoInitArgs$P;->writeToParcel(Landroid/os/Parcel;)V

    .line 15
    .end local v4  # "p":Lcom/meizu/common/pps/event/DoInitArgs$P;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 18
    :cond_15
    iget-object v0, p0, Lcom/meizu/common/pps/event/DoInitArgs;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 19
    return-void
.end method
