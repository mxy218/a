.class Lcom/meizu/settings/widget/SeekBarPreference$SavedState$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/SeekBarPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/settings/widget/SeekBarPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/settings/widget/SeekBarPreference$SavedState;
    .registers 2

    .line 262
    new-instance p0, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;

    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 260
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SeekBarPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/settings/widget/SeekBarPreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/settings/widget/SeekBarPreference$SavedState;
    .registers 2

    .line 266
    new-array p0, p1, [Lcom/meizu/settings/widget/SeekBarPreference$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 260
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SeekBarPreference$SavedState$1;->newArray(I)[Lcom/meizu/settings/widget/SeekBarPreference$SavedState;

    move-result-object p0

    return-object p0
.end method
