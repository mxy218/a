.class Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationId"
.end annotation


# instance fields
.field private final mId:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)V
    .registers 4

    .line 5460
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5461
    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 5462
    iput p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    .line 5463
    return-void
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .registers 5

    .line 5483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 5467
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 5468
    :cond_4
    instance-of v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 5469
    :cond_a
    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 5470
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()I
    .registers 2

    .line 5491
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 5487
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 5475
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
