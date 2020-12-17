.class final Lcom/meizu/common/widget/DayTimeDatePicker$SavedState$1;
.super Ljava/lang/Object;
.source "DayTimeDatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;
    .registers 3

    .line 787
    new-instance p0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;-><init>(Landroid/os/Parcel;Lcom/meizu/common/widget/DayTimeDatePicker$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 784
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;
    .registers 2

    .line 791
    new-array p0, p1, [Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 784
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState$1;->newArray(I)[Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;

    move-result-object p0

    return-object p0
.end method
