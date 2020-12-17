.class public Lcom/meizu/common/pps/event/IntArrayArgs;
.super Lcom/meizu/common/pps/event/Args;
.source "IntArrayArgs.java"


# instance fields
.field public mIntArray:[I


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
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/IntArrayArgs;->mIntArray:[I

    .line 19
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/pps/event/IntArrayArgs;->mIntArray:[I

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 13
    iget-object v0, p0, Lcom/meizu/common/pps/event/IntArrayArgs;->mIntArray:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 14
    return-void
.end method
