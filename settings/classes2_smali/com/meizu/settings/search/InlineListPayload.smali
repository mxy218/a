.class public Lcom/meizu/settings/search/InlineListPayload;
.super Lcom/meizu/settings/search/InlinePayload;
.source "InlineListPayload.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/settings/search/InlineListPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNumOptions:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/meizu/settings/search/InlineListPayload$1;

    invoke-direct {v0}, Lcom/meizu/settings/search/InlineListPayload$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/search/InlineListPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/InlinePayload;-><init>(Landroid/os/Parcel;)V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/search/InlineListPayload;->mNumOptions:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/settings/search/InlineListPayload$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/InlineListPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 33
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/search/InlinePayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    iget p0, p0, Lcom/meizu/settings/search/InlineListPayload;->mNumOptions:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
