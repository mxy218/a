.class final Lflyme/support/v7/widget/MzRecyclerView$MZSavedState$1;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;
    .registers 3

    .line 1596
    new-instance p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;-><init>(Landroid/os/Parcel;Lflyme/support/v7/widget/MzRecyclerView$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1593
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;
    .registers 2

    .line 1601
    new-array p0, p1, [Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1593
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState$1;->newArray(I)[Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;

    move-result-object p0

    return-object p0
.end method
