.class public Lcom/meizu/common/pps/event/Int1IntArray2Args;
.super Lcom/meizu/common/pps/event/Args;
.source "Int1IntArray2Args.java"


# instance fields
.field public mInt0:I

.field public mIntArray0:[I

.field public mIntArray1:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/meizu/common/pps/event/Args;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "data"  # Landroid/os/Parcel;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mInt0:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mIntArray0:[I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mIntArray1:[I

    .line 24
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mIntArray0:[I

    .line 29
    iput-object v0, p0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mIntArray1:[I

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 14
    iget v0, p0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mInt0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object v0, p0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mIntArray0:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 16
    iget-object v0, p0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mIntArray1:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 17
    return-void
.end method
