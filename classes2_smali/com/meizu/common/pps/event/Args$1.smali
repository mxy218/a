.class Lcom/meizu/common/pps/event/Args$1;
.super Ljava/lang/Object;
.source "Args.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/pps/event/Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/common/pps/event/Args;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/common/pps/event/Args;
    .registers 4
    .param p1, "source"  # Landroid/os/Parcel;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v1

    .line 34
    .local v1, "data":Lcom/meizu/common/pps/event/Args;
    if-eqz v1, :cond_d

    .line 35
    invoke-virtual {v1, p1}, Lcom/meizu/common/pps/event/Args;->readFromParcel(Landroid/os/Parcel;)V

    .line 37
    :cond_d
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/meizu/common/pps/event/Args$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/common/pps/event/Args;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/meizu/common/pps/event/Args;
    .registers 3
    .param p1, "size"  # I

    .line 41
    new-array v0, p1, [Lcom/meizu/common/pps/event/Args;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/meizu/common/pps/event/Args$1;->newArray(I)[Lcom/meizu/common/pps/event/Args;

    move-result-object p1

    return-object p1
.end method
