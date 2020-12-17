.class public Lcom/meizu/settings/search/ResultPayload;
.super Ljava/lang/Object;
.source "ResultPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/search/ResultPayload$SettingsSource;,
        Lcom/meizu/settings/search/ResultPayload$Availability;,
        Lcom/meizu/settings/search/ResultPayload$PayloadType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/settings/search/ResultPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 150
    new-instance v0, Lcom/meizu/settings/search/ResultPayload$1;

    invoke-direct {v0}, Lcom/meizu/settings/search/ResultPayload$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/search/ResultPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/meizu/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-class v0, Lcom/meizu/settings/search/ResultPayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/meizu/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/settings/search/ResultPayload$1;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/ResultPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/meizu/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 147
    iget-object p0, p0, Lcom/meizu/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
