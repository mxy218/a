.class final Lcom/android/server/trust/TrustManagerService$AgentInfo;
.super Ljava/lang/Object;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AgentInfo"
.end annotation


# instance fields
.field agent:Lcom/android/server/trust/TrustAgentWrapper;

.field component:Landroid/content/ComponentName;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

.field userId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService$1;)V
    .registers 2

    .line 355
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 365
    instance-of v0, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 366
    return v1

    .line 368
    :cond_6
    check-cast p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 369
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget p1, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v0, p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    add-int/2addr v0, v1

    return v0
.end method
