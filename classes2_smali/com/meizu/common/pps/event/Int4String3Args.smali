.class public Lcom/meizu/common/pps/event/Int4String3Args;
.super Lcom/meizu/common/pps/event/Args;
.source "Int4String3Args.java"


# instance fields
.field public mInt0:I

.field public mInt1:I

.field public mInt2:I

.field public mInt3:I

.field public mString0:Ljava/lang/String;

.field public mString1:Ljava/lang/String;

.field public mString2:Ljava/lang/String;


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

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mString0:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mString1:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mString2:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt0:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt1:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt2:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt3:I

    .line 37
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mString0:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mString1:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mString2:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"  # Landroid/os/Parcel;

    .line 18
    iget-object v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mString0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mString1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mString2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget v0, p0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    return-void
.end method
