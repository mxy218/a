.class Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
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
            "Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field progress:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1180
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 1170
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V
    .registers 3

    .line 1156
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1163
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1176
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1177
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
