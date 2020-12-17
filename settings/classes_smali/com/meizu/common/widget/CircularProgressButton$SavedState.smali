.class Lcom/meizu/common/widget/CircularProgressButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/common/widget/CircularProgressButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigurationChanged:Z

.field private mIndeterminateProgressMode:Z

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1249
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 1235
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I

    .line 1237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    .line 1238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_1d

    move v1, v2

    :cond_1d
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/common/widget/CircularProgressButton$1;)V
    .registers 3

    .line 1224
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1231
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)I
    .registers 1

    .line 1224
    iget p0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I

    return p0
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/CircularProgressButton$SavedState;I)I
    .registers 2

    .line 1224
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)Z
    .registers 1

    .line 1224
    iget-boolean p0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/meizu/common/widget/CircularProgressButton$SavedState;Z)Z
    .registers 2

    .line 1224
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)Z
    .registers 1

    .line 1224
    iget-boolean p0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/meizu/common/widget/CircularProgressButton$SavedState;Z)Z
    .registers 2

    .line 1224
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1243
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1244
    iget p2, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    iget-boolean p2, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    iget-boolean p0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
