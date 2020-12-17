.class final Lflyme/support/v7/widget/RecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/core/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/os/ParcelableCompatCreatorCallbacks<",
        "Lflyme/support/v7/widget/RecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lflyme/support/v7/widget/RecyclerView$SavedState;
    .registers 3

    .line 11636
    new-instance p0, Lflyme/support/v7/widget/RecyclerView$SavedState;

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 11633
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lflyme/support/v7/widget/RecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lflyme/support/v7/widget/RecyclerView$SavedState;
    .registers 2

    .line 11641
    new-array p0, p1, [Lflyme/support/v7/widget/RecyclerView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 11633
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$SavedState$1;->newArray(I)[Lflyme/support/v7/widget/RecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method
