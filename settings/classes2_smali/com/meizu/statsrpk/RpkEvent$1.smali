.class final Lcom/meizu/statsrpk/RpkEvent$1;
.super Ljava/lang/Object;
.source "RpkEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsrpk/RpkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/statsrpk/RpkEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/statsrpk/RpkEvent;
    .registers 2

    .line 33
    new-instance p0, Lcom/meizu/statsrpk/RpkEvent;

    invoke-direct {p0, p1}, Lcom/meizu/statsrpk/RpkEvent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/meizu/statsrpk/RpkEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/statsrpk/RpkEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/statsrpk/RpkEvent;
    .registers 2

    .line 38
    new-array p0, p1, [Lcom/meizu/statsrpk/RpkEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/meizu/statsrpk/RpkEvent$1;->newArray(I)[Lcom/meizu/statsrpk/RpkEvent;

    move-result-object p0

    return-object p0
.end method
