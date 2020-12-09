.class Lcom/android/server/accounts/AccountManagerService$NotificationId;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationId"
.end annotation


# instance fields
.field private final mId:I

.field final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 6308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6309
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 6310
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    .line 6311
    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I
    .registers 1

    .line 6304
    iget p0, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    return p0
.end method
