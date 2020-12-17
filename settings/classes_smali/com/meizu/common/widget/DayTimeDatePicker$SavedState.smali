.class Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DayTimeDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/DayTimeDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 784
    new-instance v0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 758
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mYear:I

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mMonth:I

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/common/widget/DayTimeDatePicker$1;)V
    .registers 3

    .line 738
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5

    .line 748
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 749
    iput p2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mYear:I

    .line 750
    iput p3, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mMonth:I

    .line 751
    iput p4, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/meizu/common/widget/DayTimeDatePicker$1;)V
    .registers 6

    .line 738
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method


# virtual methods
.method public getDay()I
    .registers 1

    .line 773
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mDay:I

    return p0
.end method

.method public getMonth()I
    .registers 1

    .line 769
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mMonth:I

    return p0
.end method

.method public getYear()I
    .registers 1

    .line 765
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mYear:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 778
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 779
    iget p2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    iget p2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
