.class Lcom/android/server/companion/CompanionDeviceManagerService$Association;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Association"
.end annotation


# instance fields
.field public final companionAppPackage:Ljava/lang/String;

.field public final deviceAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 631
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->uid:I

    .line 633
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    .line 634
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    .line 635
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V
    .registers 6

    .line 626
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 639
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 640
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_2f

    .line 642
    :cond_12
    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    .line 644
    iget v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->uid:I

    iget v2, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->uid:I

    if-eq v1, v2, :cond_1b

    return v0

    .line 645
    :cond_1b
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v0

    .line 646
    :cond_26
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 640
    :cond_2f
    :goto_2f
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 652
    iget v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->uid:I

    .line 653
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 654
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    return v0
.end method
