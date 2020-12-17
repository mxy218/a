.class public Lcom/meizu/common/pps/event/Int1StringList1Args;
.super Lcom/meizu/common/pps/event/Args;
.source "Int1StringList1Args.java"


# instance fields
.field public mInt0:I

.field public mStringArray0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
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

    iput v0, p0, Lcom/meizu/common/pps/event/Int1StringList1Args;->mInt0:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int1StringList1Args;->mStringArray0:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int1StringList1Args;->mStringArray0:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 15
    iget v0, p0, Lcom/meizu/common/pps/event/Int1StringList1Args;->mInt0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object v0, p0, Lcom/meizu/common/pps/event/Int1StringList1Args;->mStringArray0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 17
    return-void
.end method
