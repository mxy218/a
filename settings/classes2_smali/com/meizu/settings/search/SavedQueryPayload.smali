.class public Lcom/meizu/settings/search/SavedQueryPayload;
.super Lcom/meizu/settings/search/ResultPayload;
.source "SavedQueryPayload.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/settings/search/SavedQueryPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/meizu/settings/search/SavedQueryPayload$1;

    invoke-direct {v0}, Lcom/meizu/settings/search/SavedQueryPayload$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/search/SavedQueryPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/meizu/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/search/SavedQueryPayload;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 52
    iget-object p0, p0, Lcom/meizu/settings/search/SavedQueryPayload;->query:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
