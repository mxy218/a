.class final Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroidx/core/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/os/ParcelableCompatCreatorCallbacks<",
        "Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    .registers 3

    .line 2133
    invoke-static {p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->access$1400(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 2130
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    .registers 2

    .line 2138
    new-array p0, p1, [Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 2130
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState$1;->newArray(I)[Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    move-result-object p0

    return-object p0
.end method
