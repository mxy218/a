.class public Lcom/android/settingslib/drawer/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityName:Ljava/lang/String;

.field private final mActivityPackage:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field mLastUpdateTime:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mMetaData:Landroid/os/Bundle;

.field public userHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 378
    new-instance v0, Lcom/android/settingslib/drawer/Tile$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/Tile$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 398
    sget-object v0, Lcom/android/settingslib/drawer/-$$Lambda$Tile$5_ETnVHzVG6DF0RKPoy76eRI-QM;->INSTANCE:Lcom/android/settingslib/drawer/-$$Lambda$Tile$5_ETnVHzVG6DF0RKPoy76eRI-QM;

    sput-object v0, Lcom/android/settingslib/drawer/Tile;->TILE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mActivityPackage:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mActivityName:Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mActivityPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_3c

    .line 105
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 107
    :cond_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .registers 2

    .line 399
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getOrder()I
    .registers 2

    .line 163
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v0, "com.android.settings.order"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hasOrder()Z
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.order"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    .line 175
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Integer;

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mActivityPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    .line 123
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 125
    :cond_24
    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
