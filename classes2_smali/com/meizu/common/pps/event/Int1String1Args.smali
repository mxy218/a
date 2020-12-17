.class public Lcom/meizu/common/pps/event/Int1String1Args;
.super Lcom/meizu/common/pps/event/Args;
.source "Int1String1Args.java"


# instance fields
.field public mInt0:I

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
    .registers 3
    .param p1, "data"  # Landroid/os/Parcel;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int1String1Args;->mString0:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/Int1String1Args;->mInt0:I

    .line 22
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int1String1Args;->mString0:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 14
    iget-object v0, p0, Lcom/meizu/common/pps/event/Int1String1Args;->mString0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget v0, p0, Lcom/meizu/common/pps/event/Int1String1Args;->mInt0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    return-void
.end method
