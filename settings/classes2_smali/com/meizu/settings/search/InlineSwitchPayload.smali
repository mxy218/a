.class public Lcom/meizu/settings/search/InlineSwitchPayload;
.super Lcom/meizu/settings/search/InlinePayload;
.source "InlineSwitchPayload.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/settings/search/InlineSwitchPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsStandard:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lcom/meizu/settings/search/InlineSwitchPayload$1;

    invoke-direct {v0}, Lcom/meizu/settings/search/InlineSwitchPayload$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/search/InlineSwitchPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/InlinePayload;-><init>(Landroid/os/Parcel;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/meizu/settings/search/InlineSwitchPayload;->mIsStandard:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/settings/search/InlineSwitchPayload$1;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/InlineSwitchPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 79
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/search/InlinePayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    iget-boolean p0, p0, Lcom/meizu/settings/search/InlineSwitchPayload;->mIsStandard:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
