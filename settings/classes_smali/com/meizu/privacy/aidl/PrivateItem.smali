.class public Lcom/meizu/privacy/aidl/PrivateItem;
.super Ljava/lang/Object;
.source "PrivateItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/privacy/aidl/PrivateItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:J

.field public key:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/meizu/privacy/aidl/PrivateItem$1;

    invoke-direct {v0}, Lcom/meizu/privacy/aidl/PrivateItem$1;-><init>()V

    sput-object v0, Lcom/meizu/privacy/aidl/PrivateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .registers 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/meizu/privacy/aidl/PrivateItem;->id:J

    .line 15
    iput-object p3, p0, Lcom/meizu/privacy/aidl/PrivateItem;->key:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/meizu/privacy/aidl/PrivateItem;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 26
    iget-wide v0, p0, Lcom/meizu/privacy/aidl/PrivateItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    iget-object p2, p0, Lcom/meizu/privacy/aidl/PrivateItem;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget p0, p0, Lcom/meizu/privacy/aidl/PrivateItem;->type:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
