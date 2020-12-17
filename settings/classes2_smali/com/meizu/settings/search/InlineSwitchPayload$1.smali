.class Lcom/meizu/settings/search/InlineSwitchPayload$1;
.super Ljava/lang/Object;
.source "InlineSwitchPayload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/InlineSwitchPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/settings/search/InlineSwitchPayload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/settings/search/InlineSwitchPayload;
    .registers 3

    .line 87
    new-instance p0, Lcom/meizu/settings/search/InlineSwitchPayload;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/search/InlineSwitchPayload;-><init>(Landroid/os/Parcel;Lcom/meizu/settings/search/InlineSwitchPayload$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/InlineSwitchPayload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/settings/search/InlineSwitchPayload;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/settings/search/InlineSwitchPayload;
    .registers 2

    .line 92
    new-array p0, p1, [Lcom/meizu/settings/search/InlineSwitchPayload;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/InlineSwitchPayload$1;->newArray(I)[Lcom/meizu/settings/search/InlineSwitchPayload;

    move-result-object p0

    return-object p0
.end method
