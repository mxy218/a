.class final Landroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    .registers 2

    .line 619
    new-instance p0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 616
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    .registers 2

    .line 624
    new-array p0, p1, [Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 616
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;->newArray(I)[Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    move-result-object p0

    return-object p0
.end method