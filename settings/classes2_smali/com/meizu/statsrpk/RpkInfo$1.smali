.class final Lcom/meizu/statsrpk/RpkInfo$1;
.super Ljava/lang/Object;
.source "RpkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsrpk/RpkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/statsrpk/RpkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/statsrpk/RpkInfo;
    .registers 2

    .line 30
    new-instance p0, Lcom/meizu/statsrpk/RpkInfo;

    invoke-direct {p0, p1}, Lcom/meizu/statsrpk/RpkInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/meizu/statsrpk/RpkInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/statsrpk/RpkInfo;
    .registers 2

    .line 35
    new-array p0, p1, [Lcom/meizu/statsrpk/RpkInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/meizu/statsrpk/RpkInfo$1;->newArray(I)[Lcom/meizu/statsrpk/RpkInfo;

    move-result-object p0

    return-object p0
.end method
