.class final Lflyme/support/v7/widget/ActionMenuPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;
    .registers 2

    .line 681
    new-instance p0, Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 679
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuPresenter$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;
    .registers 2

    .line 685
    new-array p0, p1, [Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 679
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuPresenter$SavedState$1;->newArray(I)[Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;

    move-result-object p0

    return-object p0
.end method
