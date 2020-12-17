.class public Lcom/meizu/media/music/support/SupportSongItem;
.super Ljava/lang/Object;
.source "SupportSongItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/media/music/support/SupportSongItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArtistAlbum:Ljava/lang/String;

.field private mId:J

.field private mImageUrl:Ljava/lang/String;

.field private mIsLocal:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/meizu/media/music/support/SupportSongItem$1;

    invoke-direct {v0}, Lcom/meizu/media/music/support/SupportSongItem$1;-><init>()V

    sput-object v0, Lcom/meizu/media/music/support/SupportSongItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mId:J

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mTitle:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mArtistAlbum:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/meizu/media/music/support/SupportSongItem;->mIsLocal:Z

    .line 13
    iput-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mId:J

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mTitle:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mArtistAlbum:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/meizu/media/music/support/SupportSongItem;->mIsLocal:Z

    .line 13
    iput-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mImageUrl:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/media/music/support/SupportSongItem;->mId:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mTitle:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mArtistAlbum:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    iput-boolean v1, p0, Lcom/meizu/media/music/support/SupportSongItem;->mIsLocal:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/media/music/support/SupportSongItem;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/media/music/support/SupportSongItem$1;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lcom/meizu/media/music/support/SupportSongItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 46
    iget-wide v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object p2, p0, Lcom/meizu/media/music/support/SupportSongItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/meizu/media/music/support/SupportSongItem;->mArtistAlbum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-boolean p2, p0, Lcom/meizu/media/music/support/SupportSongItem;->mIsLocal:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object p0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
