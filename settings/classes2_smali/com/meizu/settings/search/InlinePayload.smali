.class public abstract Lcom/meizu/settings/search/InlinePayload;
.super Lcom/meizu/settings/search/ResultPayload;
.source "InlinePayload.java"


# instance fields
.field final mDefaultvalue:I

.field final mIsDeviceSupported:Z

.field final mSettingKey:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mSettingSource:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 74
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/meizu/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/search/InlinePayload;->mSettingSource:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iput-boolean v1, p0, Lcom/meizu/settings/search/InlinePayload;->mIsDeviceSupported:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/search/InlinePayload;->mDefaultvalue:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 83
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/search/ResultPayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    iget-object p2, p0, Lcom/meizu/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget p2, p0, Lcom/meizu/settings/search/InlinePayload;->mSettingSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-boolean p2, p0, Lcom/meizu/settings/search/InlinePayload;->mIsDeviceSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget p0, p0, Lcom/meizu/settings/search/InlinePayload;->mDefaultvalue:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
