.class final Landroidx/leanback/widget/GridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/leanback/widget/GridLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field childStates:Landroid/os/Bundle;

.field index:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3613
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$SavedState$1;

    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 3636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3604
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 3631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3604
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    .line 3632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->index:I

    .line 3633
    const-class v0, Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 3608
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3609
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
