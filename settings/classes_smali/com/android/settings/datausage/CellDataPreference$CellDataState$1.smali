.class Lcom/android/settings/datausage/CellDataPreference$CellDataState$1;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CellDataPreference$CellDataState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settings/datausage/CellDataPreference$CellDataState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/datausage/CellDataPreference$CellDataState;
    .registers 2

    .line 284
    new-instance p0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settings/datausage/CellDataPreference$CellDataState;
    .registers 2

    .line 289
    new-array p0, p1, [Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState$1;->newArray(I)[Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    move-result-object p0

    return-object p0
.end method