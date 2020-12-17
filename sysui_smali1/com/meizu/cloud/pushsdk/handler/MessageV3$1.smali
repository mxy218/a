.class Lcom/meizu/cloud/pushsdk/handler/MessageV3$1;
.super Ljava/lang/Object;
.source "MessageV3.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/handler/MessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/cloud/pushsdk/handler/MessageV3;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .registers 2

    .line 98
    new-instance p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .registers 2

    .line 102
    new-array p0, p1, [Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3$1;->newArray(I)[Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object p0

    return-object p0
.end method
