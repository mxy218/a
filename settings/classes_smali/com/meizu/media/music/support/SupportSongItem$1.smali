.class Lcom/meizu/media/music/support/SupportSongItem$1;
.super Ljava/lang/Object;
.source "SupportSongItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/support/SupportSongItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/media/music/support/SupportSongItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/media/music/support/SupportSongItem;
    .registers 3

    .line 19
    new-instance p0, Lcom/meizu/media/music/support/SupportSongItem;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/media/music/support/SupportSongItem;-><init>(Landroid/os/Parcel;Lcom/meizu/media/music/support/SupportSongItem$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/meizu/media/music/support/SupportSongItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/media/music/support/SupportSongItem;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/media/music/support/SupportSongItem;
    .registers 2

    .line 24
    new-array p0, p1, [Lcom/meizu/media/music/support/SupportSongItem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/meizu/media/music/support/SupportSongItem$1;->newArray(I)[Lcom/meizu/media/music/support/SupportSongItem;

    move-result-object p0

    return-object p0
.end method
