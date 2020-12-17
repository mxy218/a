.class public Lcom/meizu/common/pps/event/IntArray2Args;
.super Lcom/meizu/common/pps/event/Args;
.source "IntArray2Args.java"


# instance fields
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

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/IntArray2Args;->mIntArray0:[I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/IntArray2Args;->mIntArray1:[I

    .line 21
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/pps/event/IntArray2Args;->mIntArray0:[I

    .line 26
    iput-object v0, p0, Lcom/meizu/common/pps/event/IntArray2Args;->mIntArray1:[I

    .line 27
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 13
    iget-object v0, p0, Lcom/meizu/common/pps/event/IntArray2Args;->mIntArray0:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 14
    iget-object v0, p0, Lcom/meizu/common/pps/event/IntArray2Args;->mIntArray1:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 15
    return-void
.end method
