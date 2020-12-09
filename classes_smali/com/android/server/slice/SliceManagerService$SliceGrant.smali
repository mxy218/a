.class Lcom/android/server/slice/SliceManagerService$SliceGrant;
.super Ljava/lang/Object;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliceGrant"
.end annotation


# instance fields
.field private final mPkg:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 5

    .line 628
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p2, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUri:Landroid/net/Uri;

    .line 630
    iput-object p3, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mPkg:Ljava/lang/String;

    .line 631
    iput p4, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUserId:I

    .line 632
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 641
    instance-of v0, p1, Lcom/android/server/slice/SliceManagerService$SliceGrant;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 642
    :cond_6
    check-cast p1, Lcom/android/server/slice/SliceManagerService$SliceGrant;

    .line 643
    iget-object v0, p1, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mPkg:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget p1, p1, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUserId:I

    iget v0, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUserId:I

    if-ne p1, v0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mPkg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
