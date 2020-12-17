.class final Lcom/meizu/common/widget/SkipPosSeekBar$SavedState$1;
.super Ljava/lang/Object;
.source "SkipPosSeekBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;
    .registers 2

    .line 384
    new-instance p0, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 381
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;
    .registers 2

    .line 389
    new-array p0, p1, [Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 381
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState$1;->newArray(I)[Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;

    move-result-object p0

    return-object p0
.end method
