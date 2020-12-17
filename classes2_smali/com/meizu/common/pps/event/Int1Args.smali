.class public Lcom/meizu/common/pps/event/Int1Args;
.super Lcom/meizu/common/pps/event/Args;
.source "Int1Args.java"


# instance fields
.field public mInt0:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/meizu/common/pps/event/Args;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "data"  # Landroid/os/Parcel;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/Int1Args;->mInt0:I

    .line 19
    return-void
.end method

.method public recycle()V
    .registers 1

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 13
    iget v0, p0, Lcom/meizu/common/pps/event/Int1Args;->mInt0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    return-void
.end method
