.class public Lcom/meizu/privacy/aidl/UpdatePrivateResult;
.super Ljava/lang/Object;
.source "UpdatePrivateResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/privacy/aidl/UpdatePrivateResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public key:Ljava/lang/String;

.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/meizu/privacy/aidl/UpdatePrivateResult$1;

    invoke-direct {v0}, Lcom/meizu/privacy/aidl/UpdatePrivateResult$1;-><init>()V

    sput-object v0, Lcom/meizu/privacy/aidl/UpdatePrivateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/meizu/privacy/aidl/UpdatePrivateResult;->key:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcom/meizu/privacy/aidl/UpdatePrivateResult;->success:Z

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

    .line 24
    iget-object p2, p0, Lcom/meizu/privacy/aidl/UpdatePrivateResult;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-boolean p0, p0, Lcom/meizu/privacy/aidl/UpdatePrivateResult;->success:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
