.class public abstract Lcom/meizu/common/pps/event/Args;
.super Ljava/lang/Object;
.source "Args.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/common/pps/event/Args;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/meizu/common/pps/event/Args$1;

    invoke-direct {v0}, Lcom/meizu/common/pps/event/Args$1;-><init>()V

    sput-object v0, Lcom/meizu/common/pps/event/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/pps/event/Args;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/meizu/common/pps/event/Args;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract readFromParcel(Landroid/os/Parcel;)V
.end method

.method public abstract recycle()V
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;)V
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"  # Landroid/os/Parcel;
    .param p2, "flags"  # I

    .line 22
    iget-object v0, p0, Lcom/meizu/common/pps/event/Args;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/meizu/common/pps/event/Args;->writeToParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method
